//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed Jun 10 15:56:27 2026
//Host        : nileshnadekar running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=4,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=11,da_clkrst_cnt=2,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire [63:0]axi_mcdma_0_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_mcdma_0_M_AXIS_MM2S_TDEST;
  wire [7:0]axi_mcdma_0_M_AXIS_MM2S_TKEEP;
  wire axi_mcdma_0_M_AXIS_MM2S_TLAST;
  wire [0:0]axi_mcdma_0_M_AXIS_MM2S_TREADY;
  wire axi_mcdma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_mcdma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_mcdma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_mcdma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_mcdma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_mcdma_0_M_AXI_MM2S_ARPROT;
  wire axi_mcdma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_mcdma_0_M_AXI_MM2S_ARSIZE;
  wire [3:0]axi_mcdma_0_M_AXI_MM2S_ARUSER;
  wire axi_mcdma_0_M_AXI_MM2S_ARVALID;
  wire [63:0]axi_mcdma_0_M_AXI_MM2S_RDATA;
  wire axi_mcdma_0_M_AXI_MM2S_RLAST;
  wire axi_mcdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_mcdma_0_M_AXI_MM2S_RRESP;
  wire axi_mcdma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_mcdma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_mcdma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_mcdma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_mcdma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_mcdma_0_M_AXI_S2MM_AWPROT;
  wire axi_mcdma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_mcdma_0_M_AXI_S2MM_AWSIZE;
  wire [3:0]axi_mcdma_0_M_AXI_S2MM_AWUSER;
  wire axi_mcdma_0_M_AXI_S2MM_AWVALID;
  wire axi_mcdma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_mcdma_0_M_AXI_S2MM_BRESP;
  wire axi_mcdma_0_M_AXI_S2MM_BVALID;
  wire [255:0]axi_mcdma_0_M_AXI_S2MM_WDATA;
  wire axi_mcdma_0_M_AXI_S2MM_WLAST;
  wire axi_mcdma_0_M_AXI_S2MM_WREADY;
  wire [31:0]axi_mcdma_0_M_AXI_S2MM_WSTRB;
  wire axi_mcdma_0_M_AXI_S2MM_WVALID;
  wire [31:0]axi_mcdma_0_M_AXI_SG_ARADDR;
  wire [1:0]axi_mcdma_0_M_AXI_SG_ARBURST;
  wire [3:0]axi_mcdma_0_M_AXI_SG_ARCACHE;
  wire [7:0]axi_mcdma_0_M_AXI_SG_ARLEN;
  wire [2:0]axi_mcdma_0_M_AXI_SG_ARPROT;
  wire axi_mcdma_0_M_AXI_SG_ARREADY;
  wire [2:0]axi_mcdma_0_M_AXI_SG_ARSIZE;
  wire [3:0]axi_mcdma_0_M_AXI_SG_ARUSER;
  wire axi_mcdma_0_M_AXI_SG_ARVALID;
  wire [31:0]axi_mcdma_0_M_AXI_SG_AWADDR;
  wire [1:0]axi_mcdma_0_M_AXI_SG_AWBURST;
  wire [3:0]axi_mcdma_0_M_AXI_SG_AWCACHE;
  wire [7:0]axi_mcdma_0_M_AXI_SG_AWLEN;
  wire [2:0]axi_mcdma_0_M_AXI_SG_AWPROT;
  wire axi_mcdma_0_M_AXI_SG_AWREADY;
  wire [2:0]axi_mcdma_0_M_AXI_SG_AWSIZE;
  wire [3:0]axi_mcdma_0_M_AXI_SG_AWUSER;
  wire axi_mcdma_0_M_AXI_SG_AWVALID;
  wire axi_mcdma_0_M_AXI_SG_BREADY;
  wire [1:0]axi_mcdma_0_M_AXI_SG_BRESP;
  wire axi_mcdma_0_M_AXI_SG_BVALID;
  wire [31:0]axi_mcdma_0_M_AXI_SG_RDATA;
  wire axi_mcdma_0_M_AXI_SG_RLAST;
  wire axi_mcdma_0_M_AXI_SG_RREADY;
  wire [1:0]axi_mcdma_0_M_AXI_SG_RRESP;
  wire axi_mcdma_0_M_AXI_SG_RVALID;
  wire [31:0]axi_mcdma_0_M_AXI_SG_WDATA;
  wire axi_mcdma_0_M_AXI_SG_WLAST;
  wire axi_mcdma_0_M_AXI_SG_WREADY;
  wire [3:0]axi_mcdma_0_M_AXI_SG_WSTRB;
  wire axi_mcdma_0_M_AXI_SG_WVALID;
  wire [48:0]axi_smc_1_M00_AXI_ARADDR;
  wire [1:0]axi_smc_1_M00_AXI_ARBURST;
  wire [3:0]axi_smc_1_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M00_AXI_ARLEN;
  wire [0:0]axi_smc_1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M00_AXI_ARPROT;
  wire [3:0]axi_smc_1_M00_AXI_ARQOS;
  wire axi_smc_1_M00_AXI_ARREADY;
  wire [2:0]axi_smc_1_M00_AXI_ARSIZE;
  wire [3:0]axi_smc_1_M00_AXI_ARUSER;
  wire axi_smc_1_M00_AXI_ARVALID;
  wire [48:0]axi_smc_1_M00_AXI_AWADDR;
  wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  wire [0:0]axi_smc_1_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  wire axi_smc_1_M00_AXI_AWREADY;
  wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  wire [3:0]axi_smc_1_M00_AXI_AWUSER;
  wire axi_smc_1_M00_AXI_AWVALID;
  wire axi_smc_1_M00_AXI_BREADY;
  wire [1:0]axi_smc_1_M00_AXI_BRESP;
  wire axi_smc_1_M00_AXI_BVALID;
  wire [127:0]axi_smc_1_M00_AXI_RDATA;
  wire axi_smc_1_M00_AXI_RLAST;
  wire axi_smc_1_M00_AXI_RREADY;
  wire [1:0]axi_smc_1_M00_AXI_RRESP;
  wire axi_smc_1_M00_AXI_RVALID;
  wire [127:0]axi_smc_1_M00_AXI_WDATA;
  wire axi_smc_1_M00_AXI_WLAST;
  wire axi_smc_1_M00_AXI_WREADY;
  wire [15:0]axi_smc_1_M00_AXI_WSTRB;
  wire axi_smc_1_M00_AXI_WVALID;
  wire [48:0]axi_smc_1_M01_AXI_ARADDR;
  wire [1:0]axi_smc_1_M01_AXI_ARBURST;
  wire [3:0]axi_smc_1_M01_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M01_AXI_ARLEN;
  wire [0:0]axi_smc_1_M01_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M01_AXI_ARPROT;
  wire [3:0]axi_smc_1_M01_AXI_ARQOS;
  wire axi_smc_1_M01_AXI_ARREADY;
  wire [2:0]axi_smc_1_M01_AXI_ARSIZE;
  wire [3:0]axi_smc_1_M01_AXI_ARUSER;
  wire axi_smc_1_M01_AXI_ARVALID;
  wire [48:0]axi_smc_1_M01_AXI_AWADDR;
  wire [1:0]axi_smc_1_M01_AXI_AWBURST;
  wire [3:0]axi_smc_1_M01_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M01_AXI_AWLEN;
  wire [0:0]axi_smc_1_M01_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M01_AXI_AWPROT;
  wire [3:0]axi_smc_1_M01_AXI_AWQOS;
  wire axi_smc_1_M01_AXI_AWREADY;
  wire [2:0]axi_smc_1_M01_AXI_AWSIZE;
  wire [3:0]axi_smc_1_M01_AXI_AWUSER;
  wire axi_smc_1_M01_AXI_AWVALID;
  wire axi_smc_1_M01_AXI_BREADY;
  wire [1:0]axi_smc_1_M01_AXI_BRESP;
  wire axi_smc_1_M01_AXI_BVALID;
  wire [127:0]axi_smc_1_M01_AXI_RDATA;
  wire axi_smc_1_M01_AXI_RLAST;
  wire axi_smc_1_M01_AXI_RREADY;
  wire [1:0]axi_smc_1_M01_AXI_RRESP;
  wire axi_smc_1_M01_AXI_RVALID;
  wire [127:0]axi_smc_1_M01_AXI_WDATA;
  wire axi_smc_1_M01_AXI_WLAST;
  wire axi_smc_1_M01_AXI_WREADY;
  wire [15:0]axi_smc_1_M01_AXI_WSTRB;
  wire axi_smc_1_M01_AXI_WVALID;
  wire [48:0]axi_smc_1_M02_AXI_ARADDR;
  wire [1:0]axi_smc_1_M02_AXI_ARBURST;
  wire [3:0]axi_smc_1_M02_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M02_AXI_ARLEN;
  wire [0:0]axi_smc_1_M02_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M02_AXI_ARPROT;
  wire [3:0]axi_smc_1_M02_AXI_ARQOS;
  wire axi_smc_1_M02_AXI_ARREADY;
  wire [2:0]axi_smc_1_M02_AXI_ARSIZE;
  wire [3:0]axi_smc_1_M02_AXI_ARUSER;
  wire axi_smc_1_M02_AXI_ARVALID;
  wire [48:0]axi_smc_1_M02_AXI_AWADDR;
  wire [1:0]axi_smc_1_M02_AXI_AWBURST;
  wire [3:0]axi_smc_1_M02_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M02_AXI_AWLEN;
  wire [0:0]axi_smc_1_M02_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M02_AXI_AWPROT;
  wire [3:0]axi_smc_1_M02_AXI_AWQOS;
  wire axi_smc_1_M02_AXI_AWREADY;
  wire [2:0]axi_smc_1_M02_AXI_AWSIZE;
  wire [3:0]axi_smc_1_M02_AXI_AWUSER;
  wire axi_smc_1_M02_AXI_AWVALID;
  wire axi_smc_1_M02_AXI_BREADY;
  wire [1:0]axi_smc_1_M02_AXI_BRESP;
  wire axi_smc_1_M02_AXI_BVALID;
  wire [127:0]axi_smc_1_M02_AXI_RDATA;
  wire axi_smc_1_M02_AXI_RLAST;
  wire axi_smc_1_M02_AXI_RREADY;
  wire [1:0]axi_smc_1_M02_AXI_RRESP;
  wire axi_smc_1_M02_AXI_RVALID;
  wire [127:0]axi_smc_1_M02_AXI_WDATA;
  wire axi_smc_1_M02_AXI_WLAST;
  wire axi_smc_1_M02_AXI_WREADY;
  wire [15:0]axi_smc_1_M02_AXI_WSTRB;
  wire axi_smc_1_M02_AXI_WVALID;
  wire [11:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [11:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire axi_smc_M00_AXI_WVALID;
  wire [5:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [5:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [5:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [5:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [5:0]axi_smc_M03_AXI_ARADDR;
  wire axi_smc_M03_AXI_ARREADY;
  wire axi_smc_M03_AXI_ARVALID;
  wire [5:0]axi_smc_M03_AXI_AWADDR;
  wire axi_smc_M03_AXI_AWREADY;
  wire axi_smc_M03_AXI_AWVALID;
  wire axi_smc_M03_AXI_BREADY;
  wire [1:0]axi_smc_M03_AXI_BRESP;
  wire axi_smc_M03_AXI_BVALID;
  wire [31:0]axi_smc_M03_AXI_RDATA;
  wire axi_smc_M03_AXI_RREADY;
  wire [1:0]axi_smc_M03_AXI_RRESP;
  wire axi_smc_M03_AXI_RVALID;
  wire [31:0]axi_smc_M03_AXI_WDATA;
  wire axi_smc_M03_AXI_WREADY;
  wire [3:0]axi_smc_M03_AXI_WSTRB;
  wire axi_smc_M03_AXI_WVALID;
  wire [5:0]axi_smc_M04_AXI_ARADDR;
  wire axi_smc_M04_AXI_ARREADY;
  wire axi_smc_M04_AXI_ARVALID;
  wire [5:0]axi_smc_M04_AXI_AWADDR;
  wire axi_smc_M04_AXI_AWREADY;
  wire axi_smc_M04_AXI_AWVALID;
  wire axi_smc_M04_AXI_BREADY;
  wire [1:0]axi_smc_M04_AXI_BRESP;
  wire axi_smc_M04_AXI_BVALID;
  wire [31:0]axi_smc_M04_AXI_RDATA;
  wire axi_smc_M04_AXI_RREADY;
  wire [1:0]axi_smc_M04_AXI_RRESP;
  wire axi_smc_M04_AXI_RVALID;
  wire [31:0]axi_smc_M04_AXI_WDATA;
  wire axi_smc_M04_AXI_WREADY;
  wire [3:0]axi_smc_M04_AXI_WSTRB;
  wire axi_smc_M04_AXI_WVALID;
  wire [63:0]axis_switch_0_M00_AXIS_TDATA;
  wire [1:0]axis_switch_0_M00_AXIS_TDEST;
  wire [7:0]axis_switch_0_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_0_M00_AXIS_TLAST;
  wire axis_switch_0_M00_AXIS_TREADY;
  wire [7:0]axis_switch_0_M00_AXIS_TSTRB;
  wire [0:0]axis_switch_0_M00_AXIS_TVALID;
  wire [127:64]axis_switch_0_M01_AXIS_TDATA;
  wire [3:2]axis_switch_0_M01_AXIS_TDEST;
  wire [15:8]axis_switch_0_M01_AXIS_TKEEP;
  wire [1:1]axis_switch_0_M01_AXIS_TLAST;
  wire axis_switch_0_M01_AXIS_TREADY;
  wire [15:8]axis_switch_0_M01_AXIS_TSTRB;
  wire [1:1]axis_switch_0_M01_AXIS_TVALID;
  wire [191:128]axis_switch_0_M02_AXIS_TDATA;
  wire [5:4]axis_switch_0_M02_AXIS_TDEST;
  wire [23:16]axis_switch_0_M02_AXIS_TKEEP;
  wire [2:2]axis_switch_0_M02_AXIS_TLAST;
  wire axis_switch_0_M02_AXIS_TREADY;
  wire [23:16]axis_switch_0_M02_AXIS_TSTRB;
  wire [2:2]axis_switch_0_M02_AXIS_TVALID;
  wire [255:192]axis_switch_0_M03_AXIS_TDATA;
  wire [7:6]axis_switch_0_M03_AXIS_TDEST;
  wire [31:24]axis_switch_0_M03_AXIS_TKEEP;
  wire [3:3]axis_switch_0_M03_AXIS_TLAST;
  wire axis_switch_0_M03_AXIS_TREADY;
  wire [31:24]axis_switch_0_M03_AXIS_TSTRB;
  wire [3:3]axis_switch_0_M03_AXIS_TVALID;
  wire [255:0]axis_switch_1_M00_AXIS_TDATA;
  wire [1:0]axis_switch_1_M00_AXIS_TDEST;
  wire [31:0]axis_switch_1_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_1_M00_AXIS_TLAST;
  wire axis_switch_1_M00_AXIS_TREADY;
  wire [0:0]axis_switch_1_M00_AXIS_TVALID;
  wire [0:0]rst_ps8_0_100M_peripheral_aresetn;
  wire [255:0]test_0_digest_strm_TDATA;
  wire [2:0]test_0_digest_strm_TDEST;
  wire [31:0]test_0_digest_strm_TKEEP;
  wire [0:0]test_0_digest_strm_TLAST;
  wire [0:0]test_0_digest_strm_TREADY;
  wire [31:0]test_0_digest_strm_TSTRB;
  wire test_0_digest_strm_TVALID;
  wire [255:0]test_1_digest_strm_TDATA;
  wire [2:0]test_1_digest_strm_TDEST;
  wire [31:0]test_1_digest_strm_TKEEP;
  wire [0:0]test_1_digest_strm_TLAST;
  wire [1:1]test_1_digest_strm_TREADY;
  wire [31:0]test_1_digest_strm_TSTRB;
  wire test_1_digest_strm_TVALID;
  wire [255:0]test_2_digest_strm_TDATA;
  wire [2:0]test_2_digest_strm_TDEST;
  wire [31:0]test_2_digest_strm_TKEEP;
  wire [0:0]test_2_digest_strm_TLAST;
  wire [2:2]test_2_digest_strm_TREADY;
  wire [31:0]test_2_digest_strm_TSTRB;
  wire test_2_digest_strm_TVALID;
  wire [255:0]test_3_digest_strm_TDATA;
  wire [2:0]test_3_digest_strm_TDEST;
  wire [31:0]test_3_digest_strm_TKEEP;
  wire [0:0]test_3_digest_strm_TLAST;
  wire [3:3]test_3_digest_strm_TREADY;
  wire [31:0]test_3_digest_strm_TSTRB;
  wire test_3_digest_strm_TVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  design_1_axi_mcdma_0_0 axi_mcdma_0
       (.axi_resetn(rst_ps8_0_100M_peripheral_aresetn),
        .m_axi_mm2s_araddr(axi_mcdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_mcdma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_mcdma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_mcdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_mcdma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_mcdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_mcdma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_aruser(axi_mcdma_0_M_AXI_MM2S_ARUSER),
        .m_axi_mm2s_arvalid(axi_mcdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_mcdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_mcdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_mcdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_mcdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_mcdma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_awaddr(axi_mcdma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_mcdma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_mcdma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_mcdma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_mcdma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_mcdma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_mcdma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awuser(axi_mcdma_0_M_AXI_S2MM_AWUSER),
        .m_axi_s2mm_awvalid(axi_mcdma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_mcdma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_mcdma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_mcdma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_mcdma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_mcdma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_mcdma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_mcdma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_mcdma_0_M_AXI_S2MM_WVALID),
        .m_axi_sg_araddr(axi_mcdma_0_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_mcdma_0_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_mcdma_0_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_mcdma_0_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_mcdma_0_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_mcdma_0_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_mcdma_0_M_AXI_SG_ARSIZE),
        .m_axi_sg_aruser(axi_mcdma_0_M_AXI_SG_ARUSER),
        .m_axi_sg_arvalid(axi_mcdma_0_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_mcdma_0_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_mcdma_0_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_mcdma_0_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_mcdma_0_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_mcdma_0_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_mcdma_0_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_mcdma_0_M_AXI_SG_AWSIZE),
        .m_axi_sg_awuser(axi_mcdma_0_M_AXI_SG_AWUSER),
        .m_axi_sg_awvalid(axi_mcdma_0_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_mcdma_0_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_mcdma_0_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_mcdma_0_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_mcdma_0_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_mcdma_0_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_mcdma_0_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_mcdma_0_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_mcdma_0_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_mcdma_0_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_mcdma_0_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_mcdma_0_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_mcdma_0_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_mcdma_0_M_AXI_SG_WVALID),
        .m_axis_mm2s_tdata(axi_mcdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tdest(axi_mcdma_0_M_AXIS_MM2S_TDEST),
        .m_axis_mm2s_tkeep(axi_mcdma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_mcdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_mcdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_mcdma_0_M_AXIS_MM2S_TVALID),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_lite_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_lite_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_smc_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_switch_1_M00_AXIS_TDATA),
        .s_axis_s2mm_tdest({1'b0,1'b0,axis_switch_1_M00_AXIS_TDEST}),
        .s_axis_s2mm_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tkeep(axis_switch_1_M00_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_switch_1_M00_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_switch_1_M00_AXIS_TREADY),
        .s_axis_s2mm_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_tvalid(axis_switch_1_M00_AXIS_TVALID));
  design_1_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_smc_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .M03_AXI_rready(axi_smc_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .M03_AXI_wready(axi_smc_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .M04_AXI_araddr(axi_smc_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_smc_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_smc_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_smc_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_smc_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_smc_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_smc_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_smc_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_smc_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_smc_M04_AXI_RDATA),
        .M04_AXI_rready(axi_smc_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_smc_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_smc_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_smc_M04_AXI_WDATA),
        .M04_AXI_wready(axi_smc_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_smc_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_smc_M04_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .S01_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S01_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S01_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S01_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S01_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S01_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S01_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S01_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S01_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S01_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S01_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .S01_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S01_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S01_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S01_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S01_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S01_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S01_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S01_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S01_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S01_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S01_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S01_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .S01_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S01_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S01_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S01_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S01_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S01_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S01_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S01_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S01_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S01_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S01_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S01_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S01_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S01_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S01_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S01_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn));
  design_1_axi_smc_1_0 axi_smc_1
       (.M00_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .M00_AXI_aruser(axi_smc_1_M00_AXI_ARUSER),
        .M00_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awuser(axi_smc_1_M00_AXI_AWUSER),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_1_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_smc_1_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_smc_1_M01_AXI_ARCACHE),
        .M01_AXI_arlen(axi_smc_1_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_smc_1_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_smc_1_M01_AXI_ARPROT),
        .M01_AXI_arqos(axi_smc_1_M01_AXI_ARQOS),
        .M01_AXI_arready(axi_smc_1_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_smc_1_M01_AXI_ARSIZE),
        .M01_AXI_aruser(axi_smc_1_M01_AXI_ARUSER),
        .M01_AXI_arvalid(axi_smc_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_1_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_smc_1_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_smc_1_M01_AXI_AWCACHE),
        .M01_AXI_awlen(axi_smc_1_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_smc_1_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_smc_1_M01_AXI_AWPROT),
        .M01_AXI_awqos(axi_smc_1_M01_AXI_AWQOS),
        .M01_AXI_awready(axi_smc_1_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_smc_1_M01_AXI_AWSIZE),
        .M01_AXI_awuser(axi_smc_1_M01_AXI_AWUSER),
        .M01_AXI_awvalid(axi_smc_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_1_M01_AXI_RDATA),
        .M01_AXI_rlast(axi_smc_1_M01_AXI_RLAST),
        .M01_AXI_rready(axi_smc_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_1_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_smc_1_M01_AXI_WLAST),
        .M01_AXI_wready(axi_smc_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_1_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_1_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_smc_1_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_smc_1_M02_AXI_ARCACHE),
        .M02_AXI_arlen(axi_smc_1_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_smc_1_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_smc_1_M02_AXI_ARPROT),
        .M02_AXI_arqos(axi_smc_1_M02_AXI_ARQOS),
        .M02_AXI_arready(axi_smc_1_M02_AXI_ARREADY),
        .M02_AXI_arsize(axi_smc_1_M02_AXI_ARSIZE),
        .M02_AXI_aruser(axi_smc_1_M02_AXI_ARUSER),
        .M02_AXI_arvalid(axi_smc_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_1_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_smc_1_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_smc_1_M02_AXI_AWCACHE),
        .M02_AXI_awlen(axi_smc_1_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_smc_1_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_smc_1_M02_AXI_AWPROT),
        .M02_AXI_awqos(axi_smc_1_M02_AXI_AWQOS),
        .M02_AXI_awready(axi_smc_1_M02_AXI_AWREADY),
        .M02_AXI_awsize(axi_smc_1_M02_AXI_AWSIZE),
        .M02_AXI_awuser(axi_smc_1_M02_AXI_AWUSER),
        .M02_AXI_awvalid(axi_smc_1_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_1_M02_AXI_RDATA),
        .M02_AXI_rlast(axi_smc_1_M02_AXI_RLAST),
        .M02_AXI_rready(axi_smc_1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_1_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_smc_1_M02_AXI_WLAST),
        .M02_AXI_wready(axi_smc_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_1_M02_AXI_WVALID),
        .S00_AXI_araddr(axi_mcdma_0_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(axi_mcdma_0_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(axi_mcdma_0_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(axi_mcdma_0_M_AXI_SG_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_mcdma_0_M_AXI_SG_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_mcdma_0_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(axi_mcdma_0_M_AXI_SG_ARSIZE),
        .S00_AXI_aruser(axi_mcdma_0_M_AXI_SG_ARUSER),
        .S00_AXI_arvalid(axi_mcdma_0_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(axi_mcdma_0_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(axi_mcdma_0_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(axi_mcdma_0_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(axi_mcdma_0_M_AXI_SG_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_mcdma_0_M_AXI_SG_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_mcdma_0_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(axi_mcdma_0_M_AXI_SG_AWSIZE),
        .S00_AXI_awuser(axi_mcdma_0_M_AXI_SG_AWUSER),
        .S00_AXI_awvalid(axi_mcdma_0_M_AXI_SG_AWVALID),
        .S00_AXI_bready(axi_mcdma_0_M_AXI_SG_BREADY),
        .S00_AXI_bresp(axi_mcdma_0_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(axi_mcdma_0_M_AXI_SG_BVALID),
        .S00_AXI_rdata(axi_mcdma_0_M_AXI_SG_RDATA),
        .S00_AXI_rlast(axi_mcdma_0_M_AXI_SG_RLAST),
        .S00_AXI_rready(axi_mcdma_0_M_AXI_SG_RREADY),
        .S00_AXI_rresp(axi_mcdma_0_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(axi_mcdma_0_M_AXI_SG_RVALID),
        .S00_AXI_wdata(axi_mcdma_0_M_AXI_SG_WDATA),
        .S00_AXI_wlast(axi_mcdma_0_M_AXI_SG_WLAST),
        .S00_AXI_wready(axi_mcdma_0_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(axi_mcdma_0_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(axi_mcdma_0_M_AXI_SG_WVALID),
        .S01_AXI_araddr(axi_mcdma_0_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_mcdma_0_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_mcdma_0_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_mcdma_0_M_AXI_MM2S_ARLEN),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot(axi_mcdma_0_M_AXI_MM2S_ARPROT),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arready(axi_mcdma_0_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_mcdma_0_M_AXI_MM2S_ARSIZE),
        .S01_AXI_aruser(axi_mcdma_0_M_AXI_MM2S_ARUSER),
        .S01_AXI_arvalid(axi_mcdma_0_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_mcdma_0_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_mcdma_0_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_mcdma_0_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_mcdma_0_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_mcdma_0_M_AXI_MM2S_RVALID),
        .S02_AXI_awaddr(axi_mcdma_0_M_AXI_S2MM_AWADDR),
        .S02_AXI_awburst(axi_mcdma_0_M_AXI_S2MM_AWBURST),
        .S02_AXI_awcache(axi_mcdma_0_M_AXI_S2MM_AWCACHE),
        .S02_AXI_awlen(axi_mcdma_0_M_AXI_S2MM_AWLEN),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot(axi_mcdma_0_M_AXI_S2MM_AWPROT),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awready(axi_mcdma_0_M_AXI_S2MM_AWREADY),
        .S02_AXI_awsize(axi_mcdma_0_M_AXI_S2MM_AWSIZE),
        .S02_AXI_awuser(axi_mcdma_0_M_AXI_S2MM_AWUSER),
        .S02_AXI_awvalid(axi_mcdma_0_M_AXI_S2MM_AWVALID),
        .S02_AXI_bready(axi_mcdma_0_M_AXI_S2MM_BREADY),
        .S02_AXI_bresp(axi_mcdma_0_M_AXI_S2MM_BRESP),
        .S02_AXI_bvalid(axi_mcdma_0_M_AXI_S2MM_BVALID),
        .S02_AXI_wdata(axi_mcdma_0_M_AXI_S2MM_WDATA),
        .S02_AXI_wlast(axi_mcdma_0_M_AXI_S2MM_WLAST),
        .S02_AXI_wready(axi_mcdma_0_M_AXI_S2MM_WREADY),
        .S02_AXI_wstrb(axi_mcdma_0_M_AXI_S2MM_WSTRB),
        .S02_AXI_wvalid(axi_mcdma_0_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn));
  design_1_axis_switch_0_0 axis_switch_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .m_axis_tdata({axis_switch_0_M03_AXIS_TDATA,axis_switch_0_M02_AXIS_TDATA,axis_switch_0_M01_AXIS_TDATA,axis_switch_0_M00_AXIS_TDATA}),
        .m_axis_tdest({axis_switch_0_M03_AXIS_TDEST,axis_switch_0_M02_AXIS_TDEST,axis_switch_0_M01_AXIS_TDEST,axis_switch_0_M00_AXIS_TDEST}),
        .m_axis_tkeep({axis_switch_0_M03_AXIS_TKEEP,axis_switch_0_M02_AXIS_TKEEP,axis_switch_0_M01_AXIS_TKEEP,axis_switch_0_M00_AXIS_TKEEP}),
        .m_axis_tlast({axis_switch_0_M03_AXIS_TLAST,axis_switch_0_M02_AXIS_TLAST,axis_switch_0_M01_AXIS_TLAST,axis_switch_0_M00_AXIS_TLAST}),
        .m_axis_tready({axis_switch_0_M03_AXIS_TREADY,axis_switch_0_M02_AXIS_TREADY,axis_switch_0_M01_AXIS_TREADY,axis_switch_0_M00_AXIS_TREADY}),
        .m_axis_tstrb({axis_switch_0_M03_AXIS_TSTRB,axis_switch_0_M02_AXIS_TSTRB,axis_switch_0_M01_AXIS_TSTRB,axis_switch_0_M00_AXIS_TSTRB}),
        .m_axis_tvalid({axis_switch_0_M03_AXIS_TVALID,axis_switch_0_M02_AXIS_TVALID,axis_switch_0_M01_AXIS_TVALID,axis_switch_0_M00_AXIS_TVALID}),
        .s_axis_tdata(axi_mcdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_tdest(axi_mcdma_0_M_AXIS_MM2S_TDEST[1:0]),
        .s_axis_tkeep(axi_mcdma_0_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_mcdma_0_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_mcdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tvalid(axi_mcdma_0_M_AXIS_MM2S_TVALID));
  design_1_axis_switch_1_0 axis_switch_1
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .m_axis_tdata(axis_switch_1_M00_AXIS_TDATA),
        .m_axis_tdest(axis_switch_1_M00_AXIS_TDEST),
        .m_axis_tkeep(axis_switch_1_M00_AXIS_TKEEP),
        .m_axis_tlast(axis_switch_1_M00_AXIS_TLAST),
        .m_axis_tready(axis_switch_1_M00_AXIS_TREADY),
        .m_axis_tvalid(axis_switch_1_M00_AXIS_TVALID),
        .s_axis_tdata({test_3_digest_strm_TDATA,test_2_digest_strm_TDATA,test_1_digest_strm_TDATA,test_0_digest_strm_TDATA}),
        .s_axis_tdest({test_3_digest_strm_TDEST[1:0],test_2_digest_strm_TDEST[1:0],test_1_digest_strm_TDEST[1:0],test_0_digest_strm_TDEST[1:0]}),
        .s_axis_tkeep({test_3_digest_strm_TKEEP,test_2_digest_strm_TKEEP,test_1_digest_strm_TKEEP,test_0_digest_strm_TKEEP}),
        .s_axis_tlast({test_3_digest_strm_TLAST,test_2_digest_strm_TLAST,test_1_digest_strm_TLAST,test_0_digest_strm_TLAST}),
        .s_axis_tready({test_3_digest_strm_TREADY,test_2_digest_strm_TREADY,test_1_digest_strm_TREADY,test_0_digest_strm_TREADY}),
        .s_axis_tstrb({test_3_digest_strm_TSTRB,test_2_digest_strm_TSTRB,test_1_digest_strm_TSTRB,test_0_digest_strm_TSTRB}),
        .s_axis_tvalid({test_3_digest_strm_TVALID,test_2_digest_strm_TVALID,test_1_digest_strm_TVALID,test_0_digest_strm_TVALID}),
        .s_req_suppress({1'b0,1'b0,1'b0,1'b0}));
  design_1_rst_ps8_0_100M_0 rst_ps8_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_test_0_0 test_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_100M_peripheral_aresetn),
        .digest_strm_TDATA(test_0_digest_strm_TDATA),
        .digest_strm_TDEST(test_0_digest_strm_TDEST),
        .digest_strm_TKEEP(test_0_digest_strm_TKEEP),
        .digest_strm_TLAST(test_0_digest_strm_TLAST),
        .digest_strm_TREADY(test_0_digest_strm_TREADY),
        .digest_strm_TSTRB(test_0_digest_strm_TSTRB),
        .digest_strm_TVALID(test_0_digest_strm_TVALID),
        .msg_strm_TDATA(axis_switch_0_M00_AXIS_TDATA),
        .msg_strm_TDEST({1'b0,axis_switch_0_M00_AXIS_TDEST}),
        .msg_strm_TKEEP(axis_switch_0_M00_AXIS_TKEEP),
        .msg_strm_TLAST(axis_switch_0_M00_AXIS_TLAST),
        .msg_strm_TREADY(axis_switch_0_M00_AXIS_TREADY),
        .msg_strm_TSTRB(axis_switch_0_M00_AXIS_TSTRB),
        .msg_strm_TVALID(axis_switch_0_M00_AXIS_TVALID),
        .s_axi_control_ARADDR(axi_smc_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(axi_smc_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(axi_smc_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(axi_smc_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(axi_smc_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(axi_smc_M01_AXI_AWVALID),
        .s_axi_control_BREADY(axi_smc_M01_AXI_BREADY),
        .s_axi_control_BRESP(axi_smc_M01_AXI_BRESP),
        .s_axi_control_BVALID(axi_smc_M01_AXI_BVALID),
        .s_axi_control_RDATA(axi_smc_M01_AXI_RDATA),
        .s_axi_control_RREADY(axi_smc_M01_AXI_RREADY),
        .s_axi_control_RRESP(axi_smc_M01_AXI_RRESP),
        .s_axi_control_RVALID(axi_smc_M01_AXI_RVALID),
        .s_axi_control_WDATA(axi_smc_M01_AXI_WDATA),
        .s_axi_control_WREADY(axi_smc_M01_AXI_WREADY),
        .s_axi_control_WSTRB(axi_smc_M01_AXI_WSTRB),
        .s_axi_control_WVALID(axi_smc_M01_AXI_WVALID));
  design_1_test_1_0 test_1
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_100M_peripheral_aresetn),
        .digest_strm_TDATA(test_1_digest_strm_TDATA),
        .digest_strm_TDEST(test_1_digest_strm_TDEST),
        .digest_strm_TKEEP(test_1_digest_strm_TKEEP),
        .digest_strm_TLAST(test_1_digest_strm_TLAST),
        .digest_strm_TREADY(test_1_digest_strm_TREADY),
        .digest_strm_TSTRB(test_1_digest_strm_TSTRB),
        .digest_strm_TVALID(test_1_digest_strm_TVALID),
        .msg_strm_TDATA(axis_switch_0_M01_AXIS_TDATA),
        .msg_strm_TDEST({1'b0,axis_switch_0_M01_AXIS_TDEST}),
        .msg_strm_TKEEP(axis_switch_0_M01_AXIS_TKEEP),
        .msg_strm_TLAST(axis_switch_0_M01_AXIS_TLAST),
        .msg_strm_TREADY(axis_switch_0_M01_AXIS_TREADY),
        .msg_strm_TSTRB(axis_switch_0_M01_AXIS_TSTRB),
        .msg_strm_TVALID(axis_switch_0_M01_AXIS_TVALID),
        .s_axi_control_ARADDR(axi_smc_M02_AXI_ARADDR),
        .s_axi_control_ARREADY(axi_smc_M02_AXI_ARREADY),
        .s_axi_control_ARVALID(axi_smc_M02_AXI_ARVALID),
        .s_axi_control_AWADDR(axi_smc_M02_AXI_AWADDR),
        .s_axi_control_AWREADY(axi_smc_M02_AXI_AWREADY),
        .s_axi_control_AWVALID(axi_smc_M02_AXI_AWVALID),
        .s_axi_control_BREADY(axi_smc_M02_AXI_BREADY),
        .s_axi_control_BRESP(axi_smc_M02_AXI_BRESP),
        .s_axi_control_BVALID(axi_smc_M02_AXI_BVALID),
        .s_axi_control_RDATA(axi_smc_M02_AXI_RDATA),
        .s_axi_control_RREADY(axi_smc_M02_AXI_RREADY),
        .s_axi_control_RRESP(axi_smc_M02_AXI_RRESP),
        .s_axi_control_RVALID(axi_smc_M02_AXI_RVALID),
        .s_axi_control_WDATA(axi_smc_M02_AXI_WDATA),
        .s_axi_control_WREADY(axi_smc_M02_AXI_WREADY),
        .s_axi_control_WSTRB(axi_smc_M02_AXI_WSTRB),
        .s_axi_control_WVALID(axi_smc_M02_AXI_WVALID));
  design_1_test_2_0 test_2
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_100M_peripheral_aresetn),
        .digest_strm_TDATA(test_2_digest_strm_TDATA),
        .digest_strm_TDEST(test_2_digest_strm_TDEST),
        .digest_strm_TKEEP(test_2_digest_strm_TKEEP),
        .digest_strm_TLAST(test_2_digest_strm_TLAST),
        .digest_strm_TREADY(test_2_digest_strm_TREADY),
        .digest_strm_TSTRB(test_2_digest_strm_TSTRB),
        .digest_strm_TVALID(test_2_digest_strm_TVALID),
        .msg_strm_TDATA(axis_switch_0_M02_AXIS_TDATA),
        .msg_strm_TDEST({1'b0,axis_switch_0_M02_AXIS_TDEST}),
        .msg_strm_TKEEP(axis_switch_0_M02_AXIS_TKEEP),
        .msg_strm_TLAST(axis_switch_0_M02_AXIS_TLAST),
        .msg_strm_TREADY(axis_switch_0_M02_AXIS_TREADY),
        .msg_strm_TSTRB(axis_switch_0_M02_AXIS_TSTRB),
        .msg_strm_TVALID(axis_switch_0_M02_AXIS_TVALID),
        .s_axi_control_ARADDR(axi_smc_M03_AXI_ARADDR),
        .s_axi_control_ARREADY(axi_smc_M03_AXI_ARREADY),
        .s_axi_control_ARVALID(axi_smc_M03_AXI_ARVALID),
        .s_axi_control_AWADDR(axi_smc_M03_AXI_AWADDR),
        .s_axi_control_AWREADY(axi_smc_M03_AXI_AWREADY),
        .s_axi_control_AWVALID(axi_smc_M03_AXI_AWVALID),
        .s_axi_control_BREADY(axi_smc_M03_AXI_BREADY),
        .s_axi_control_BRESP(axi_smc_M03_AXI_BRESP),
        .s_axi_control_BVALID(axi_smc_M03_AXI_BVALID),
        .s_axi_control_RDATA(axi_smc_M03_AXI_RDATA),
        .s_axi_control_RREADY(axi_smc_M03_AXI_RREADY),
        .s_axi_control_RRESP(axi_smc_M03_AXI_RRESP),
        .s_axi_control_RVALID(axi_smc_M03_AXI_RVALID),
        .s_axi_control_WDATA(axi_smc_M03_AXI_WDATA),
        .s_axi_control_WREADY(axi_smc_M03_AXI_WREADY),
        .s_axi_control_WSTRB(axi_smc_M03_AXI_WSTRB),
        .s_axi_control_WVALID(axi_smc_M03_AXI_WVALID));
  design_1_test_3_0 test_3
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_100M_peripheral_aresetn),
        .digest_strm_TDATA(test_3_digest_strm_TDATA),
        .digest_strm_TDEST(test_3_digest_strm_TDEST),
        .digest_strm_TKEEP(test_3_digest_strm_TKEEP),
        .digest_strm_TLAST(test_3_digest_strm_TLAST),
        .digest_strm_TREADY(test_3_digest_strm_TREADY),
        .digest_strm_TSTRB(test_3_digest_strm_TSTRB),
        .digest_strm_TVALID(test_3_digest_strm_TVALID),
        .msg_strm_TDATA(axis_switch_0_M03_AXIS_TDATA),
        .msg_strm_TDEST({1'b0,axis_switch_0_M03_AXIS_TDEST}),
        .msg_strm_TKEEP(axis_switch_0_M03_AXIS_TKEEP),
        .msg_strm_TLAST(axis_switch_0_M03_AXIS_TLAST),
        .msg_strm_TREADY(axis_switch_0_M03_AXIS_TREADY),
        .msg_strm_TSTRB(axis_switch_0_M03_AXIS_TSTRB),
        .msg_strm_TVALID(axis_switch_0_M03_AXIS_TVALID),
        .s_axi_control_ARADDR(axi_smc_M04_AXI_ARADDR),
        .s_axi_control_ARREADY(axi_smc_M04_AXI_ARREADY),
        .s_axi_control_ARVALID(axi_smc_M04_AXI_ARVALID),
        .s_axi_control_AWADDR(axi_smc_M04_AXI_AWADDR),
        .s_axi_control_AWREADY(axi_smc_M04_AXI_AWREADY),
        .s_axi_control_AWVALID(axi_smc_M04_AXI_AWVALID),
        .s_axi_control_BREADY(axi_smc_M04_AXI_BREADY),
        .s_axi_control_BRESP(axi_smc_M04_AXI_BRESP),
        .s_axi_control_BVALID(axi_smc_M04_AXI_BVALID),
        .s_axi_control_RDATA(axi_smc_M04_AXI_RDATA),
        .s_axi_control_RREADY(axi_smc_M04_AXI_RREADY),
        .s_axi_control_RRESP(axi_smc_M04_AXI_RRESP),
        .s_axi_control_RVALID(axi_smc_M04_AXI_RVALID),
        .s_axi_control_WDATA(axi_smc_M04_AXI_WDATA),
        .s_axi_control_WREADY(axi_smc_M04_AXI_WREADY),
        .s_axi_control_WSTRB(axi_smc_M04_AXI_WSTRB),
        .s_axi_control_WVALID(axi_smc_M04_AXI_WVALID));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr(axi_smc_1_M00_AXI_ARADDR),
        .saxigp0_arburst(axi_smc_1_M00_AXI_ARBURST),
        .saxigp0_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen(axi_smc_1_M00_AXI_ARLEN),
        .saxigp0_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .saxigp0_arprot(axi_smc_1_M00_AXI_ARPROT),
        .saxigp0_arqos(axi_smc_1_M00_AXI_ARQOS),
        .saxigp0_arready(axi_smc_1_M00_AXI_ARREADY),
        .saxigp0_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .saxigp0_aruser(axi_smc_1_M00_AXI_ARUSER[0]),
        .saxigp0_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .saxigp0_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .saxigp0_awburst(axi_smc_1_M00_AXI_AWBURST),
        .saxigp0_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen(axi_smc_1_M00_AXI_AWLEN),
        .saxigp0_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .saxigp0_awprot(axi_smc_1_M00_AXI_AWPROT),
        .saxigp0_awqos(axi_smc_1_M00_AXI_AWQOS),
        .saxigp0_awready(axi_smc_1_M00_AXI_AWREADY),
        .saxigp0_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .saxigp0_awuser(axi_smc_1_M00_AXI_AWUSER[0]),
        .saxigp0_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .saxigp0_bready(axi_smc_1_M00_AXI_BREADY),
        .saxigp0_bresp(axi_smc_1_M00_AXI_BRESP),
        .saxigp0_bvalid(axi_smc_1_M00_AXI_BVALID),
        .saxigp0_rdata(axi_smc_1_M00_AXI_RDATA),
        .saxigp0_rlast(axi_smc_1_M00_AXI_RLAST),
        .saxigp0_rready(axi_smc_1_M00_AXI_RREADY),
        .saxigp0_rresp(axi_smc_1_M00_AXI_RRESP),
        .saxigp0_rvalid(axi_smc_1_M00_AXI_RVALID),
        .saxigp0_wdata(axi_smc_1_M00_AXI_WDATA),
        .saxigp0_wlast(axi_smc_1_M00_AXI_WLAST),
        .saxigp0_wready(axi_smc_1_M00_AXI_WREADY),
        .saxigp0_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .saxigp0_wvalid(axi_smc_1_M00_AXI_WVALID),
        .saxigp2_araddr(axi_smc_1_M01_AXI_ARADDR),
        .saxigp2_arburst(axi_smc_1_M01_AXI_ARBURST),
        .saxigp2_arcache(axi_smc_1_M01_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(axi_smc_1_M01_AXI_ARLEN),
        .saxigp2_arlock(axi_smc_1_M01_AXI_ARLOCK),
        .saxigp2_arprot(axi_smc_1_M01_AXI_ARPROT),
        .saxigp2_arqos(axi_smc_1_M01_AXI_ARQOS),
        .saxigp2_arready(axi_smc_1_M01_AXI_ARREADY),
        .saxigp2_arsize(axi_smc_1_M01_AXI_ARSIZE),
        .saxigp2_aruser(axi_smc_1_M01_AXI_ARUSER[0]),
        .saxigp2_arvalid(axi_smc_1_M01_AXI_ARVALID),
        .saxigp2_awaddr(axi_smc_1_M01_AXI_AWADDR),
        .saxigp2_awburst(axi_smc_1_M01_AXI_AWBURST),
        .saxigp2_awcache(axi_smc_1_M01_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(axi_smc_1_M01_AXI_AWLEN),
        .saxigp2_awlock(axi_smc_1_M01_AXI_AWLOCK),
        .saxigp2_awprot(axi_smc_1_M01_AXI_AWPROT),
        .saxigp2_awqos(axi_smc_1_M01_AXI_AWQOS),
        .saxigp2_awready(axi_smc_1_M01_AXI_AWREADY),
        .saxigp2_awsize(axi_smc_1_M01_AXI_AWSIZE),
        .saxigp2_awuser(axi_smc_1_M01_AXI_AWUSER[0]),
        .saxigp2_awvalid(axi_smc_1_M01_AXI_AWVALID),
        .saxigp2_bready(axi_smc_1_M01_AXI_BREADY),
        .saxigp2_bresp(axi_smc_1_M01_AXI_BRESP),
        .saxigp2_bvalid(axi_smc_1_M01_AXI_BVALID),
        .saxigp2_rdata(axi_smc_1_M01_AXI_RDATA),
        .saxigp2_rlast(axi_smc_1_M01_AXI_RLAST),
        .saxigp2_rready(axi_smc_1_M01_AXI_RREADY),
        .saxigp2_rresp(axi_smc_1_M01_AXI_RRESP),
        .saxigp2_rvalid(axi_smc_1_M01_AXI_RVALID),
        .saxigp2_wdata(axi_smc_1_M01_AXI_WDATA),
        .saxigp2_wlast(axi_smc_1_M01_AXI_WLAST),
        .saxigp2_wready(axi_smc_1_M01_AXI_WREADY),
        .saxigp2_wstrb(axi_smc_1_M01_AXI_WSTRB),
        .saxigp2_wvalid(axi_smc_1_M01_AXI_WVALID),
        .saxigp3_araddr(axi_smc_1_M02_AXI_ARADDR),
        .saxigp3_arburst(axi_smc_1_M02_AXI_ARBURST),
        .saxigp3_arcache(axi_smc_1_M02_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_arlen(axi_smc_1_M02_AXI_ARLEN),
        .saxigp3_arlock(axi_smc_1_M02_AXI_ARLOCK),
        .saxigp3_arprot(axi_smc_1_M02_AXI_ARPROT),
        .saxigp3_arqos(axi_smc_1_M02_AXI_ARQOS),
        .saxigp3_arready(axi_smc_1_M02_AXI_ARREADY),
        .saxigp3_arsize(axi_smc_1_M02_AXI_ARSIZE),
        .saxigp3_aruser(axi_smc_1_M02_AXI_ARUSER[0]),
        .saxigp3_arvalid(axi_smc_1_M02_AXI_ARVALID),
        .saxigp3_awaddr(axi_smc_1_M02_AXI_AWADDR),
        .saxigp3_awburst(axi_smc_1_M02_AXI_AWBURST),
        .saxigp3_awcache(axi_smc_1_M02_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlen(axi_smc_1_M02_AXI_AWLEN),
        .saxigp3_awlock(axi_smc_1_M02_AXI_AWLOCK),
        .saxigp3_awprot(axi_smc_1_M02_AXI_AWPROT),
        .saxigp3_awqos(axi_smc_1_M02_AXI_AWQOS),
        .saxigp3_awready(axi_smc_1_M02_AXI_AWREADY),
        .saxigp3_awsize(axi_smc_1_M02_AXI_AWSIZE),
        .saxigp3_awuser(axi_smc_1_M02_AXI_AWUSER[0]),
        .saxigp3_awvalid(axi_smc_1_M02_AXI_AWVALID),
        .saxigp3_bready(axi_smc_1_M02_AXI_BREADY),
        .saxigp3_bresp(axi_smc_1_M02_AXI_BRESP),
        .saxigp3_bvalid(axi_smc_1_M02_AXI_BVALID),
        .saxigp3_rdata(axi_smc_1_M02_AXI_RDATA),
        .saxigp3_rlast(axi_smc_1_M02_AXI_RLAST),
        .saxigp3_rready(axi_smc_1_M02_AXI_RREADY),
        .saxigp3_rresp(axi_smc_1_M02_AXI_RRESP),
        .saxigp3_rvalid(axi_smc_1_M02_AXI_RVALID),
        .saxigp3_wdata(axi_smc_1_M02_AXI_WDATA),
        .saxigp3_wlast(axi_smc_1_M02_AXI_WLAST),
        .saxigp3_wready(axi_smc_1_M02_AXI_WREADY),
        .saxigp3_wstrb(axi_smc_1_M02_AXI_WSTRB),
        .saxigp3_wvalid(axi_smc_1_M02_AXI_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihpc0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
