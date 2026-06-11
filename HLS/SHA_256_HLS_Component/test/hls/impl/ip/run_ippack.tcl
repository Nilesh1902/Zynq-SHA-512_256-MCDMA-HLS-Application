# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
source -notrace "D:/version_2024.2/Vitis/2024.2/common/scripts/ipxhls.tcl"
set ip_dir "D:/Nilesh_3/HLS/SHA_256_HLS_Component/test/hls/impl/ip"
set data_file "D:/Nilesh_3/HLS/SHA_256_HLS_Component/test/hls/hls_data.json"
set ip_types "vitis sysgen"
if { [catch {::ipx::utils::package_hls_ip $ip_dir $data_file $ip_types } res] } {
  puts "Caught error:\n$::errorInfo"
  error $res
}
