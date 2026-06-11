// ============================================================================
//  sha_config.h  —  Hardware address map and buffer layout
//  Target board : Avnet Ultra96-V2  (xczu3eg-sbva484-1-i)
//  Tool         : Vitis 2024.2
//
//  This file contains ONLY #define constants.
//  No functions, no variables, no includes beyond the guard.
//
//  HOW TO USE:
//    - Update addresses from your Vivado Address Editor after each bitstream
//    - All DDR regions must be inside your assigned DDR range (typically
//      0x00000000 – 0x7FFFFFFF on Ultra96-V2 with 2GB RAM)
//    - BD regions must be 2MB aligned for Xil_SetTlbAttributes() to work
//    - Data buffer regions must not overlap BD regions
//
//  MEMORY MAP SUMMARY:
//    0x10000000 – 0x10FFFFFF   BD rings   (8 × 2MB, non-cacheable)
//    0x11000000 – 0x11FFFFFF   Data bufs  (8 × 2MB, cacheable)
// ============================================================================

#ifndef SHA_CONFIG_H
#define SHA_CONFIG_H

// ============================================================
//  SECTION 1 — AXI-Lite Peripheral Base Addresses
//  Source: Vivado Address Editor → ps8_0_axi_periph
//
//  MCDMA_BASEADDR : AXI MCDMA control registers
//  SHA0–3        : HLS SHA-512/256 IP AXI-Lite control registers
//                  Each IP occupies 64KB (0x10000 range)
//  !! Update these if you regenerate the bitstream or change
//     address assignment in Vivado !!
// ============================================================
#define MCDMA_BASEADDR   0xA0000000U   /* AXI MCDMA        — 64KB */
#define SHA0_BASEADDR    0xA0010000U   /* test_0 AXI-Lite  — 64KB */
#define SHA1_BASEADDR    0xA0020000U   /* test_1 AXI-Lite  — 64KB */
#define SHA2_BASEADDR    0xA0030000U   /* test_2 AXI-Lite  — 64KB */
#define SHA3_BASEADDR    0xA0040000U   /* test_3 AXI-Lite  — 64KB */

// ============================================================
//  SECTION 2 — MCDMA BD Ring Addresses  (non-cacheable)
//  Alignment rule: Xil_SetTlbAttributes() maps 2MB pages.
//  Each BD base MUST be on a 0x200000 (2MB) boundary.
//
//  Layout (each slot = 2MB):
//    chan 1 TX BD  0x10000000
//    chan 1 RX BD  0x10200000
//    chan 2 TX BD  0x10400000
//    chan 2 RX BD  0x10600000
//    chan 3 TX BD  0x10800000
//    chan 3 RX BD  0x10A00000
//    chan 4 TX BD  0x10C00000
//    chan 4 RX BD  0x10E00000
//
//  These regions are marked NORM_NONCACHE in main() via
//  Xil_SetTlbAttributes() so the CPU never caches BD entries.
//  MCDMA hardware reads/writes BDs directly over M_AXI_SG.
// ============================================================
#define TX_BD_SPACE_BASE  0x10000000U   /* chan 1 TX BD  — 2MB aligned */
#define RX_BD_SPACE_BASE  0x10200000U   /* chan 1 RX BD  — 2MB aligned */
#define TX_BD_SPACE_BASE2 0x10400000U   /* chan 2 TX BD  — 2MB aligned */
#define RX_BD_SPACE_BASE2 0x10600000U   /* chan 2 RX BD  — 2MB aligned */
#define TX_BD_SPACE_BASE3 0x10800000U   /* chan 3 TX BD  — 2MB aligned */
#define RX_BD_SPACE_BASE3 0x10A00000U   /* chan 3 RX BD  — 2MB aligned */
#define TX_BD_SPACE_BASE4 0x10C00000U   /* chan 4 TX BD  — 2MB aligned */
#define RX_BD_SPACE_BASE4 0x10E00000U   /* chan 4 RX BD  — 2MB aligned */

// ============================================================
//  SECTION 3 — DMA Data Buffer Addresses  (cacheable)
//  These hold the actual message bytes (TX) and digest
//  output bytes (RX) for each channel.
//
//  TX buffer : written by CPU via memcpy(), flushed with
//              Xil_DCacheFlushRange() before MCDMA starts.
//  RX buffer : invalidated with Xil_DCacheInvalidateRange()
//              after MCDMA completes so CPU sees fresh data.
//
//  Layout (each slot = 2MB):
//    chan 1 TX data  0x11000000
//    chan 1 RX digest 0x11200000
//    chan 2 TX data  0x11400000
//    chan 2 RX digest 0x11600000
//    chan 3 TX data  0x11800000
//    chan 3 RX digest 0x11A00000
//    chan 4 TX data  0x11C00000
//    chan 4 RX digest 0x11E00000
//
//  Note: buffers start at 0x11000000 (not 0x10C00000) to
//  leave a clean gap above the BD region and avoid overlap.
// ============================================================
#define TX_BUFFER_BASE    0x11000000U   /* chan 1 TX data   — 2MB aligned */
#define RX_BUFFER_BASE    0x11200000U   /* chan 1 RX digest — 2MB aligned */
#define TX_BUFFER_BASE2   0x11400000U   /* chan 2 TX data   — 2MB aligned */
#define RX_BUFFER_BASE2   0x11600000U   /* chan 2 RX digest — 2MB aligned */
#define TX_BUFFER_BASE3   0x11800000U   /* chan 3 TX data   — 2MB aligned */
#define RX_BUFFER_BASE3   0x11A00000U   /* chan 3 RX digest — 2MB aligned */
#define TX_BUFFER_BASE4   0x11C00000U   /* chan 4 TX data   — 2MB aligned */
#define RX_BUFFER_BASE4   0x11E00000U   /* chan 4 RX digest — 2MB aligned */

// ============================================================
//  SECTION 4 — DMA Transfer Constants
//
//  BD_COUNT      : BDs per channel ring. 1 = single transfer
//                  per channel call. Increase only if you want
//                  to queue multiple messages per channel.
//  DIGEST_BYTES  : SHA-512/256 output = 256 bits = 32 bytes.
//                  Fixed by the algorithm — do not change.
//  TIMEOUT_COUNT : polling loop iteration limit in
//                  wait_for_dma_done(). At ~300MHz APU this
//                  is roughly 33ms. Increase if you use longer
//                  messages or a slower clock.
// ============================================================
#define BD_COUNT         1U             /* BDs per channel ring        */
#define DIGEST_BYTES     32U            /* SHA-512/256 = 256 bits      */
#define TIMEOUT_COUNT    10000000U      /* polling timeout iterations  */

// ============================================================
//  SECTION 5 — HLS IP Register Offsets
//
//  These offsets are generated by Vitis HLS into xtest_hw.h.
//  The macros below alias them to shorter names used by
//  sha_api.c functions.
//
//  XTEST_CONTROL_ADDR_AP_CTRL  : ap_ctrl_hs control register
//    bit 0 = ap_start  (write 1 to start the IP)
//    bit 1 = ap_done   (reads 1 when IP finishes)
//    bit 2 = ap_idle   (reads 1 when IP is idle)
//    bit 3 = ap_ready  (reads 1 when IP accepts new start)
//
//  SHA_MSG_LEN_REG : base of the 128-bit msg_len AXI-Lite
//    register. Written as 4 × 32-bit words at +0x00, +0x04,
//    +0x08, +0x0C. Only lower 32 bits used for small messages.
//
//  SHA_DEST_ID_REG : 2-bit dest_id register. Sets TDEST on
//    the output digest stream. Routes digest to correct MCDMA
//    S2MM sub-channel (0 → chan1, 1 → chan2 ... 3 → chan4).
// ============================================================
#ifndef XTEST_CONTROL_ADDR_AP_CTRL
#define XTEST_CONTROL_ADDR_AP_CTRL  0x00U   /* ap_ctrl_hs register */
#endif

#define SHA_MSG_LEN_REG  XTEST_CONTROL_ADDR_MSG_LEN_DATA   /* 128-bit msg length */
#define SHA_DEST_ID_REG  XTEST_CONTROL_ADDR_DEST_ID_DATA   /* 2-bit TDEST select */

#endif /* SHA_CONFIG_H */