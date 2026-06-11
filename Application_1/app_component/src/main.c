#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "xmcdma.h"
#include "xmcdma_hw.h"
#include "xmcdma_bd.h"
#include "sleep.h"
#include <string.h>

#ifdef __aarch64__
#include "xil_mmu.h"
#endif

/*
 * HLS generated header.
 * Check in BSP:
 * drivers/test_v1_0/src/xtest_hw.h
 */
#include "xtest_hw.h"

/* ============================================================
 * USER SELECTION
 * ============================================================ */
#define SELECT_IP        3U      /* 0 = test_0, 1 = test_1, 2 = test_2, 3 = test_3 */

/* ============================================================
 * ADDRESS MAP FROM YOUR VIVADO ADDRESS EDITOR
 * ============================================================ */
#define MCDMA_BASEADDR   0xA0000000U
#define SHA0_BASEADDR    0xA0010000U
#define SHA1_BASEADDR    0xA0020000U
#define SHA2_BASEADDR    0xA0030000U
#define SHA3_BASEADDR    0xA0040000U

/* DDR buffer area - must be inside DDR range */
/* DDR buffer area - must be inside DDR range */

// Fix — use 2MB (0x200000) boundaries:
#define TX_BD_SPACE_BASE  0x10000000U   // 2MB aligned ✅
#define RX_BD_SPACE_BASE  0x10200000U   // 2MB aligned ✅
#define TX_BD_SPACE_BASE2 0x10400000U   // 2MB aligned ✅
#define RX_BD_SPACE_BASE2 0x10600000U   // 2MB aligned ✅
#define TX_BD_SPACE_BASE3 0x10800000U   // 2MB aligned ✅
#define RX_BD_SPACE_BASE3 0x10A00000U   // 2MB aligned ✅
#define TX_BD_SPACE_BASE4 0x10C00000U   // 2MB aligned ✅   chan 4 TX BD  ← add
#define RX_BD_SPACE_BASE4 0x10E00000U   // 2MB aligned ✅   chan 4 RX BD  ← add

/* ── Data Buffers ─────────────────── */
#define TX_BUFFER_BASE    0x11000000U   // 2MB aligned ✅   chan 1 TX data  ← shifted up
#define RX_BUFFER_BASE    0x11200000U   // 2MB aligned ✅   chan 1 RX digest
#define TX_BUFFER_BASE2   0x11400000U   // 2MB aligned ✅   chan 2 TX data
#define RX_BUFFER_BASE2   0x11600000U   // 2MB aligned ✅   chan 2 RX digest
#define TX_BUFFER_BASE3   0x11800000U   // 2MB aligned ✅   chan 3 TX data
#define RX_BUFFER_BASE3   0x11A00000U   // 2MB aligned ✅   chan 3 RX digest
#define TX_BUFFER_BASE4   0x11C00000U   // 2MB aligned ✅   chan 4 TX data  ← add
#define RX_BUFFER_BASE4   0x11E00000U   // 2MB aligned ✅   chan 4 RX digest ← add

#define BD_COUNT         1U
#define DIGEST_BYTES     32U
#define TIMEOUT_COUNT    10000000U

/* HLS register offsets */
#ifndef XTEST_CONTROL_ADDR_AP_CTRL
#define XTEST_CONTROL_ADDR_AP_CTRL 0x00U
#endif

#define SHA_MSG_LEN_REG  XTEST_CONTROL_ADDR_MSG_LEN_DATA
#define SHA_DEST_ID_REG  XTEST_CONTROL_ADDR_DEST_ID_DATA

static XMcdma AxiMcdma;

static const u8 Message[] = "abc";
#define MSG_LEN ((u32)(sizeof(Message) - 1U))

static void print_digest(const u8 *digest)
{
    xil_printf("Digest = ");
    for (int i = 0; i < DIGEST_BYTES; i++) {
        xil_printf("%02x", digest[i]);
    }
    xil_printf("\r\n");
}

static u32 get_tx_len(u32 msg_len)
{
    return ((msg_len + 7U) / 8U) * 8U;
}

static UINTPTR get_sha_base(u32 ip_select)
{
    if (ip_select == 0U) {
        return SHA0_BASEADDR;
    } else if (ip_select == 1U) {
        return SHA1_BASEADDR;
    } else if (ip_select == 2U) {
        return SHA2_BASEADDR;   // ← now explicit
    } else {
        return SHA3_BASEADDR;   // ← add for 4th IP
    }
}

static void sha_start(UINTPTR sha_base, u32 msg_len, u32 dest_id)
{
    u32 ctrl;

    xil_printf("Programming SHA IP at 0x%08lx\r\n", (u32)sha_base);

    /*
     * msg_len is ap_uint<128>.
     * For small input, only lower 32 bits are used.
     */
    Xil_Out32(sha_base + SHA_MSG_LEN_REG + 0x00U, msg_len);
    Xil_Out32(sha_base + SHA_MSG_LEN_REG + 0x04U, 0x00000000U);
    Xil_Out32(sha_base + SHA_MSG_LEN_REG + 0x08U, 0x00000000U);
    Xil_Out32(sha_base + SHA_MSG_LEN_REG + 0x0CU, 0x00000000U);

    /*
     * dest_id becomes TDEST on digest_strm.
     * dest_id 0 → MCDMA RX channel 1
     * dest_id 1 → MCDMA RX channel 2
     * dest_id 2 → MCDMA RX channel 3
     * dest_id 3 → MCDMA RX channel 4   ← add this line
     */
    Xil_Out32(sha_base + SHA_DEST_ID_REG, dest_id);

    xil_printf("SHA msg_len = %lu\r\n", msg_len);
    xil_printf("SHA dest_id = %lu\r\n", dest_id);

    ctrl = Xil_In32(sha_base + XTEST_CONTROL_ADDR_AP_CTRL);
    xil_printf("SHA CTRL before start = 0x%08lx\r\n", ctrl);

    /* ap_start = bit 0 */
    Xil_Out32(sha_base + XTEST_CONTROL_ADDR_AP_CTRL, ctrl | 0x01U);

    ctrl = Xil_In32(sha_base + XTEST_CONTROL_ADDR_AP_CTRL);
    xil_printf("SHA CTRL after start  = 0x%08lx\r\n", ctrl);
}

static int mcdma_init(void)
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
    xil_printf("TX channels      = %d\r\n", Config->TxNumChannels);
    xil_printf("RX channels      = %d\r\n", Config->RxNumChannels);
    xil_printf("MM2S width       = %d\r\n", Config->MM2SDataWidth);
    xil_printf("S2MM width       = %d\r\n", Config->S2MMDataWidth);
    xil_printf("Max transfer len = %lu\r\n", Config->MaxTransferlen);

    return XST_SUCCESS;
}

static int setup_one_channel(u32 chan_id,
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

    XMcdma_IntrDisable(TxChan, XMCDMA_IRQ_ALL_MASK);
    XMcdma_IntrDisable(RxChan, XMCDMA_IRQ_ALL_MASK);

    if (chan_id == 1U) {
        tx_bd_base = TX_BD_SPACE_BASE;
        rx_bd_base = RX_BD_SPACE_BASE;
    } else if (chan_id == 2U) {
        tx_bd_base = TX_BD_SPACE_BASE2;
        rx_bd_base = RX_BD_SPACE_BASE2;
    } else if (chan_id == 3U) {
        tx_bd_base = TX_BD_SPACE_BASE3;   // ← now explicit
        rx_bd_base = RX_BD_SPACE_BASE3;
    } else {
        tx_bd_base = TX_BD_SPACE_BASE4;   // ← add for chan 4
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

static int wait_for_dma_done(XMcdma_ChanCtrl *TxChan,
                             XMcdma_ChanCtrl *RxChan,
                             u8 *RxBuf)
{
    XMcdma_Bd *BdPtr;
    int TxDone = 0;
    int RxDone = 0;
    u32 timeout = TIMEOUT_COUNT;

    while (timeout--) {
        if (!TxDone) {
            int Cnt = XMcdma_BdChainFromHW(TxChan, 1, &BdPtr);
            if (Cnt > 0) {
                TxDone = 1;
                XMcdma_BdChainFree(TxChan, Cnt, BdPtr);
                xil_printf("TX done\r\n");
            }
        }

        if (!RxDone) {
            int Cnt = XMcdma_BdChainFromHW(RxChan, 1, &BdPtr);
            if (Cnt > 0) {
                RxDone = 1;
                Xil_DCacheInvalidateRange((UINTPTR)RxBuf, DIGEST_BYTES);
                XMcdma_BdChainFree(RxChan, Cnt, BdPtr);
                xil_printf("RX done\r\n");
            }
        }

        if (TxDone && RxDone) {
            return XST_SUCCESS;
        }
    }

    xil_printf("ERROR: DMA timeout\r\n");
    xil_printf("TxDone=%d RxDone=%d\r\n", TxDone, RxDone);

    xil_printf("TX channel registers:\r\n");
    XMcdma_DumpChanRegs(TxChan);

    xil_printf("RX channel registers:\r\n");
    XMcdma_DumpChanRegs(RxChan);

    return XST_FAILURE;
}

static int run_selected_sha_ip(u32 ip_select)
{
    int Status;
    u32 chan_id;
    u32 dest_id;
    UINTPTR sha_base;
    UINTPTR tx_buf_base, rx_buf_base;
    u32 tx_len;
    u8 *TxBuf;                              // ← declare here
    u8 *RxBuf;                              // ← declare here
    XMcdma_ChanCtrl *TxChan;
    XMcdma_ChanCtrl *RxChan;
    XMcdma_Bd *TxBd;

    if (ip_select > 3U) {
        xil_printf("ERROR: SELECT_IP must be 0, 1, 2 OR 3\r\n");
        return XST_FAILURE;
    }

    /*
     * Software channel is 1-based.
     * TDEST/IP select is 0-based.
     */
    chan_id  = ip_select + 1U;
    dest_id  = ip_select;
    sha_base = get_sha_base(ip_select);
    tx_len   = get_tx_len(MSG_LEN);

    /* ── Per-channel buffer selection ─────────────────────────────── */
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

    TxBuf = (u8 *)tx_buf_base;             // ← assign here
    RxBuf = (u8 *)rx_buf_base;             // ← assign here

    xil_printf("\r\n====================================\r\n");
    xil_printf(" SELECTED SHA IP TEST\r\n");
    xil_printf("====================================\r\n");
    xil_printf("Selected IP  = test_%lu\r\n", ip_select);
    xil_printf("TX Channel   = %lu\r\n", chan_id);
    xil_printf("RX Channel   = %lu\r\n", chan_id);
    xil_printf("TDEST        = %lu\r\n", dest_id);
    xil_printf("SHA Base     = 0x%08lx\r\n", (u32)sha_base);
    xil_printf("Message      = %s\r\n", Message);
    xil_printf("MsgLen       = %lu bytes\r\n", MSG_LEN);
    xil_printf("TxLen        = %lu bytes\r\n", tx_len);

    Status = setup_one_channel(chan_id, &TxChan, &RxChan);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    memset(TxBuf, 0, tx_len);
    memcpy(TxBuf, Message, MSG_LEN);
    memset(RxBuf, 0, DIGEST_BYTES);

    Xil_DCacheFlushRange((UINTPTR)TxBuf, tx_len);
    Xil_DCacheFlushRange((UINTPTR)RxBuf, DIGEST_BYTES);
    Xil_DCacheInvalidateRange((UINTPTR)RxBuf, DIGEST_BYTES);

    /*
     * 1. Arm RX first.
     */
    Status = XMcDma_ChanSubmit(RxChan, rx_buf_base, DIGEST_BYTES);  // ← fixed
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

    /*
     * 2. Start selected SHA IP.
     */
    sha_start(sha_base, MSG_LEN, dest_id);

    /*
     * 3. Submit TX packet.
     * MM2S channel 1 → TDEST 0 → sha_top_0
     * MM2S channel 2 → TDEST 1 → sha_top_1
     * MM2S channel 3 → TDEST 2 → sha_top_2
     * MM2S channel 4 → TDEST 3 → sha_top_3
     */
    Status = XMcDma_ChanSubmit(TxChan, tx_buf_base, tx_len);        // ← fixed
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: TX ChanSubmit failed = %d\r\n", Status);
        return XST_FAILURE;
    }

    TxBd = XMcdma_GetChanCurBd(TxChan);

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

    /*
     * 4. Wait for both TX and RX done.
     */
    Status = wait_for_dma_done(TxChan, RxChan, RxBuf);
    if (Status != XST_SUCCESS) {
        xil_printf("TEST FAILED for test_%lu\r\n", ip_select);
        xil_printf("SHA CTRL = 0x%08lx\r\n",
                   Xil_In32(sha_base + XTEST_CONTROL_ADDR_AP_CTRL));
        return XST_FAILURE;
    }

    xil_printf("\r\nReceived SHA-512/256 digest:\r\n");
    print_digest(RxBuf);

    xil_printf("\r\nExpected digest for abc:\r\n");
    xil_printf("53048e2681941ef99b2e29b76b4c7dabe4c2d0c634fc6d46e0e2f13107e7af23\r\n");

    return XST_SUCCESS;
}

int main(void)
{
    int Status;

    xil_printf("\r\n====================================\r\n");
    xil_printf(" 3 SHA IP + MCDMA SELECT MODE TEST\r\n");
    xil_printf("====================================\r\n");

#ifdef __aarch64__
    /*
     * BD memory should be non-cacheable.
     * These addresses are 2MB aligned.
     */
    Xil_SetTlbAttributes(TX_BD_SPACE_BASE,  NORM_NONCACHE);
    Xil_SetTlbAttributes(RX_BD_SPACE_BASE,  NORM_NONCACHE);
    Xil_SetTlbAttributes(TX_BD_SPACE_BASE2, NORM_NONCACHE);
    Xil_SetTlbAttributes(RX_BD_SPACE_BASE2, NORM_NONCACHE);
    Xil_SetTlbAttributes(TX_BD_SPACE_BASE3, NORM_NONCACHE);  // ← add
    Xil_SetTlbAttributes(RX_BD_SPACE_BASE3, NORM_NONCACHE);  // ← add
    Xil_SetTlbAttributes(TX_BD_SPACE_BASE4, NORM_NONCACHE);
    Xil_SetTlbAttributes(RX_BD_SPACE_BASE4, NORM_NONCACHE);
#endif

    Status = mcdma_init();
    if (Status != XST_SUCCESS) {
        xil_printf("MCDMA init failed\r\n");
        return XST_FAILURE;
    }

    Status = run_selected_sha_ip(SELECT_IP);
    if (Status != XST_SUCCESS) {
        xil_printf("\r\nFINAL RESULT: FAIL\r\n");
        return XST_FAILURE;
    }

    xil_printf("\r\nFINAL RESULT: PASS\r\n");
    return XST_SUCCESS;
}