// ============================================================================
//  sha_api.c  —  SHA-512/256 MCDMA driver implementation
//  Target board : Avnet Ultra96-V2  (xczu3eg-sbva484-1-i)
//  Tool         : Vitis 2024.2
//
//  Implements all functions declared in sha_api.h.
//  User code never needs to modify this file.
//
//  All logic is identical to the original monolithic main.c —
//  only the file structure has changed. No algorithms, register
//  write sequences, or ordering rules have been altered.
//
//  INTERNAL DATA:
//    AxiMcdma  — single global MCDMA driver instance shared
//                across all channel calls. Initialized once
//                by mcdma_init() and used by all subsequent
//                setup_one_channel() calls.
//    Message   — test vector "abc". SHA-512/256("abc") =
//                53048e2681941ef99b2e29b76b4c7dabe4c2d0c634fc6d46e0e2f13107e7af23
//    MSG_LEN   — sizeof(Message)-1, computed at compile time.
//                Depends on Message[] so kept here, not in
//                sha_config.h.
// ============================================================================

#include "sha_api.h"

// ============================================================
//  SECTION 1 — Internal data
//  Kept in this translation unit only.
//  sha_api.h does NOT expose these — user code cannot access
//  AxiMcdma or Message directly, enforcing clean separation.
// ============================================================

/* Single MCDMA driver instance — shared across all channels */
static XMcdma AxiMcdma;

/* Test message — change here to test a different input */
static const u8 Message[] = "abc";

/*
 * MSG_LEN — byte count of Message excluding null terminator.
 * Must live here (not sha_config.h) because it depends on
 * the Message[] array which is defined in this file.
 */
#define MSG_LEN ((u32)(sizeof(Message) - 1U))

// ============================================================
//  SECTION 2 — Utility functions
// ============================================================

/* ── print_digest ────────────────────────────────────────────
 * Print a 32-byte SHA-512/256 digest as lowercase hex to UART.
 * Called after wait_for_dma_done() confirms RX is complete.
 * ─────────────────────────────────────────────────────────── */
void print_digest(const u8 *digest)
{
    xil_printf("Digest = ");
    for (int i = 0; i < DIGEST_BYTES; i++) {
        xil_printf("%02x", digest[i]);
    }
    xil_printf("\r\n");
}

/* ── get_tx_len ──────────────────────────────────────────────
 * Round msg_len up to the nearest 8-byte AXI word boundary.
 *
 * Why: MCDMA MM2S transfers in 64-bit (8-byte) words. If the
 * TX buffer length is not a multiple of 8, the last partial
 * word is never flushed and TLAST is never asserted. The SHA
 * IP will stall in FEED_LOOP waiting for data that never
 * arrives, causing a DMA timeout (TxDone=1, RxDone=0).
 * ─────────────────────────────────────────────────────────── */
u32 get_tx_len(u32 msg_len)
{
    return ((msg_len + 7U) / 8U) * 8U;
}

/* ── get_sha_base ────────────────────────────────────────────
 * Return the AXI-Lite base address for the selected SHA IP.
 * ip_select is validated to 0–3 before this is called so the
 * else branch safely handles ip_select == 3.
 * ─────────────────────────────────────────────────────────── */
UINTPTR get_sha_base(u32 ip_select)
{
    if (ip_select == 0U) {
        return SHA0_BASEADDR;
    } else if (ip_select == 1U) {
        return SHA1_BASEADDR;
    } else if (ip_select == 2U) {
        return SHA2_BASEADDR;
    } else {
        return SHA3_BASEADDR;
    }
}

// ============================================================
//  SECTION 3 — SHA IP register programming
// ============================================================

/* ── sha_start ───────────────────────────────────────────────
 * Program the HLS SHA IP registers then assert ap_start.
 *
 * Register write order (MUST NOT be changed):
 *   1. msg_len  — 4 × 32-bit writes covering the 128-bit
 *                 ap_uint<128> msg_len AXI-Lite register.
 *                 Offsets +0x00, +0x04, +0x08, +0x0C.
 *                 Upper 96 bits are always zero for messages
 *                 that fit in a u32 (< 4GB).
 *   2. dest_id  — 32-bit write. Only lower 2 bits used.
 *                 Sets TDEST on the output digest_strm so
 *                 axis_switch_1 routes the digest to the
 *                 correct MCDMA S2MM sub-channel.
 *   3. ap_start — bit 0 of ap_ctrl register. Latches the
 *                 register values written above and starts
 *                 the HLS kernel pipeline.
 *
 * CALL TIMING: sha_start() must be called AFTER RX is armed
 * (XMcDma_ChanToHw on RxChan) and BEFORE TX is submitted.
 * Starting the IP before RX is armed can cause the digest
 * to arrive at MCDMA S2MM before the BD is ready, resulting
 * in a lost transfer and RxDone never becoming 1.
 * ─────────────────────────────────────────────────────────── */
void sha_start(UINTPTR sha_base, u32 msg_len, u32 dest_id)
{
    u32 ctrl;

    xil_printf("Programming SHA IP at 0x%08lx\r\n", (u32)sha_base);

    /*
     * Write 128-bit msg_len register.
     * ap_uint<128> maps to 4 consecutive 32-bit AXI-Lite words.
     * For msg_len values that fit in 32 bits, only the lowest
     * word carries the value; upper three words are zero.
     */
    Xil_Out32(sha_base + SHA_MSG_LEN_REG + 0x00U, msg_len);
    Xil_Out32(sha_base + SHA_MSG_LEN_REG + 0x04U, 0x00000000U);
    Xil_Out32(sha_base + SHA_MSG_LEN_REG + 0x08U, 0x00000000U);
    Xil_Out32(sha_base + SHA_MSG_LEN_REG + 0x0CU, 0x00000000U);

    /*
     * Write dest_id register.
     * dest_id 0 → MCDMA S2MM channel 1 → sha_top_0 digest
     * dest_id 1 → MCDMA S2MM channel 2 → sha_top_1 digest
     * dest_id 2 → MCDMA S2MM channel 3 → sha_top_2 digest
     * dest_id 3 → MCDMA S2MM channel 4 → sha_top_3 digest
     */
    Xil_Out32(sha_base + SHA_DEST_ID_REG, dest_id);

    xil_printf("SHA msg_len = %lu\r\n", msg_len);
    xil_printf("SHA dest_id = %lu\r\n", dest_id);

    /*
     * Read-modify-write ap_ctrl to set ap_start (bit 0).
     * Reading first preserves any existing status bits.
     * The HLS kernel latches msg_len and dest_id on the
     * rising edge of ap_start.
     */
    ctrl = Xil_In32(sha_base + XTEST_CONTROL_ADDR_AP_CTRL);
    xil_printf("SHA CTRL before start = 0x%08lx\r\n", ctrl);

    Xil_Out32(sha_base + XTEST_CONTROL_ADDR_AP_CTRL, ctrl | 0x01U);

    ctrl = Xil_In32(sha_base + XTEST_CONTROL_ADDR_AP_CTRL);
    xil_printf("SHA CTRL after start  = 0x%08lx\r\n", ctrl);
}

// ============================================================
//  SECTION 4 — MCDMA initialization
// ============================================================

/* ── mcdma_init ──────────────────────────────────────────────
 * Look up MCDMA hardware config and initialize driver.
 *
 * Config lookup order:
 *   SDT build system   → XMcdma_LookupConfig(base addr)
 *   Classic + device ID → XMcdma_LookupConfig(device ID)
 *   Classic + no ID    → XMcdma_LookupConfigBaseAddr(base)
 *
 * Prints TX/RX channel count, data widths, and max transfer
 * length. These should match your Vivado MCDMA IP settings:
 *   TX channels      = 4
 *   RX channels      = 4
 *   MM2S data width  = 64
 *   S2MM data width  = 256
 * If values differ, your xparameters.h is out of sync with
 * the current bitstream.
 * ─────────────────────────────────────────────────────────── */
int mcdma_init(void)
{
    int Status;
    XMcdma_Config *Config;

#ifdef SDT
    Config = XMcdma_LookupConfig(MCDMA_BASEADDR);
#else
#ifdef XPAR_XMCDMA_0_DEVICE_ID
    Config = XMcdma_LookupConfig(XPAR_XMCDMA_0_DEVICE_ID);
#else
    Config = XMcdma_LookupConfigBaseAddr(MCDMA_BASEADDR);
#endif
#endif

    if (Config == NULL) {
        xil_printf("ERROR: MCDMA config not found\r\n");
        return XST_FAILURE;
    }

    Status = XMcDma_CfgInitialize(&AxiMcdma, Config);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: MCDMA init failed = %d\r\n", Status);
        return XST_FAILURE;
    }

    xil_printf("MCDMA initialized\r\n");
    xil_printf("MCDMA Base       = 0x%08lx\r\n", (u32)Config->BaseAddress);
    xil_printf("TX channels      = %d\r\n",       Config->TxNumChannels);
    xil_printf("RX channels      = %d\r\n",       Config->RxNumChannels);
    xil_printf("MM2S width       = %d\r\n",       Config->MM2SDataWidth);
    xil_printf("S2MM width       = %d\r\n",       Config->S2MMDataWidth);
    xil_printf("Max transfer len = %lu\r\n",      Config->MaxTransferlen);

    return XST_SUCCESS;
}

// ============================================================
//  SECTION 5 — Channel setup
// ============================================================

/* ── setup_one_channel ───────────────────────────────────────
 * Get TX/RX channel handles and create BD rings.
 *
 * BD base address selection:
 *   chan_id 1 → TX_BD_SPACE_BASE  / RX_BD_SPACE_BASE
 *   chan_id 2 → TX_BD_SPACE_BASE2 / RX_BD_SPACE_BASE2
 *   chan_id 3 → TX_BD_SPACE_BASE3 / RX_BD_SPACE_BASE3
 *   chan_id 4 → TX_BD_SPACE_BASE4 / RX_BD_SPACE_BASE4
 *
 * All BD bases are 2MB aligned and marked non-cacheable by
 * Xil_SetTlbAttributes() in main() before this is called.
 * ─────────────────────────────────────────────────────────── */
int setup_one_channel(u32 chan_id,
                      XMcdma_ChanCtrl **TxChanOut,
                      XMcdma_ChanCtrl **RxChanOut)
{
    int Status;
    XMcdma_ChanCtrl *TxChan;
    XMcdma_ChanCtrl *RxChan;
    UINTPTR tx_bd_base, rx_bd_base;

    TxChan = XMcdma_GetMcdmaTxChan(&AxiMcdma, chan_id);
    RxChan = XMcdma_GetMcdmaRxChan(&AxiMcdma, chan_id);

    if (TxChan == NULL || RxChan == NULL) {
        xil_printf("ERROR: Failed to get MCDMA channel %lu\r\n", chan_id);
        return XST_FAILURE;
    }

    /* Polled mode — disable all interrupts on both channels */
    XMcdma_IntrDisable(TxChan, XMCDMA_IRQ_ALL_MASK);
    XMcdma_IntrDisable(RxChan, XMCDMA_IRQ_ALL_MASK);

    /* Select per-channel non-cacheable BD ring base addresses */
    if (chan_id == 1U) {
        tx_bd_base = TX_BD_SPACE_BASE;
        rx_bd_base = RX_BD_SPACE_BASE;
    } else if (chan_id == 2U) {
        tx_bd_base = TX_BD_SPACE_BASE2;
        rx_bd_base = RX_BD_SPACE_BASE2;
    } else if (chan_id == 3U) {
        tx_bd_base = TX_BD_SPACE_BASE3;
        rx_bd_base = RX_BD_SPACE_BASE3;
    } else {
        tx_bd_base = TX_BD_SPACE_BASE4;
        rx_bd_base = RX_BD_SPACE_BASE4;
    }

    Status = XMcDma_ChanBdCreate(TxChan, tx_bd_base, BD_COUNT);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: TX BD create failed = %d\r\n", Status);
        return XST_FAILURE;
    }

    Status = XMcDma_ChanBdCreate(RxChan, rx_bd_base, BD_COUNT);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: RX BD create failed = %d\r\n", Status);
        return XST_FAILURE;
    }

    *TxChanOut = TxChan;
    *RxChanOut = RxChan;

    xil_printf("BD rings created for channel %lu\r\n", chan_id);

    return XST_SUCCESS;
}

// ============================================================
//  SECTION 6 — DMA completion polling
// ============================================================

/* ── wait_for_dma_done ───────────────────────────────────────
 * Poll TX and RX BD chains until both return completed BDs.
 *
 * TX and RX are polled independently in the same loop so
 * neither blocks the other. This matters because the SHA IP
 * consumes TX data and produces RX data concurrently — if TX
 * polling blocked on a separate loop first, RX completion
 * could be missed (MCDMA S2MM overrun or lost transfer).
 *
 * On RX completion:
 *   Xil_DCacheInvalidateRange() is called before reading
 *   RxBuf so the CPU sees the digest bytes written by MCDMA
 *   over AXI, not a stale cached copy.
 *
 * On timeout:
 *   XMcdma_DumpChanRegs() prints all channel registers.
 *   Check for:
 *     SR (status) register — DMA errors or halted state
 *     TDESC — current BD pointer (stuck = BD not updated)
 *     CDESC — completed BD pointer
 * ─────────────────────────────────────────────────────────── */
int wait_for_dma_done(XMcdma_ChanCtrl *TxChan,
                      XMcdma_ChanCtrl *RxChan,
                      u8 *RxBuf)
{
    XMcdma_Bd *BdPtr;
    int TxDone  = 0;
    int RxDone  = 0;
    u32 timeout = TIMEOUT_COUNT;

    while (timeout--) {

        /* ── Poll TX ─────────────────────────────────────── */
        if (!TxDone) {
            int Cnt = XMcdma_BdChainFromHW(TxChan, 1, &BdPtr);
            if (Cnt > 0) {
                TxDone = 1;
                XMcdma_BdChainFree(TxChan, Cnt, BdPtr);
                xil_printf("TX done\r\n");
            }
        }

        /* ── Poll RX ─────────────────────────────────────── */
        if (!RxDone) {
            int Cnt = XMcdma_BdChainFromHW(RxChan, 1, &BdPtr);
            if (Cnt > 0) {
                RxDone = 1;
                /*
                 * Invalidate cache before reading RxBuf.
                 * MCDMA wrote digest bytes directly to DDR
                 * over AXI — CPU cache may hold stale zeros.
                 */
                Xil_DCacheInvalidateRange((UINTPTR)RxBuf,
                                          DIGEST_BYTES);
                XMcdma_BdChainFree(RxChan, Cnt, BdPtr);
                xil_printf("RX done\r\n");
            }
        }

        if (TxDone && RxDone) {
            return XST_SUCCESS;
        }
    }

    /* ── Timeout diagnostics ─────────────────────────────── */
    xil_printf("ERROR: DMA timeout\r\n");
    xil_printf("TxDone=%d RxDone=%d\r\n", TxDone, RxDone);

    xil_printf("TX channel registers:\r\n");
    XMcdma_DumpChanRegs(TxChan);

    xil_printf("RX channel registers:\r\n");
    XMcdma_DumpChanRegs(RxChan);

    return XST_FAILURE;
}

// ============================================================
//  SECTION 7 — Top-level test orchestration
// ============================================================

/* ── run_selected_sha_ip ─────────────────────────────────────
 * Full test sequence for one SHA IP instance.
 *
 * Channel and buffer mapping:
 *   ip_select  chan_id  dest_id  sha_base       TX buf        RX buf
 *   0          1        0        SHA0_BASEADDR  TX_BUFFER_BASE  RX_BUFFER_BASE
 *   1          2        1        SHA1_BASEADDR  TX_BUFFER_BASE2 RX_BUFFER_BASE2
 *   2          3        2        SHA2_BASEADDR  TX_BUFFER_BASE3 RX_BUFFER_BASE3
 *   3          4        3        SHA3_BASEADDR  TX_BUFFER_BASE4 RX_BUFFER_BASE4
 *
 * Step ordering (critical — do not reorder):
 *   1. setup_one_channel  — BD rings must exist before Submit
 *   2. ChanSubmit RX      — S2MM must be armed before IP starts
 *   3. ChanToHw RX        — push RX BD to hardware
 *   4. sha_start          — IP starts, waits for AXI-Stream data
 *   5. ChanSubmit TX      — MM2S begins sending message bytes
 *   6. BdSetCtrl          — mark BD as SOF+EOF (single packet)
 *   7. ChanToHw TX        — push TX BD to hardware
 *   8. wait_for_dma_done  — poll until both TX and RX complete
 *   9. print_digest       — display received result
 * ─────────────────────────────────────────────────────────── */
int run_selected_sha_ip(u32 ip_select)
{
    int Status;
    u32 chan_id;
    u32 dest_id;
    UINTPTR sha_base;
    UINTPTR tx_buf_base, rx_buf_base;
    u32 tx_len;
    u8 *TxBuf;
    u8 *RxBuf;
    XMcdma_ChanCtrl *TxChan;
    XMcdma_ChanCtrl *RxChan;
    XMcdma_Bd *TxBd;

    /* Validate ip_select range before any hardware access */
    if (ip_select > 3U) {
        xil_printf("ERROR: SELECT_IP must be 0, 1, 2, or 3\r\n");
        return XST_FAILURE;
    }

    /*
     * Derive channel and routing parameters.
     * chan_id is 1-based (MCDMA API convention).
     * dest_id is 0-based (TDEST field in AXI-Stream packet).
     */
    chan_id  = ip_select + 1U;
    dest_id  = ip_select;
    sha_base = get_sha_base(ip_select);
    tx_len   = get_tx_len(MSG_LEN);

    /* Select per-channel cacheable data buffer addresses */
    if (chan_id == 1U) {
        tx_buf_base = TX_BUFFER_BASE;
        rx_buf_base = RX_BUFFER_BASE;
    } else if (chan_id == 2U) {
        tx_buf_base = TX_BUFFER_BASE2;
        rx_buf_base = RX_BUFFER_BASE2;
    } else if (chan_id == 3U) {
        tx_buf_base = TX_BUFFER_BASE3;
        rx_buf_base = RX_BUFFER_BASE3;
    } else {
        tx_buf_base = TX_BUFFER_BASE4;
        rx_buf_base = RX_BUFFER_BASE4;
    }

    TxBuf = (u8 *)tx_buf_base;
    RxBuf = (u8 *)rx_buf_base;

    /* ── Print test configuration ────────────────────────── */
    xil_printf("\r\n====================================\r\n");
    xil_printf(" SELECTED SHA IP TEST\r\n");
    xil_printf("====================================\r\n");
    xil_printf("Selected IP  = test_%lu\r\n", ip_select);
    xil_printf("TX Channel   = %lu\r\n",      chan_id);
    xil_printf("RX Channel   = %lu\r\n",      chan_id);
    xil_printf("TDEST        = %lu\r\n",      dest_id);
    xil_printf("SHA Base     = 0x%08lx\r\n",  (u32)sha_base);
    xil_printf("TX Buf       = 0x%08lx\r\n",  (u32)tx_buf_base);
    xil_printf("RX Buf       = 0x%08lx\r\n",  (u32)rx_buf_base);
    xil_printf("Message      = %s\r\n",        Message);
    xil_printf("MsgLen       = %lu bytes\r\n", MSG_LEN);
    xil_printf("TxLen        = %lu bytes\r\n", tx_len);

    /* ── Step 1: BD ring setup ───────────────────────────── */
    Status = setup_one_channel(chan_id, &TxChan, &RxChan);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    /* ── Step 2: Prepare data buffers ────────────────────── */
    memset(TxBuf, 0, tx_len);
    memcpy(TxBuf, Message, MSG_LEN);
    memset(RxBuf, 0, DIGEST_BYTES);

    /*
     * Flush TX: ensure CPU writes reach DDR before MCDMA reads.
     * Flush RX: evict any stale cache lines at digest address
     *           so post-transfer invalidate sees real DDR data.
     */
    Xil_DCacheFlushRange((UINTPTR)TxBuf, tx_len);
    Xil_DCacheFlushRange((UINTPTR)RxBuf, DIGEST_BYTES);
    Xil_DCacheInvalidateRange((UINTPTR)RxBuf, DIGEST_BYTES);

    /* ── Step 3: Arm RX (must be before SHA IP starts) ───── */
    Status = XMcDma_ChanSubmit(RxChan, rx_buf_base, DIGEST_BYTES);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: RX ChanSubmit failed = %d\r\n", Status);
        return XST_FAILURE;
    }

    Status = XMcDma_ChanToHw(RxChan);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: RX ChanToHw failed = %d\r\n", Status);
        return XST_FAILURE;
    }

    xil_printf("RX armed\r\n");

    /* ── Step 4: Start SHA IP ────────────────────────────── */
    sha_start(sha_base, MSG_LEN, dest_id);

    /* ── Step 5–7: Submit TX packet ──────────────────────── */
    /*
     * MM2S channel 1 → TDEST 0 → sha_top_0
     * MM2S channel 2 → TDEST 1 → sha_top_1
     * MM2S channel 3 → TDEST 2 → sha_top_2
     * MM2S channel 4 → TDEST 3 → sha_top_3
     */
    Status = XMcDma_ChanSubmit(TxChan, tx_buf_base, tx_len);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: TX ChanSubmit failed = %d\r\n", Status);
        return XST_FAILURE;
    }

    TxBd = XMcdma_GetChanCurBd(TxChan);

    /*
     * SOF + EOF: mark the single BD as both start and end of
     * frame. Required for a single-packet transfer. Without
     * SOF/EOF the MCDMA MM2S engine will not assert TLAST and
     * the SHA IP FEED_LOOP will never exit.
     */
    XMcDma_BdSetCtrl(TxBd,
                     XMCDMA_BD_CTRL_SOF_MASK |
                     XMCDMA_BD_CTRL_EOF_MASK);

    XMCDMA_CACHE_FLUSH((UINTPTR)TxBd);

    Status = XMcDma_ChanToHw(TxChan);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: TX ChanToHw failed = %d\r\n", Status);
        return XST_FAILURE;
    }

    xil_printf("TX started\r\n");

    /* ── Step 8: Wait for completion ─────────────────────── */
    Status = wait_for_dma_done(TxChan, RxChan, RxBuf);
    if (Status != XST_SUCCESS) {
        xil_printf("TEST FAILED for test_%lu\r\n", ip_select);
        xil_printf("SHA CTRL = 0x%08lx\r\n",
                   Xil_In32(sha_base + XTEST_CONTROL_ADDR_AP_CTRL));
        return XST_FAILURE;
    }

    /* ── Step 9: Print result ────────────────────────────── */
    xil_printf("\r\nReceived SHA-512/256 digest:\r\n");
    print_digest(RxBuf);

    xil_printf("\r\nExpected digest for abc:\r\n");
    xil_printf("53048e2681941ef99b2e29b76b4c7dabe4c2d0c634fc6d46e0e2f13107e7af23\r\n");

    return XST_SUCCESS;
}