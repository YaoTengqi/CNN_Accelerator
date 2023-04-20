// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnn_max_pooling_layer (
        ap_start,
        start_full_n,
        start_out,
        start_write,
        conv_to_pool_streams_0_dout,
        conv_to_pool_streams_0_empty_n,
        conv_to_pool_streams_0_read,
        conv_to_pool_streams_1_dout,
        conv_to_pool_streams_1_empty_n,
        conv_to_pool_streams_1_read,
        conv_to_pool_streams_2_dout,
        conv_to_pool_streams_2_empty_n,
        conv_to_pool_streams_2_read,
        conv_to_pool_streams_3_dout,
        conv_to_pool_streams_3_empty_n,
        conv_to_pool_streams_3_read,
        conv_to_pool_streams_4_dout,
        conv_to_pool_streams_4_empty_n,
        conv_to_pool_streams_4_read,
        conv_to_pool_streams_5_dout,
        conv_to_pool_streams_5_empty_n,
        conv_to_pool_streams_5_read,
        conv_to_pool_streams_6_dout,
        conv_to_pool_streams_6_empty_n,
        conv_to_pool_streams_6_read,
        conv_to_pool_streams_7_dout,
        conv_to_pool_streams_7_empty_n,
        conv_to_pool_streams_7_read,
        pool_to_flat_streams_0_din,
        pool_to_flat_streams_0_full_n,
        pool_to_flat_streams_0_write,
        pool_to_flat_streams_1_din,
        pool_to_flat_streams_1_full_n,
        pool_to_flat_streams_1_write,
        pool_to_flat_streams_2_din,
        pool_to_flat_streams_2_full_n,
        pool_to_flat_streams_2_write,
        pool_to_flat_streams_3_din,
        pool_to_flat_streams_3_full_n,
        pool_to_flat_streams_3_write,
        pool_to_flat_streams_4_din,
        pool_to_flat_streams_4_full_n,
        pool_to_flat_streams_4_write,
        pool_to_flat_streams_5_din,
        pool_to_flat_streams_5_full_n,
        pool_to_flat_streams_5_write,
        pool_to_flat_streams_6_din,
        pool_to_flat_streams_6_full_n,
        pool_to_flat_streams_6_write,
        pool_to_flat_streams_7_din,
        pool_to_flat_streams_7_full_n,
        pool_to_flat_streams_7_write,
        ap_clk,
        ap_rst,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_start;
input   start_full_n;
output   start_out;
output   start_write;
input  [31:0] conv_to_pool_streams_0_dout;
input   conv_to_pool_streams_0_empty_n;
output   conv_to_pool_streams_0_read;
input  [31:0] conv_to_pool_streams_1_dout;
input   conv_to_pool_streams_1_empty_n;
output   conv_to_pool_streams_1_read;
input  [31:0] conv_to_pool_streams_2_dout;
input   conv_to_pool_streams_2_empty_n;
output   conv_to_pool_streams_2_read;
input  [31:0] conv_to_pool_streams_3_dout;
input   conv_to_pool_streams_3_empty_n;
output   conv_to_pool_streams_3_read;
input  [31:0] conv_to_pool_streams_4_dout;
input   conv_to_pool_streams_4_empty_n;
output   conv_to_pool_streams_4_read;
input  [31:0] conv_to_pool_streams_5_dout;
input   conv_to_pool_streams_5_empty_n;
output   conv_to_pool_streams_5_read;
input  [31:0] conv_to_pool_streams_6_dout;
input   conv_to_pool_streams_6_empty_n;
output   conv_to_pool_streams_6_read;
input  [31:0] conv_to_pool_streams_7_dout;
input   conv_to_pool_streams_7_empty_n;
output   conv_to_pool_streams_7_read;
output  [31:0] pool_to_flat_streams_0_din;
input   pool_to_flat_streams_0_full_n;
output   pool_to_flat_streams_0_write;
output  [31:0] pool_to_flat_streams_1_din;
input   pool_to_flat_streams_1_full_n;
output   pool_to_flat_streams_1_write;
output  [31:0] pool_to_flat_streams_2_din;
input   pool_to_flat_streams_2_full_n;
output   pool_to_flat_streams_2_write;
output  [31:0] pool_to_flat_streams_3_din;
input   pool_to_flat_streams_3_full_n;
output   pool_to_flat_streams_3_write;
output  [31:0] pool_to_flat_streams_4_din;
input   pool_to_flat_streams_4_full_n;
output   pool_to_flat_streams_4_write;
output  [31:0] pool_to_flat_streams_5_din;
input   pool_to_flat_streams_5_full_n;
output   pool_to_flat_streams_5_write;
output  [31:0] pool_to_flat_streams_6_din;
input   pool_to_flat_streams_6_full_n;
output   pool_to_flat_streams_6_write;
output  [31:0] pool_to_flat_streams_7_din;
input   pool_to_flat_streams_7_full_n;
output   pool_to_flat_streams_7_write;
input   ap_clk;
input   ap_rst;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg start_write;

reg    real_start;
reg    start_once_reg;
wire    internal_ap_ready;
wire    max_pooling_U0_ap_start;
wire    max_pooling_U0_ap_done;
wire    max_pooling_U0_ap_continue;
wire    max_pooling_U0_ap_idle;
wire    max_pooling_U0_ap_ready;
wire    max_pooling_U0_conv_to_pool_streams_0_read;
wire   [31:0] max_pooling_U0_pool_to_flat_streams_0_din;
wire    max_pooling_U0_pool_to_flat_streams_0_write;
wire    ap_sync_continue;
wire    max_pooling_1_U0_ap_start;
wire    max_pooling_1_U0_ap_done;
wire    max_pooling_1_U0_ap_continue;
wire    max_pooling_1_U0_ap_idle;
wire    max_pooling_1_U0_ap_ready;
wire    max_pooling_1_U0_conv_to_pool_streams_1_read;
wire   [31:0] max_pooling_1_U0_pool_to_flat_streams_1_din;
wire    max_pooling_1_U0_pool_to_flat_streams_1_write;
wire    max_pooling_2_U0_ap_start;
wire    max_pooling_2_U0_ap_done;
wire    max_pooling_2_U0_ap_continue;
wire    max_pooling_2_U0_ap_idle;
wire    max_pooling_2_U0_ap_ready;
wire    max_pooling_2_U0_conv_to_pool_streams_2_read;
wire   [31:0] max_pooling_2_U0_pool_to_flat_streams_2_din;
wire    max_pooling_2_U0_pool_to_flat_streams_2_write;
wire    max_pooling_3_U0_ap_start;
wire    max_pooling_3_U0_ap_done;
wire    max_pooling_3_U0_ap_continue;
wire    max_pooling_3_U0_ap_idle;
wire    max_pooling_3_U0_ap_ready;
wire    max_pooling_3_U0_conv_to_pool_streams_3_read;
wire   [31:0] max_pooling_3_U0_pool_to_flat_streams_3_din;
wire    max_pooling_3_U0_pool_to_flat_streams_3_write;
wire    max_pooling_4_U0_ap_start;
wire    max_pooling_4_U0_ap_done;
wire    max_pooling_4_U0_ap_continue;
wire    max_pooling_4_U0_ap_idle;
wire    max_pooling_4_U0_ap_ready;
wire    max_pooling_4_U0_conv_to_pool_streams_4_read;
wire   [31:0] max_pooling_4_U0_pool_to_flat_streams_4_din;
wire    max_pooling_4_U0_pool_to_flat_streams_4_write;
wire    max_pooling_5_U0_ap_start;
wire    max_pooling_5_U0_ap_done;
wire    max_pooling_5_U0_ap_continue;
wire    max_pooling_5_U0_ap_idle;
wire    max_pooling_5_U0_ap_ready;
wire    max_pooling_5_U0_conv_to_pool_streams_5_read;
wire   [31:0] max_pooling_5_U0_pool_to_flat_streams_5_din;
wire    max_pooling_5_U0_pool_to_flat_streams_5_write;
wire    max_pooling_6_U0_ap_start;
wire    max_pooling_6_U0_ap_done;
wire    max_pooling_6_U0_ap_continue;
wire    max_pooling_6_U0_ap_idle;
wire    max_pooling_6_U0_ap_ready;
wire    max_pooling_6_U0_conv_to_pool_streams_6_read;
wire   [31:0] max_pooling_6_U0_pool_to_flat_streams_6_din;
wire    max_pooling_6_U0_pool_to_flat_streams_6_write;
wire    max_pooling_7_U0_ap_start;
wire    max_pooling_7_U0_ap_done;
wire    max_pooling_7_U0_ap_continue;
wire    max_pooling_7_U0_ap_idle;
wire    max_pooling_7_U0_ap_ready;
wire    max_pooling_7_U0_conv_to_pool_streams_7_read;
wire   [31:0] max_pooling_7_U0_pool_to_flat_streams_7_din;
wire    max_pooling_7_U0_pool_to_flat_streams_7_write;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_max_pooling_U0_ap_ready;
wire    ap_sync_max_pooling_U0_ap_ready;
reg    ap_sync_reg_max_pooling_1_U0_ap_ready;
wire    ap_sync_max_pooling_1_U0_ap_ready;
reg    ap_sync_reg_max_pooling_2_U0_ap_ready;
wire    ap_sync_max_pooling_2_U0_ap_ready;
reg    ap_sync_reg_max_pooling_3_U0_ap_ready;
wire    ap_sync_max_pooling_3_U0_ap_ready;
reg    ap_sync_reg_max_pooling_4_U0_ap_ready;
wire    ap_sync_max_pooling_4_U0_ap_ready;
reg    ap_sync_reg_max_pooling_5_U0_ap_ready;
wire    ap_sync_max_pooling_5_U0_ap_ready;
reg    ap_sync_reg_max_pooling_6_U0_ap_ready;
wire    ap_sync_max_pooling_6_U0_ap_ready;
reg    ap_sync_reg_max_pooling_7_U0_ap_ready;
wire    ap_sync_max_pooling_7_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_sync_reg_max_pooling_U0_ap_ready = 1'b0;
#0 ap_sync_reg_max_pooling_1_U0_ap_ready = 1'b0;
#0 ap_sync_reg_max_pooling_2_U0_ap_ready = 1'b0;
#0 ap_sync_reg_max_pooling_3_U0_ap_ready = 1'b0;
#0 ap_sync_reg_max_pooling_4_U0_ap_ready = 1'b0;
#0 ap_sync_reg_max_pooling_5_U0_ap_ready = 1'b0;
#0 ap_sync_reg_max_pooling_6_U0_ap_ready = 1'b0;
#0 ap_sync_reg_max_pooling_7_U0_ap_ready = 1'b0;
end

cnn_max_pooling max_pooling_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(max_pooling_U0_ap_start),
    .ap_done(max_pooling_U0_ap_done),
    .ap_continue(max_pooling_U0_ap_continue),
    .ap_idle(max_pooling_U0_ap_idle),
    .ap_ready(max_pooling_U0_ap_ready),
    .conv_to_pool_streams_0_dout(conv_to_pool_streams_0_dout),
    .conv_to_pool_streams_0_empty_n(conv_to_pool_streams_0_empty_n),
    .conv_to_pool_streams_0_read(max_pooling_U0_conv_to_pool_streams_0_read),
    .pool_to_flat_streams_0_din(max_pooling_U0_pool_to_flat_streams_0_din),
    .pool_to_flat_streams_0_full_n(pool_to_flat_streams_0_full_n),
    .pool_to_flat_streams_0_write(max_pooling_U0_pool_to_flat_streams_0_write)
);

cnn_max_pooling_1 max_pooling_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(max_pooling_1_U0_ap_start),
    .ap_done(max_pooling_1_U0_ap_done),
    .ap_continue(max_pooling_1_U0_ap_continue),
    .ap_idle(max_pooling_1_U0_ap_idle),
    .ap_ready(max_pooling_1_U0_ap_ready),
    .conv_to_pool_streams_1_dout(conv_to_pool_streams_1_dout),
    .conv_to_pool_streams_1_empty_n(conv_to_pool_streams_1_empty_n),
    .conv_to_pool_streams_1_read(max_pooling_1_U0_conv_to_pool_streams_1_read),
    .pool_to_flat_streams_1_din(max_pooling_1_U0_pool_to_flat_streams_1_din),
    .pool_to_flat_streams_1_full_n(pool_to_flat_streams_1_full_n),
    .pool_to_flat_streams_1_write(max_pooling_1_U0_pool_to_flat_streams_1_write)
);

cnn_max_pooling_2 max_pooling_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(max_pooling_2_U0_ap_start),
    .ap_done(max_pooling_2_U0_ap_done),
    .ap_continue(max_pooling_2_U0_ap_continue),
    .ap_idle(max_pooling_2_U0_ap_idle),
    .ap_ready(max_pooling_2_U0_ap_ready),
    .conv_to_pool_streams_2_dout(conv_to_pool_streams_2_dout),
    .conv_to_pool_streams_2_empty_n(conv_to_pool_streams_2_empty_n),
    .conv_to_pool_streams_2_read(max_pooling_2_U0_conv_to_pool_streams_2_read),
    .pool_to_flat_streams_2_din(max_pooling_2_U0_pool_to_flat_streams_2_din),
    .pool_to_flat_streams_2_full_n(pool_to_flat_streams_2_full_n),
    .pool_to_flat_streams_2_write(max_pooling_2_U0_pool_to_flat_streams_2_write)
);

cnn_max_pooling_3 max_pooling_3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(max_pooling_3_U0_ap_start),
    .ap_done(max_pooling_3_U0_ap_done),
    .ap_continue(max_pooling_3_U0_ap_continue),
    .ap_idle(max_pooling_3_U0_ap_idle),
    .ap_ready(max_pooling_3_U0_ap_ready),
    .conv_to_pool_streams_3_dout(conv_to_pool_streams_3_dout),
    .conv_to_pool_streams_3_empty_n(conv_to_pool_streams_3_empty_n),
    .conv_to_pool_streams_3_read(max_pooling_3_U0_conv_to_pool_streams_3_read),
    .pool_to_flat_streams_3_din(max_pooling_3_U0_pool_to_flat_streams_3_din),
    .pool_to_flat_streams_3_full_n(pool_to_flat_streams_3_full_n),
    .pool_to_flat_streams_3_write(max_pooling_3_U0_pool_to_flat_streams_3_write)
);

cnn_max_pooling_4 max_pooling_4_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(max_pooling_4_U0_ap_start),
    .ap_done(max_pooling_4_U0_ap_done),
    .ap_continue(max_pooling_4_U0_ap_continue),
    .ap_idle(max_pooling_4_U0_ap_idle),
    .ap_ready(max_pooling_4_U0_ap_ready),
    .conv_to_pool_streams_4_dout(conv_to_pool_streams_4_dout),
    .conv_to_pool_streams_4_empty_n(conv_to_pool_streams_4_empty_n),
    .conv_to_pool_streams_4_read(max_pooling_4_U0_conv_to_pool_streams_4_read),
    .pool_to_flat_streams_4_din(max_pooling_4_U0_pool_to_flat_streams_4_din),
    .pool_to_flat_streams_4_full_n(pool_to_flat_streams_4_full_n),
    .pool_to_flat_streams_4_write(max_pooling_4_U0_pool_to_flat_streams_4_write)
);

cnn_max_pooling_5 max_pooling_5_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(max_pooling_5_U0_ap_start),
    .ap_done(max_pooling_5_U0_ap_done),
    .ap_continue(max_pooling_5_U0_ap_continue),
    .ap_idle(max_pooling_5_U0_ap_idle),
    .ap_ready(max_pooling_5_U0_ap_ready),
    .conv_to_pool_streams_5_dout(conv_to_pool_streams_5_dout),
    .conv_to_pool_streams_5_empty_n(conv_to_pool_streams_5_empty_n),
    .conv_to_pool_streams_5_read(max_pooling_5_U0_conv_to_pool_streams_5_read),
    .pool_to_flat_streams_5_din(max_pooling_5_U0_pool_to_flat_streams_5_din),
    .pool_to_flat_streams_5_full_n(pool_to_flat_streams_5_full_n),
    .pool_to_flat_streams_5_write(max_pooling_5_U0_pool_to_flat_streams_5_write)
);

cnn_max_pooling_6 max_pooling_6_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(max_pooling_6_U0_ap_start),
    .ap_done(max_pooling_6_U0_ap_done),
    .ap_continue(max_pooling_6_U0_ap_continue),
    .ap_idle(max_pooling_6_U0_ap_idle),
    .ap_ready(max_pooling_6_U0_ap_ready),
    .conv_to_pool_streams_6_dout(conv_to_pool_streams_6_dout),
    .conv_to_pool_streams_6_empty_n(conv_to_pool_streams_6_empty_n),
    .conv_to_pool_streams_6_read(max_pooling_6_U0_conv_to_pool_streams_6_read),
    .pool_to_flat_streams_6_din(max_pooling_6_U0_pool_to_flat_streams_6_din),
    .pool_to_flat_streams_6_full_n(pool_to_flat_streams_6_full_n),
    .pool_to_flat_streams_6_write(max_pooling_6_U0_pool_to_flat_streams_6_write)
);

cnn_max_pooling_7 max_pooling_7_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(max_pooling_7_U0_ap_start),
    .ap_done(max_pooling_7_U0_ap_done),
    .ap_continue(max_pooling_7_U0_ap_continue),
    .ap_idle(max_pooling_7_U0_ap_idle),
    .ap_ready(max_pooling_7_U0_ap_ready),
    .conv_to_pool_streams_7_dout(conv_to_pool_streams_7_dout),
    .conv_to_pool_streams_7_empty_n(conv_to_pool_streams_7_empty_n),
    .conv_to_pool_streams_7_read(max_pooling_7_U0_conv_to_pool_streams_7_read),
    .pool_to_flat_streams_7_din(max_pooling_7_U0_pool_to_flat_streams_7_din),
    .pool_to_flat_streams_7_full_n(pool_to_flat_streams_7_full_n),
    .pool_to_flat_streams_7_write(max_pooling_7_U0_pool_to_flat_streams_7_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_max_pooling_1_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_max_pooling_1_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_max_pooling_1_U0_ap_ready <= ap_sync_max_pooling_1_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_max_pooling_2_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_max_pooling_2_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_max_pooling_2_U0_ap_ready <= ap_sync_max_pooling_2_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_max_pooling_3_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_max_pooling_3_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_max_pooling_3_U0_ap_ready <= ap_sync_max_pooling_3_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_max_pooling_4_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_max_pooling_4_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_max_pooling_4_U0_ap_ready <= ap_sync_max_pooling_4_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_max_pooling_5_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_max_pooling_5_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_max_pooling_5_U0_ap_ready <= ap_sync_max_pooling_5_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_max_pooling_6_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_max_pooling_6_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_max_pooling_6_U0_ap_ready <= ap_sync_max_pooling_6_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_max_pooling_7_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_max_pooling_7_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_max_pooling_7_U0_ap_ready <= ap_sync_max_pooling_7_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_max_pooling_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_max_pooling_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_max_pooling_U0_ap_ready <= ap_sync_max_pooling_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

assign ap_done = ap_sync_done;

assign ap_idle = (max_pooling_U0_ap_idle & max_pooling_7_U0_ap_idle & max_pooling_6_U0_ap_idle & max_pooling_5_U0_ap_idle & max_pooling_4_U0_ap_idle & max_pooling_3_U0_ap_idle & max_pooling_2_U0_ap_idle & max_pooling_1_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_continue = (ap_sync_done & ap_continue);

assign ap_sync_done = (max_pooling_U0_ap_done & max_pooling_7_U0_ap_done & max_pooling_6_U0_ap_done & max_pooling_5_U0_ap_done & max_pooling_4_U0_ap_done & max_pooling_3_U0_ap_done & max_pooling_2_U0_ap_done & max_pooling_1_U0_ap_done);

assign ap_sync_max_pooling_1_U0_ap_ready = (max_pooling_1_U0_ap_ready | ap_sync_reg_max_pooling_1_U0_ap_ready);

assign ap_sync_max_pooling_2_U0_ap_ready = (max_pooling_2_U0_ap_ready | ap_sync_reg_max_pooling_2_U0_ap_ready);

assign ap_sync_max_pooling_3_U0_ap_ready = (max_pooling_3_U0_ap_ready | ap_sync_reg_max_pooling_3_U0_ap_ready);

assign ap_sync_max_pooling_4_U0_ap_ready = (max_pooling_4_U0_ap_ready | ap_sync_reg_max_pooling_4_U0_ap_ready);

assign ap_sync_max_pooling_5_U0_ap_ready = (max_pooling_5_U0_ap_ready | ap_sync_reg_max_pooling_5_U0_ap_ready);

assign ap_sync_max_pooling_6_U0_ap_ready = (max_pooling_6_U0_ap_ready | ap_sync_reg_max_pooling_6_U0_ap_ready);

assign ap_sync_max_pooling_7_U0_ap_ready = (max_pooling_7_U0_ap_ready | ap_sync_reg_max_pooling_7_U0_ap_ready);

assign ap_sync_max_pooling_U0_ap_ready = (max_pooling_U0_ap_ready | ap_sync_reg_max_pooling_U0_ap_ready);

assign ap_sync_ready = (ap_sync_max_pooling_U0_ap_ready & ap_sync_max_pooling_7_U0_ap_ready & ap_sync_max_pooling_6_U0_ap_ready & ap_sync_max_pooling_5_U0_ap_ready & ap_sync_max_pooling_4_U0_ap_ready & ap_sync_max_pooling_3_U0_ap_ready & ap_sync_max_pooling_2_U0_ap_ready & ap_sync_max_pooling_1_U0_ap_ready);

assign conv_to_pool_streams_0_read = max_pooling_U0_conv_to_pool_streams_0_read;

assign conv_to_pool_streams_1_read = max_pooling_1_U0_conv_to_pool_streams_1_read;

assign conv_to_pool_streams_2_read = max_pooling_2_U0_conv_to_pool_streams_2_read;

assign conv_to_pool_streams_3_read = max_pooling_3_U0_conv_to_pool_streams_3_read;

assign conv_to_pool_streams_4_read = max_pooling_4_U0_conv_to_pool_streams_4_read;

assign conv_to_pool_streams_5_read = max_pooling_5_U0_conv_to_pool_streams_5_read;

assign conv_to_pool_streams_6_read = max_pooling_6_U0_conv_to_pool_streams_6_read;

assign conv_to_pool_streams_7_read = max_pooling_7_U0_conv_to_pool_streams_7_read;

assign internal_ap_ready = ap_sync_ready;

assign max_pooling_1_U0_ap_continue = ap_sync_continue;

assign max_pooling_1_U0_ap_start = (real_start & (ap_sync_reg_max_pooling_1_U0_ap_ready ^ 1'b1));

assign max_pooling_2_U0_ap_continue = ap_sync_continue;

assign max_pooling_2_U0_ap_start = (real_start & (ap_sync_reg_max_pooling_2_U0_ap_ready ^ 1'b1));

assign max_pooling_3_U0_ap_continue = ap_sync_continue;

assign max_pooling_3_U0_ap_start = (real_start & (ap_sync_reg_max_pooling_3_U0_ap_ready ^ 1'b1));

assign max_pooling_4_U0_ap_continue = ap_sync_continue;

assign max_pooling_4_U0_ap_start = (real_start & (ap_sync_reg_max_pooling_4_U0_ap_ready ^ 1'b1));

assign max_pooling_5_U0_ap_continue = ap_sync_continue;

assign max_pooling_5_U0_ap_start = (real_start & (ap_sync_reg_max_pooling_5_U0_ap_ready ^ 1'b1));

assign max_pooling_6_U0_ap_continue = ap_sync_continue;

assign max_pooling_6_U0_ap_start = (real_start & (ap_sync_reg_max_pooling_6_U0_ap_ready ^ 1'b1));

assign max_pooling_7_U0_ap_continue = ap_sync_continue;

assign max_pooling_7_U0_ap_start = (real_start & (ap_sync_reg_max_pooling_7_U0_ap_ready ^ 1'b1));

assign max_pooling_U0_ap_continue = ap_sync_continue;

assign max_pooling_U0_ap_start = (real_start & (ap_sync_reg_max_pooling_U0_ap_ready ^ 1'b1));

assign pool_to_flat_streams_0_din = max_pooling_U0_pool_to_flat_streams_0_din;

assign pool_to_flat_streams_0_write = max_pooling_U0_pool_to_flat_streams_0_write;

assign pool_to_flat_streams_1_din = max_pooling_1_U0_pool_to_flat_streams_1_din;

assign pool_to_flat_streams_1_write = max_pooling_1_U0_pool_to_flat_streams_1_write;

assign pool_to_flat_streams_2_din = max_pooling_2_U0_pool_to_flat_streams_2_din;

assign pool_to_flat_streams_2_write = max_pooling_2_U0_pool_to_flat_streams_2_write;

assign pool_to_flat_streams_3_din = max_pooling_3_U0_pool_to_flat_streams_3_din;

assign pool_to_flat_streams_3_write = max_pooling_3_U0_pool_to_flat_streams_3_write;

assign pool_to_flat_streams_4_din = max_pooling_4_U0_pool_to_flat_streams_4_din;

assign pool_to_flat_streams_4_write = max_pooling_4_U0_pool_to_flat_streams_4_write;

assign pool_to_flat_streams_5_din = max_pooling_5_U0_pool_to_flat_streams_5_din;

assign pool_to_flat_streams_5_write = max_pooling_5_U0_pool_to_flat_streams_5_write;

assign pool_to_flat_streams_6_din = max_pooling_6_U0_pool_to_flat_streams_6_din;

assign pool_to_flat_streams_6_write = max_pooling_6_U0_pool_to_flat_streams_6_write;

assign pool_to_flat_streams_7_din = max_pooling_7_U0_pool_to_flat_streams_7_din;

assign pool_to_flat_streams_7_write = max_pooling_7_U0_pool_to_flat_streams_7_write;

assign start_out = real_start;

endmodule //cnn_max_pooling_layer
