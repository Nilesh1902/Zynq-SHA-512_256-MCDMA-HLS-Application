// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_test (
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&msg_strm),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&digest_strm),
__cosim_s16__ msg_len,
char dest_id);
