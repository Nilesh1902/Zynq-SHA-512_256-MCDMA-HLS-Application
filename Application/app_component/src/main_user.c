// ============================================================================
//  main_user.c  —  User entry point for SHA-512/256 MCDMA test
//  Target board : Avnet Ultra96-V2  (xczu3eg-sbva484-1-i)
//  Tool         : Vitis 2024.2
//
//  THIS IS THE ONLY FILE YOU NEED TO EDIT DAY-TO-DAY.
//
//  To test a different SHA IP:
//    Change SELECT_IP to 0, 1, 2, or 3 and rebuild.
//
//  To test a different message:
//    Edit Message[] in sha_api.c (not here).
//
//  To change hardware addresses:
//    Edit sha_config.h (not here).
//
//  File dependency chain:
//    main_user.c
//      └── sha_api.h
//            ├── sha_config.h   (all #define constants)
//            ├── xparameters.h  (Xilinx BSP)
//            ├── xmcdma.h       (MCDMA driver)
//            └── xtest_hw.h     (HLS generated register map)
// ============================================================================

#include "sha_api.h"

// ============================================================
//  USER EDITABLE — change this value to select which SHA IP
//  to test. Rebuild and re-run after changing.
//
//  Value  IP instance   AXI-Lite base    MCDMA channel
//  -----  -----------   -------------    -------------
//    0    test_0        SHA0_BASEADDR    TX/RX chan 1
//    1    test_1        SHA1_BASEADDR    TX/RX chan 2
//    2    test_2        SHA2_BASEADDR    TX/RX chan 3
//    3    test_3        SHA3_BASEADDR    TX/RX chan 4
// ============================================================
#define SELECT_IP   3U

// ============================================================
//  main() — system init then run selected SHA IP test
//
//  Steps:
//    1. Mark all BD regions non-cacheable  (aarch64 only)
//    2. Initialize MCDMA driver
//    3. Run full test for SELECT_IP
//    4. Print PASS or FAIL
// ============================================================
int main(void)
{
    int Status;

    xil_printf("\r\n====================================\r\n");
    xil_printf(" 4 SHA IP + MCDMA SELECT MODE TEST\r\n");
    xil_printf("====================================\r\n");

#ifdef __aarch64__
    /*
     * Mark all BD ring regions as non-cacheable.
     * Xil_SetTlbAttributes() operates on 2MB pages — all BD
     * base addresses in sha_config.h are 2MB aligned for this.
     *
     * Without this, the CPU may serve BD reads/writes from
     * cache instead of DDR, causing MCDMA to see stale BDs
     * and hang silently with no error flag.
     */
    Xil_SetTlbAttributes(TX_BD_SPACE_BASE,  NORM_NONCACHE);
    Xil_SetTlbAttributes(RX_BD_SPACE_BASE,  NORM_NONCACHE);
    Xil_SetTlbAttributes(TX_BD_SPACE_BASE2, NORM_NONCACHE);
    Xil_SetTlbAttributes(RX_BD_SPACE_BASE2, NORM_NONCACHE);
    Xil_SetTlbAttributes(TX_BD_SPACE_BASE3, NORM_NONCACHE);
    Xil_SetTlbAttributes(RX_BD_SPACE_BASE3, NORM_NONCACHE);
    Xil_SetTlbAttributes(TX_BD_SPACE_BASE4, NORM_NONCACHE);
    Xil_SetTlbAttributes(RX_BD_SPACE_BASE4, NORM_NONCACHE);
#endif

    /* Step 1: Initialize MCDMA driver — must run before anything else */
    Status = mcdma_init();
    if (Status != XST_SUCCESS) {
        xil_printf("MCDMA init failed\r\n");
        xil_printf("\r\nFINAL RESULT: FAIL\r\n");
        return XST_FAILURE;
    }

    /* Step 2: Run full SHA test for selected IP */
    Status = run_selected_sha_ip(SELECT_IP);
    if (Status != XST_SUCCESS) {
        xil_printf("\r\nFINAL RESULT: FAIL\r\n");
        return XST_FAILURE;
    }

    xil_printf("\r\nFINAL RESULT: PASS\r\n");
    return XST_SUCCESS;
}