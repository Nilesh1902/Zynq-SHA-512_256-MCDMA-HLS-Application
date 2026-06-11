#ifndef _TEST_HPP_
#define _TEST_HPP_

// ============================================================================
//  test.hpp  —  SHA-512/256 AXI-Stream wrapper for MCDMA dual-IP
//  Target board : Avnet Ultra96-V2  (xczu3eg-sbva484-1-i)
//  Tool         : Vitis HLS 2024.2
//
//  Library call used (xf::security::sha512_t from sha512_t.hpp):
//
//    template <unsigned int w, unsigned int t>
//    void sha512_t(
//        hls::stream<ap_uint<w>>   & msg_strm,        // message words
//        hls::stream<ap_uint<128>> & len_strm,         // length in BYTES (128-bit)
//        hls::stream<bool>         & end_len_strm,     // batch-end flag
//        hls::stream<ap_uint<t>>   & digest_strm,      // digest output
//        hls::stream<bool>         & end_digest_strm); // digest-end flag
//
//  Correct stream write order for ONE message (preProcessing reads
//  end_len_strm FIRST, then len_strm):
//
//       end_len_strm.write(false);       // step 1: batch open
//       len_strm.write(msg_len);         // step 2: length
//       msg_strm  <- N 64-bit words      // step 3: data
//       end_len_strm.write(true);        // step 4: batch close
//
//  Digest output for ONE message:
//       end_digest_strm -> false  (digest is valid)
//       digest_strm     -> 256-bit hash
//       end_digest_strm -> true   (batch done)
// ============================================================================

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>

// ── Top-level function declaration ───────────────────────────────────────────
//  Function name matches:  syn.top = test  in hls_config.cfg
//  AXI-Stream TDEST width = 3  (ap_axiu<W, 0, 0, 3>)
//    → supports dest_id 0, 1, and 2 (three MCDMA S2MM channels)
// ─────────────────────────────────────────────────────────────────────────────
void test(
    hls::stream<ap_axiu<64,  0, 0, 3>>& msg_strm,    // MM2S → IP  (64-bit data)
    hls::stream<ap_axiu<256, 0, 0, 3>>& digest_strm,  // IP  → S2MM (256-bit digest)
    ap_uint<128>                         msg_len,       // message length in bytes
    ap_uint<2>                           dest_id        // MCDMA S2MM channel (0, 1, or 2)
);

#endif  // _TEST_HPP_
