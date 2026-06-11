//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed Jun 10 15:32:24 2026
//Host        : nileshnadekar running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    digest_strm_tdata,
    digest_strm_tdest,
    digest_strm_tkeep,
    digest_strm_tlast,
    digest_strm_tready,
    digest_strm_tstrb,
    digest_strm_tvalid,
    interrupt,
    msg_strm_tdata,
    msg_strm_tdest,
    msg_strm_tkeep,
    msg_strm_tlast,
    msg_strm_tready,
    msg_strm_tstrb,
    msg_strm_tvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid);
  input ap_clk;
  input ap_rst_n;
  output [255:0]digest_strm_tdata;
  output [2:0]digest_strm_tdest;
  output [31:0]digest_strm_tkeep;
  output [0:0]digest_strm_tlast;
  input digest_strm_tready;
  output [31:0]digest_strm_tstrb;
  output digest_strm_tvalid;
  output interrupt;
  input [63:0]msg_strm_tdata;
  input [2:0]msg_strm_tdest;
  input [7:0]msg_strm_tkeep;
  input [0:0]msg_strm_tlast;
  output msg_strm_tready;
  input [7:0]msg_strm_tstrb;
  input msg_strm_tvalid;
  input [5:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [5:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [255:0]digest_strm_tdata;
  wire [2:0]digest_strm_tdest;
  wire [31:0]digest_strm_tkeep;
  wire [0:0]digest_strm_tlast;
  wire digest_strm_tready;
  wire [31:0]digest_strm_tstrb;
  wire digest_strm_tvalid;
  wire interrupt;
  wire [63:0]msg_strm_tdata;
  wire [2:0]msg_strm_tdest;
  wire [7:0]msg_strm_tkeep;
  wire [0:0]msg_strm_tlast;
  wire msg_strm_tready;
  wire [7:0]msg_strm_tstrb;
  wire msg_strm_tvalid;
  wire [5:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [5:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .digest_strm_tdata(digest_strm_tdata),
        .digest_strm_tdest(digest_strm_tdest),
        .digest_strm_tkeep(digest_strm_tkeep),
        .digest_strm_tlast(digest_strm_tlast),
        .digest_strm_tready(digest_strm_tready),
        .digest_strm_tstrb(digest_strm_tstrb),
        .digest_strm_tvalid(digest_strm_tvalid),
        .interrupt(interrupt),
        .msg_strm_tdata(msg_strm_tdata),
        .msg_strm_tdest(msg_strm_tdest),
        .msg_strm_tkeep(msg_strm_tkeep),
        .msg_strm_tlast(msg_strm_tlast),
        .msg_strm_tready(msg_strm_tready),
        .msg_strm_tstrb(msg_strm_tstrb),
        .msg_strm_tvalid(msg_strm_tvalid),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid));
endmodule
