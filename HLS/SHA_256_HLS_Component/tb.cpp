// ============================================================================
//  tb.cpp  —  Testbench for SHA-512/256 dual-IP HLS kernel
//  Tool : Vitis HLS 2024.2
//
//  Matches exactly:
//    • test() function signature in test.hpp  (syn.top = test)
//    • ap_uint<128> msg_len  (matches sha512_t.hpp len_strm type)
//    • ap_axiu<64,0,0,2>  msg_strm
//    • ap_axiu<256,0,0,2> digest_strm
//    • dest_id ap_uint<2>  (0, 1, or 2 for triple-IP MCDMA)
//
//  No external macro dependencies — all widths are literal constants
//  matching the declarations in test.hpp.
// ============================================================================

#include "test.hpp"         // declares:  void test(msg_strm, digest_strm, msg_len, dest_id)

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>

#include <cstdio>
#include <cstring>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

// ── Constants ─────────────────────────────────────────────────────────────────
#define NUM_TESTS   300     // total test cases to run
#define MSG_BYTES   8       // bytes per AXI-Stream message word  (64 / 8)
#define DIG_BYTES   32      // bytes per SHA-512/256 digest       (256 / 8)

// ── Helper: byte array → lowercase hex string ─────────────────────────────────
static string bytes_to_hex(const unsigned char* b, int len)
{
    ostringstream oss;
    oss << hex;
    for (int i = 0; i < len; i++)
        oss << setw(2) << setfill('0') << (unsigned)b[i];
    return oss.str();
}

// ── Helper: push a message string into msg_strm as 64-bit AXI-Stream packets ──
//
//  Each packet carries 8 bytes (MSG_BYTES).
//  Partial last word: remaining bytes in low bits; upper bits stay zero.
//  Zero-length message: no packets are written — axis_to_core handles this
//  by skipping its inner loop (words = 0).
// ─────────────────────────────────────────────────────────────────────────────
static void fill_msg_stream(
    hls::stream<ap_axiu<64, 0, 0, 3>>& strm,
    const string&                        msg,
    ap_uint<2>                           dest_id)
{
    const size_t len = msg.length();
    ap_uint<64>  data = 0;

    for (size_t i = 0; i < len; i++) {
        size_t byte_pos = i % MSG_BYTES;

        if (byte_pos == 0) data = 0;

        // Pack bytes little-endian into the 64-bit word
        // (axis_to_core passes data unchanged to sha512_t which byte-swaps internally)
        data.range(7 + 8 * byte_pos, 8 * byte_pos) = (unsigned char)msg[i];

        bool last_byte_of_word = (byte_pos == (size_t)(MSG_BYTES - 1));
        bool last_byte_of_msg  = (i == len - 1);

        if (last_byte_of_word || last_byte_of_msg) {
            ap_axiu<64, 0, 0, 3> pkt;
            pkt.data = data;
            pkt.keep = -1;
            pkt.strb = -1;
            pkt.last = last_byte_of_msg ? 1 : 0;
            pkt.dest = dest_id;    // informational; axis_to_core ignores it
            strm.write(pkt);
        }
    }
}

// ── Helper: drain one 256-bit digest packet from digest_strm ──────────────────
//
//  core_to_axis packs the 256-bit digest little-endian in out_pkt.data and
//  stamps out_pkt.dest with dest_id.  We unpack byte-by-byte here.
// ─────────────────────────────────────────────────────────────────────────────
static void drain_digest(
    hls::stream<ap_axiu<256, 0, 0, 3>>& strm,
    unsigned char*                        hash_out,
    ap_uint<2>&                           dest_out)
{
    ap_axiu<256, 0, 0, 3> pkt = strm.read();
    dest_out = pkt.dest;

    ap_uint<256> raw = pkt.data;
    for (unsigned i = 0; i < (unsigned)DIG_BYTES; i++)
        hash_out[i] = (unsigned char)(raw.range(7 + 8*i, 8*i).to_int() & 0xFF);
}

// ── Test record ───────────────────────────────────────────────────────────────
struct TestCase {
    string        msg;
    unsigned char golden[DIG_BYTES];

    TestCase(const char* m, const void* h) : msg(m)
    { memcpy(golden, h, DIG_BYTES); }
};

// ── Main ──────────────────────────────────────────────────────────────────────
int main()
{
    cout << "================================================" << endl;
    cout << "  SHA-512/256 Dual-IP HLS Testbench"             << endl;
    cout << "  Vitis HLS 2024.2 | xczu3eg-sbva484-1-i"       << endl;
    cout << "  syn.top = test | 300 test cases"               << endl;
    cout << "================================================" << endl;

    // ── Repeating alphabet corpus (same as original testbench) ──────────────
    // Lengths 0–255 cycled over NUM_TESTS iterations
    const unsigned char alphabet[] =
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz"
        "abcdefghijklmnopqrstuvwxyz";

    // ── Load golden hashes from testcases.dat ───────────────────────────────
    // Format: NUM_TESTS sequential 32-byte raw SHA-512/256 digests.
    FILE* fp = fopen("testcases.dat", "rb");
    if (!fp) {
        cout << "ERROR: cannot open testcases.dat" << endl;
        return 1;
    }

    vector<TestCase> tests;
    tests.reserve(NUM_TESTS);

    for (int i = 0; i < NUM_TESTS; i++) {
        unsigned int len = (unsigned int)(i % 256);

        char m[257];
        if (len > 0) memcpy(m, alphabet, len);
        m[len] = '\0';

        unsigned char h[DIG_BYTES];
        if (fread(h, 1, DIG_BYTES, fp) != (size_t)DIG_BYTES) {
            cout << "ERROR: short read in testcases.dat at test " << i << endl;
            fclose(fp);
            return 1;
        }

        tests.emplace_back(m, h);
    }
    fclose(fp);

    // ── Run all tests ────────────────────────────────────────────────────────
    //
    //  Even-indexed tests  → dest_id = 0  (simulates sha_top_0)
    //  Odd-indexed  tests  → dest_id = 1  (simulates sha_top_1)
    //
    //  Verifies:
    //    1. Hash correctness  against golden (from testcases.dat)
    //    2. TDEST correctness  — out_pkt.dest must equal the dest_id we set
    // ────────────────────────────────────────────────────────────────────────
    unsigned int n_pass      = 0;
    unsigned int n_hash_fail = 0;
    unsigned int n_dest_fail = 0;

    for (int i = 0; i < (int)tests.size(); i++) {
        const TestCase& tc = tests[i];

        // Alternate dest_id to exercise both IP instances
        ap_uint<2> dest_id = (ap_uint<2>)(i % 3);

        // ── Build msg_strm ──────────────────────────────────────────────────
        hls::stream<ap_axiu<64,  0, 0, 3>> msg_strm   ("msg_strm");
        hls::stream<ap_axiu<256, 0, 0, 3>> digest_strm("digest_strm");

        fill_msg_stream(msg_strm, tc.msg, dest_id);

        // ── Call HLS kernel ─────────────────────────────────────────────────
        //  msg_len is ap_uint<128> to match sha512_t.hpp len_strm type
        test(msg_strm,
             digest_strm,
             (ap_uint<128>)(tc.msg.length()),
             dest_id);

        // ── Drain digest ────────────────────────────────────────────────────
        unsigned char computed[DIG_BYTES];
        ap_uint<2>    returned_dest;
        drain_digest(digest_strm, computed, returned_dest);

        // ── Check hash ──────────────────────────────────────────────────────
        bool hash_ok = (memcmp(tc.golden, computed, DIG_BYTES) == 0);

        // ── Check TDEST ─────────────────────────────────────────────────────
        bool dest_ok = (returned_dest == dest_id);

        if (!hash_ok) {
            n_hash_fail++;
            cout << "[FAIL hash] test=" << dec << i
                 << "  dest_id=" << (int)dest_id
                 << "  len="     << tc.msg.length() << endl;
            cout << "  computed : " << bytes_to_hex(computed,  DIG_BYTES) << endl;
            cout << "  golden   : " << bytes_to_hex(tc.golden, DIG_BYTES) << endl;
        }

        if (!dest_ok) {
            n_dest_fail++;
            cout << "[FAIL dest] test=" << dec << i
                 << "  expected=" << (int)dest_id
                 << "  got="      << (int)(unsigned)returned_dest << endl;
        }

        if (hash_ok && dest_ok)
            n_pass++;
    }

    // ── Summary ──────────────────────────────────────────────────────────────
    cout << "------------------------------------------------" << endl;
    cout << "  Total tests : " << dec << (int)tests.size() << endl;
    cout << "  Passed      : " << dec << n_pass            << endl;
    cout << "  Hash errors : " << dec << n_hash_fail       << endl;
    cout << "  DEST errors : " << dec << n_dest_fail       << endl;
    cout << "------------------------------------------------" << endl;

    int total_errors = (int)(n_hash_fail + n_dest_fail);

    if (total_errors == 0)
        cout << "PASS: all " << dec << n_pass
             << " tests correct, TDEST routing verified." << endl;
    else
        cout << "FAIL: " << total_errors << " error(s) detected." << endl;

    return total_errors;
}
