// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_digest_strm_TDATA "../tv/rtldatafile/rtl.test.autotvout_digest_strm_V_data_V.dat"
`define EGRESS_STATUS_digest_strm_TDATA "../tv/stream_size/stream_egress_status_digest_strm_V_data_V.dat"
`define TV_OUT_digest_strm_TKEEP "../tv/rtldatafile/rtl.test.autotvout_digest_strm_V_keep_V.dat"
`define EGRESS_STATUS_digest_strm_TKEEP "../tv/stream_size/stream_egress_status_digest_strm_V_keep_V.dat"
`define TV_OUT_digest_strm_TSTRB "../tv/rtldatafile/rtl.test.autotvout_digest_strm_V_strb_V.dat"
`define EGRESS_STATUS_digest_strm_TSTRB "../tv/stream_size/stream_egress_status_digest_strm_V_strb_V.dat"
`define TV_OUT_digest_strm_TLAST "../tv/rtldatafile/rtl.test.autotvout_digest_strm_V_last_V.dat"
`define EGRESS_STATUS_digest_strm_TLAST "../tv/stream_size/stream_egress_status_digest_strm_V_last_V.dat"
`define TV_OUT_digest_strm_TDEST "../tv/rtldatafile/rtl.test.autotvout_digest_strm_V_dest_V.dat"
`define EGRESS_STATUS_digest_strm_TDEST "../tv/stream_size/stream_egress_status_digest_strm_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 300

module AESL_axi_s_digest_strm (
    input clk,
    input reset,
    input [256 - 1:0] TRAN_digest_strm_TDATA,
    input [32 - 1:0] TRAN_digest_strm_TKEEP,
    input [32 - 1:0] TRAN_digest_strm_TSTRB,
    input TRAN_digest_strm_TLAST,
    input [3 - 1:0] TRAN_digest_strm_TDEST,
    input TRAN_digest_strm_TVALID,
    output TRAN_digest_strm_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_digest_strm_TVALID_temp;
    wire digest_strm_TDATA_full;
    wire digest_strm_TDATA_empty;
    reg digest_strm_TDATA_write_en;
    reg [256 - 1:0] digest_strm_TDATA_write_data;
    reg digest_strm_TDATA_read_en;
    wire [256 - 1:0] digest_strm_TDATA_read_data;
    
    fifo #(2, 256) fifo_digest_strm_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(digest_strm_TDATA_write_en),
        .write_data(digest_strm_TDATA_write_data),
        .read_clock(clk),
        .read_en(digest_strm_TDATA_read_en),
        .read_data(digest_strm_TDATA_read_data),
        .full(digest_strm_TDATA_full),
        .empty(digest_strm_TDATA_empty));
    
    always @ (*) begin
        digest_strm_TDATA_write_en <= TRAN_digest_strm_TVALID;
        digest_strm_TDATA_write_data <= TRAN_digest_strm_TDATA;
        digest_strm_TDATA_read_en <= 0;
    end
    wire digest_strm_TKEEP_full;
    wire digest_strm_TKEEP_empty;
    reg digest_strm_TKEEP_write_en;
    reg [32 - 1:0] digest_strm_TKEEP_write_data;
    reg digest_strm_TKEEP_read_en;
    wire [32 - 1:0] digest_strm_TKEEP_read_data;
    
    fifo #(2, 32) fifo_digest_strm_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(digest_strm_TKEEP_write_en),
        .write_data(digest_strm_TKEEP_write_data),
        .read_clock(clk),
        .read_en(digest_strm_TKEEP_read_en),
        .read_data(digest_strm_TKEEP_read_data),
        .full(digest_strm_TKEEP_full),
        .empty(digest_strm_TKEEP_empty));
    
    always @ (*) begin
        digest_strm_TKEEP_write_en <= TRAN_digest_strm_TVALID;
        digest_strm_TKEEP_write_data <= TRAN_digest_strm_TKEEP;
        digest_strm_TKEEP_read_en <= 0;
    end
    wire digest_strm_TSTRB_full;
    wire digest_strm_TSTRB_empty;
    reg digest_strm_TSTRB_write_en;
    reg [32 - 1:0] digest_strm_TSTRB_write_data;
    reg digest_strm_TSTRB_read_en;
    wire [32 - 1:0] digest_strm_TSTRB_read_data;
    
    fifo #(2, 32) fifo_digest_strm_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(digest_strm_TSTRB_write_en),
        .write_data(digest_strm_TSTRB_write_data),
        .read_clock(clk),
        .read_en(digest_strm_TSTRB_read_en),
        .read_data(digest_strm_TSTRB_read_data),
        .full(digest_strm_TSTRB_full),
        .empty(digest_strm_TSTRB_empty));
    
    always @ (*) begin
        digest_strm_TSTRB_write_en <= TRAN_digest_strm_TVALID;
        digest_strm_TSTRB_write_data <= TRAN_digest_strm_TSTRB;
        digest_strm_TSTRB_read_en <= 0;
    end
    wire digest_strm_TLAST_full;
    wire digest_strm_TLAST_empty;
    reg digest_strm_TLAST_write_en;
    reg [1 - 1:0] digest_strm_TLAST_write_data;
    reg digest_strm_TLAST_read_en;
    wire [1 - 1:0] digest_strm_TLAST_read_data;
    
    fifo #(2, 1) fifo_digest_strm_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(digest_strm_TLAST_write_en),
        .write_data(digest_strm_TLAST_write_data),
        .read_clock(clk),
        .read_en(digest_strm_TLAST_read_en),
        .read_data(digest_strm_TLAST_read_data),
        .full(digest_strm_TLAST_full),
        .empty(digest_strm_TLAST_empty));
    
    always @ (*) begin
        digest_strm_TLAST_write_en <= TRAN_digest_strm_TVALID;
        digest_strm_TLAST_write_data <= TRAN_digest_strm_TLAST;
        digest_strm_TLAST_read_en <= 0;
    end
    wire digest_strm_TDEST_full;
    wire digest_strm_TDEST_empty;
    reg digest_strm_TDEST_write_en;
    reg [3 - 1:0] digest_strm_TDEST_write_data;
    reg digest_strm_TDEST_read_en;
    wire [3 - 1:0] digest_strm_TDEST_read_data;
    
    fifo #(2, 3) fifo_digest_strm_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(digest_strm_TDEST_write_en),
        .write_data(digest_strm_TDEST_write_data),
        .read_clock(clk),
        .read_en(digest_strm_TDEST_read_en),
        .read_data(digest_strm_TDEST_read_data),
        .full(digest_strm_TDEST_full),
        .empty(digest_strm_TDEST_empty));
    
    always @ (*) begin
        digest_strm_TDEST_write_en <= TRAN_digest_strm_TVALID;
        digest_strm_TDEST_write_data <= TRAN_digest_strm_TDEST;
        digest_strm_TDEST_read_en <= 0;
    end
    assign TRAN_digest_strm_TVALID = TRAN_digest_strm_TVALID_temp;

    
    assign TRAN_digest_strm_TREADY = ~(digest_strm_TDATA_full || digest_strm_TKEEP_full || digest_strm_TSTRB_full || digest_strm_TLAST_full || digest_strm_TDEST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [535:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [535:0] rm_0x(input [535:0] token);
        reg [535:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_digest_strm_TDATA;
    
    assign transaction = transaction_save_digest_strm_TDATA;
    
    initial begin : AXI_stream_receiver_digest_strm_TDATA
        integer fp;
        reg [256 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_digest_strm_TDATA = 0;
        fifo_digest_strm_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_digest_strm_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_digest_strm_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_digest_strm_TDATA);
                while (~fifo_digest_strm_TDATA.empty) begin
                    fifo_digest_strm_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_digest_strm_TDATA = transaction_save_digest_strm_TDATA + 1;
                fifo_digest_strm_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_digest_strm_TKEEP;
    
    initial begin : AXI_stream_receiver_digest_strm_TKEEP
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_digest_strm_TKEEP = 0;
        fifo_digest_strm_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_digest_strm_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_digest_strm_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_digest_strm_TKEEP);
                while (~fifo_digest_strm_TKEEP.empty) begin
                    fifo_digest_strm_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_digest_strm_TKEEP = transaction_save_digest_strm_TKEEP + 1;
                fifo_digest_strm_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_digest_strm_TSTRB;
    
    initial begin : AXI_stream_receiver_digest_strm_TSTRB
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_digest_strm_TSTRB = 0;
        fifo_digest_strm_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_digest_strm_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_digest_strm_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_digest_strm_TSTRB);
                while (~fifo_digest_strm_TSTRB.empty) begin
                    fifo_digest_strm_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_digest_strm_TSTRB = transaction_save_digest_strm_TSTRB + 1;
                fifo_digest_strm_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_digest_strm_TLAST;
    
    initial begin : AXI_stream_receiver_digest_strm_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_digest_strm_TLAST = 0;
        fifo_digest_strm_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_digest_strm_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_digest_strm_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_digest_strm_TLAST);
                while (~fifo_digest_strm_TLAST.empty) begin
                    fifo_digest_strm_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_digest_strm_TLAST = transaction_save_digest_strm_TLAST + 1;
                fifo_digest_strm_TLAST.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_digest_strm_TDEST;
    
    initial begin : AXI_stream_receiver_digest_strm_TDEST
        integer fp;
        reg [3 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_digest_strm_TDEST = 0;
        fifo_digest_strm_TDEST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_digest_strm_TDEST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_digest_strm_TDEST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_digest_strm_TDEST);
                while (~fifo_digest_strm_TDEST.empty) begin
                    fifo_digest_strm_TDEST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_digest_strm_TDEST = transaction_save_digest_strm_TDEST + 1;
                fifo_digest_strm_TDEST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
