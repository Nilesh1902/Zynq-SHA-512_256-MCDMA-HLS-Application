// ============================================================================
//  test.cpp  —  SHA-512/256 HLS kernel (MCDMA dual-IP, Ultra96-V2)
//  Tool : Vitis HLS 2024.2
//
//  Library: xf::security::sha512_t<64, 256>  from sha512_t.hpp
//
//  IMPORTANT — preProcessing stream protocol (from sha512_t.hpp source):
//
//    bool endFlag = end_len_strm.read();   // <-- reads end flag FIRST
//    while (!endFlag) {
//        ap_uint<128> len = len_strm.read();  // then reads length
//        ...
//        endFlag = end_len_strm.read();    // reads again at bottom of loop
//    }
//
//  So axis_to_core MUST write in this order:
//    1. end_len_strm  <- false      (tell kernel: batch is open)
//    2. len_strm      <- msg_len    (ap_uint<128>, bytes)
//    3. msg_strm      <- N words    (64-bit, ceil(msg_len / 8) words)
//    4. end_len_strm  <- true       (tell kernel: batch is closed)
//
//  SHA512Digest output protocol (from sha512_t.hpp source):
//    digest_strm      <- 256-bit hash
//    end_digest_strm  <- false   (valid digest emitted)
//    ...
//    end_digest_strm  <- true    (batch done, after loop exits)
//
//  So core_to_axis MUST read in this order:
//    1. end_digest_strm.read()  → expect false (valid)
//    2. digest_strm.read()      → 256-bit hash
//    3. end_digest_strm.read()  → expect true  (done)
// ============================================================================

#include "test.hpp"
#include "xf_security/sha512_t.hpp"
#include <ap_axi_sdata.h>
#include <hls_stream.h>

// ─── Stage 1 : AXI-Stream → sha512_t input streams ───────────────────────────
//
//  Follows preProcessing protocol exactly:
//    write end_len=false FIRST, then write len, then words, then end_len=true.
//
//  Zero-length message (msg_len == 0):
//    words = 0, inner loop body skipped, but the control writes still happen.
//    preProcessing handles the empty-message padding block internally. ✓
// ─────────────────────────────────────────────────────────────────────────────
static void axis_to_core(
    hls::stream<ap_axiu<64, 0, 0, 3>>& msg_strm,
    ap_uint<128>                         msg_len,
    hls::stream<ap_uint<64>>&           core_msg_strm,
    hls::stream<ap_uint<128>>&          core_len_strm,
    hls::stream<bool>&                  core_end_len_strm)
{
    // Step 1: signal batch open (preProcessing reads this BEFORE reading len)
    core_end_len_strm.write(false);

    // Step 2: send message length in bytes (ap_uint<128> matches lib exactly)
    core_len_strm.write(msg_len);

    // Step 3: pump message words — ceil(msg_len / 8) 64-bit words
    ap_uint<128> words = (msg_len + 7) / 8;

FEED_LOOP:
    for (ap_uint<128> i = 0; i < words; i++) {
#pragma HLS PIPELINE II=1
        ap_axiu<64, 0, 0, 3> pkt = msg_strm.read();
        core_msg_strm.write(pkt.data);
    }

    // Step 4: signal batch closed
    core_end_len_strm.write(true);
}

// ─── Stage 3 : sha512_t output streams → AXI-Stream ──────────────────────────
//
//  SHA512Digest writes: digest → end=false → (loop continues or ends) → end=true
//  For ONE message the exact sequence seen on the streams is:
//    end_digest_strm: false  (digest ready)
//    digest_strm:     256-bit hash
//    end_digest_strm: true   (batch done)
//
//  We read end first:
//    if false → read digest, pack it, send it
//    if true  → stop
// ─────────────────────────────────────────────────────────────────────────────
static void core_to_axis(
    hls::stream<ap_uint<256>>&           core_digest_strm,
    hls::stream<bool>&                   core_end_digest_strm,
    hls::stream<ap_axiu<256, 0, 0, 3>>& digest_strm,
    ap_uint<2>                           dest_id)
{
DRAIN_LOOP:
    while (true) {
#pragma HLS PIPELINE II=1
        bool end_flag = core_end_digest_strm.read();

        if (end_flag) {
            break;          // batch done, no more digests
        }

        // Valid digest available — read it and forward to MCDMA S2MM
        ap_uint<256> digest_data = core_digest_strm.read();

        ap_axiu<256, 0, 0, 3> out_pkt;
        out_pkt.data = digest_data;
        out_pkt.keep = -1;      // all 32 bytes valid
        out_pkt.strb = -1;
        out_pkt.last = 1;       // single-packet transfer (one digest per message)
        out_pkt.dest = dest_id; // ← MCDMA S2MM uses TDEST to select sub-channel

        digest_strm.write(out_pkt);
    }
}

// ─── Top-level function ───────────────────────────────────────────────────────
//
//  AXI-Stream interfaces
//    msg_strm    : in  from MCDMA MM2S  (64-bit)  depth=256 for cosim
//    digest_strm : out to   MCDMA S2MM (256-bit) depth=4   for cosim
//
//  AXI4-Lite (bundle=control)
//    msg_len  : message length in bytes  (written by driver before DMA start)
//    dest_id  : TDEST tag  (0 → sha_top_0, 1 → sha_top_1)
//    return   : ap_ctrl_hs (start/done/idle/ready)
//
//  DATAFLOW
//    axis_to_core ──▶ xf::security::sha512_t<64,256> ──▶ core_to_axis
//    All three stages execute concurrently; intermediate HLS FIFOs decouple them.
// ─────────────────────────────────────────────────────────────────────────────
void test(
    hls::stream<ap_axiu<64,  0, 0, 3>>& msg_strm,
    hls::stream<ap_axiu<256, 0, 0, 3>>& digest_strm,
    ap_uint<128>                         msg_len,
    ap_uint<2>                           dest_id)
{
    // ── Interface pragmas ────────────────────────────────────────────────────
#pragma HLS INTERFACE axis         port=msg_strm    depth=256
#pragma HLS INTERFACE axis         port=digest_strm depth=4

#pragma HLS INTERFACE s_axilite    port=msg_len     bundle=control
#pragma HLS INTERFACE s_axilite    port=dest_id     bundle=control
#pragma HLS INTERFACE s_axilite    port=return       bundle=control

    // ── Concurrent stage execution ───────────────────────────────────────────
#pragma HLS DATAFLOW

    // ── Internal streams (synthesised as FIFOs) ──────────────────────────────
    //  core_msg_strm    : 64-bit message words forwarded to sha512_t
    //  core_len_strm    : 128-bit length value (one per batch)
    //  core_end_len_strm: bool batch-end flag for sha512_t input side
    //  core_digest_strm : 256-bit digest from sha512_t
    //  core_end_digest_strm: bool batch-end flag from sha512_t output side
    hls::stream<ap_uint<64>>  core_msg_strm        ("core_msg_strm");
    hls::stream<ap_uint<128>> core_len_strm        ("core_len_strm");
    hls::stream<bool>         core_end_len_strm    ("core_end_len_strm");
    hls::stream<ap_uint<256>> core_digest_strm     ("core_digest_strm");
    hls::stream<bool>         core_end_digest_strm ("core_end_digest_strm");

    // Depth 64 for msg absorbs MM2S burst latency.
    // Depth 4 for control streams: 2 writes per single-message batch (false + true).
#pragma HLS STREAM variable=core_msg_strm         depth=64
#pragma HLS STREAM variable=core_len_strm         depth=4
#pragma HLS STREAM variable=core_end_len_strm     depth=4
#pragma HLS STREAM variable=core_digest_strm      depth=4
#pragma HLS STREAM variable=core_end_digest_strm  depth=4

    // ── Stage pipeline ────────────────────────────────────────────────────────

    // Stage 1: AXI-Stream → sha512_t inputs
    axis_to_core(
        msg_strm,
        msg_len,
        core_msg_strm,
        core_len_strm,
        core_end_len_strm);

    // Stage 2: SHA-512/256 cryptographic core (Vitis Security Library)
    //   w = 64  : 64-bit input word width
    //   t = 256 : truncate 512-bit hash to 256 bits  → SHA-512/256
    xf::security::sha512_t<64, 256>(
        core_msg_strm,
        core_len_strm,
        core_end_len_strm,
        core_digest_strm,
        core_end_digest_strm);

    // Stage 3: sha512_t outputs → AXI-Stream with TDEST routing
    core_to_axis(
        core_digest_strm,
        core_end_digest_strm,
        digest_strm,
        dest_id);
}
