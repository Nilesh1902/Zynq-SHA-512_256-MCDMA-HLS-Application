// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_msg_strm_TDATA "../tv/cdatafile/c.test.autotvin_msg_strm_V_data_V.dat"
`define INGRESS_STATUS_msg_strm_TDATA "../tv/stream_size/stream_ingress_status_msg_strm_V_data_V.dat"
`define TV_IN_msg_strm_TKEEP "../tv/cdatafile/c.test.autotvin_msg_strm_V_keep_V.dat"
`define INGRESS_STATUS_msg_strm_TKEEP "../tv/stream_size/stream_ingress_status_msg_strm_V_keep_V.dat"
`define TV_IN_msg_strm_TSTRB "../tv/cdatafile/c.test.autotvin_msg_strm_V_strb_V.dat"
`define INGRESS_STATUS_msg_strm_TSTRB "../tv/stream_size/stream_ingress_status_msg_strm_V_strb_V.dat"
`define TV_IN_msg_strm_TLAST "../tv/cdatafile/c.test.autotvin_msg_strm_V_last_V.dat"
`define INGRESS_STATUS_msg_strm_TLAST "../tv/stream_size/stream_ingress_status_msg_strm_V_last_V.dat"
`define TV_IN_msg_strm_TDEST "../tv/cdatafile/c.test.autotvin_msg_strm_V_dest_V.dat"
`define INGRESS_STATUS_msg_strm_TDEST "../tv/stream_size/stream_ingress_status_msg_strm_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 300

module AESL_axi_s_msg_strm (
    input clk,
    input reset,
    output [64 - 1:0] TRAN_msg_strm_TDATA,
    output [8 - 1:0] TRAN_msg_strm_TKEEP,
    output [8 - 1:0] TRAN_msg_strm_TSTRB,
    output TRAN_msg_strm_TLAST,
    output [3 - 1:0] TRAN_msg_strm_TDEST,
    output TRAN_msg_strm_TVALID,
    input TRAN_msg_strm_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_msg_strm_TVALID_temp;
    wire msg_strm_TDATA_full;
    wire msg_strm_TDATA_empty;
    reg msg_strm_TDATA_write_en;
    reg [64 - 1:0] msg_strm_TDATA_write_data;
    reg msg_strm_TDATA_read_en;
    wire [64 - 1:0] msg_strm_TDATA_read_data;
    
    fifo #(32, 64) fifo_msg_strm_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(msg_strm_TDATA_write_en),
        .write_data(msg_strm_TDATA_write_data),
        .read_clock(clk),
        .read_en(msg_strm_TDATA_read_en),
        .read_data(msg_strm_TDATA_read_data),
        .full(msg_strm_TDATA_full),
        .empty(msg_strm_TDATA_empty));
    
    always @ (*) begin
        msg_strm_TDATA_write_en <= 0;
        msg_strm_TDATA_read_en <= TRAN_msg_strm_TREADY & TRAN_msg_strm_TVALID;
    end
    
    assign TRAN_msg_strm_TDATA = msg_strm_TDATA_read_data;
    wire msg_strm_TKEEP_full;
    wire msg_strm_TKEEP_empty;
    reg msg_strm_TKEEP_write_en;
    reg [8 - 1:0] msg_strm_TKEEP_write_data;
    reg msg_strm_TKEEP_read_en;
    wire [8 - 1:0] msg_strm_TKEEP_read_data;
    
    fifo #(32, 8) fifo_msg_strm_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(msg_strm_TKEEP_write_en),
        .write_data(msg_strm_TKEEP_write_data),
        .read_clock(clk),
        .read_en(msg_strm_TKEEP_read_en),
        .read_data(msg_strm_TKEEP_read_data),
        .full(msg_strm_TKEEP_full),
        .empty(msg_strm_TKEEP_empty));
    
    always @ (*) begin
        msg_strm_TKEEP_write_en <= 0;
        msg_strm_TKEEP_read_en <= TRAN_msg_strm_TREADY & TRAN_msg_strm_TVALID;
    end
    
    assign TRAN_msg_strm_TKEEP = msg_strm_TKEEP_read_data;
    wire msg_strm_TSTRB_full;
    wire msg_strm_TSTRB_empty;
    reg msg_strm_TSTRB_write_en;
    reg [8 - 1:0] msg_strm_TSTRB_write_data;
    reg msg_strm_TSTRB_read_en;
    wire [8 - 1:0] msg_strm_TSTRB_read_data;
    
    fifo #(32, 8) fifo_msg_strm_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(msg_strm_TSTRB_write_en),
        .write_data(msg_strm_TSTRB_write_data),
        .read_clock(clk),
        .read_en(msg_strm_TSTRB_read_en),
        .read_data(msg_strm_TSTRB_read_data),
        .full(msg_strm_TSTRB_full),
        .empty(msg_strm_TSTRB_empty));
    
    always @ (*) begin
        msg_strm_TSTRB_write_en <= 0;
        msg_strm_TSTRB_read_en <= TRAN_msg_strm_TREADY & TRAN_msg_strm_TVALID;
    end
    
    assign TRAN_msg_strm_TSTRB = msg_strm_TSTRB_read_data;
    wire msg_strm_TLAST_full;
    wire msg_strm_TLAST_empty;
    reg msg_strm_TLAST_write_en;
    reg [1 - 1:0] msg_strm_TLAST_write_data;
    reg msg_strm_TLAST_read_en;
    wire [1 - 1:0] msg_strm_TLAST_read_data;
    
    fifo #(32, 1) fifo_msg_strm_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(msg_strm_TLAST_write_en),
        .write_data(msg_strm_TLAST_write_data),
        .read_clock(clk),
        .read_en(msg_strm_TLAST_read_en),
        .read_data(msg_strm_TLAST_read_data),
        .full(msg_strm_TLAST_full),
        .empty(msg_strm_TLAST_empty));
    
    always @ (*) begin
        msg_strm_TLAST_write_en <= 0;
        msg_strm_TLAST_read_en <= TRAN_msg_strm_TREADY & TRAN_msg_strm_TVALID;
    end
    
    assign TRAN_msg_strm_TLAST = msg_strm_TLAST_read_data;
    wire msg_strm_TDEST_full;
    wire msg_strm_TDEST_empty;
    reg msg_strm_TDEST_write_en;
    reg [3 - 1:0] msg_strm_TDEST_write_data;
    reg msg_strm_TDEST_read_en;
    wire [3 - 1:0] msg_strm_TDEST_read_data;
    
    fifo #(32, 3) fifo_msg_strm_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(msg_strm_TDEST_write_en),
        .write_data(msg_strm_TDEST_write_data),
        .read_clock(clk),
        .read_en(msg_strm_TDEST_read_en),
        .read_data(msg_strm_TDEST_read_data),
        .full(msg_strm_TDEST_full),
        .empty(msg_strm_TDEST_empty));
    
    always @ (*) begin
        msg_strm_TDEST_write_en <= 0;
        msg_strm_TDEST_read_en <= TRAN_msg_strm_TREADY & TRAN_msg_strm_TVALID;
    end
    
    assign TRAN_msg_strm_TDEST = msg_strm_TDEST_read_data;
    assign TRAN_msg_strm_TVALID = TRAN_msg_strm_TVALID_temp;

    
    assign TRAN_msg_strm_TVALID_temp = ~(msg_strm_TDATA_empty || msg_strm_TKEEP_empty || msg_strm_TSTRB_empty || msg_strm_TLAST_empty || msg_strm_TDEST_empty);
    
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
    
    reg [31:0] transaction_load_msg_strm_TDATA;
    
    assign transaction = transaction_load_msg_strm_TDATA;
    
    initial begin : AXI_stream_driver_msg_strm_TDATA
        integer fp;
        reg [535:0] token;
        reg [64 - 1:0] data;
        reg [535:0] data_integer;
        integer fp_ingress_status;
        reg [535:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_msg_strm_TDATA = 0;
        fifo_msg_strm_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_msg_strm_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_msg_strm_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_msg_strm_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_msg_strm_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_msg_strm_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_msg_strm_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_msg_strm_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_msg_strm_TDATA = transaction_load_msg_strm_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_msg_strm_TKEEP;
    
    initial begin : AXI_stream_driver_msg_strm_TKEEP
        integer fp;
        reg [535:0] token;
        reg [8 - 1:0] data;
        reg [535:0] data_integer;
        integer fp_ingress_status;
        reg [535:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_msg_strm_TKEEP = 0;
        fifo_msg_strm_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_msg_strm_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_msg_strm_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_msg_strm_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_msg_strm_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_msg_strm_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_msg_strm_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_msg_strm_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_msg_strm_TKEEP = transaction_load_msg_strm_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_msg_strm_TSTRB;
    
    initial begin : AXI_stream_driver_msg_strm_TSTRB
        integer fp;
        reg [535:0] token;
        reg [8 - 1:0] data;
        reg [535:0] data_integer;
        integer fp_ingress_status;
        reg [535:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_msg_strm_TSTRB = 0;
        fifo_msg_strm_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_msg_strm_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_msg_strm_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_msg_strm_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_msg_strm_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_msg_strm_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_msg_strm_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_msg_strm_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_msg_strm_TSTRB = transaction_load_msg_strm_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_msg_strm_TLAST;
    
    initial begin : AXI_stream_driver_msg_strm_TLAST
        integer fp;
        reg [535:0] token;
        reg [1 - 1:0] data;
        reg [535:0] data_integer;
        integer fp_ingress_status;
        reg [535:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_msg_strm_TLAST = 0;
        fifo_msg_strm_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_msg_strm_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_msg_strm_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_msg_strm_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_msg_strm_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_msg_strm_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_msg_strm_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_msg_strm_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_msg_strm_TLAST = transaction_load_msg_strm_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_msg_strm_TDEST;
    
    initial begin : AXI_stream_driver_msg_strm_TDEST
        integer fp;
        reg [535:0] token;
        reg [3 - 1:0] data;
        reg [535:0] data_integer;
        integer fp_ingress_status;
        reg [535:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_msg_strm_TDEST = 0;
        fifo_msg_strm_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_msg_strm_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_msg_strm_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_msg_strm_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_msg_strm_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_msg_strm_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_msg_strm_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_msg_strm_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_msg_strm_TDEST = transaction_load_msg_strm_TDEST + 1;
            end
        end
    end

endmodule
