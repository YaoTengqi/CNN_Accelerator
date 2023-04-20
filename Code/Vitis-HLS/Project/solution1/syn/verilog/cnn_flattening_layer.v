// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnn_flattening_layer (
        ap_start,
        start_full_n,
        start_out,
        start_write,
        pool_to_flat_streams_0_dout,
        pool_to_flat_streams_0_empty_n,
        pool_to_flat_streams_0_read,
        pool_to_flat_streams_1_dout,
        pool_to_flat_streams_1_empty_n,
        pool_to_flat_streams_1_read,
        pool_to_flat_streams_2_dout,
        pool_to_flat_streams_2_empty_n,
        pool_to_flat_streams_2_read,
        pool_to_flat_streams_3_dout,
        pool_to_flat_streams_3_empty_n,
        pool_to_flat_streams_3_read,
        pool_to_flat_streams_4_dout,
        pool_to_flat_streams_4_empty_n,
        pool_to_flat_streams_4_read,
        pool_to_flat_streams_5_dout,
        pool_to_flat_streams_5_empty_n,
        pool_to_flat_streams_5_read,
        pool_to_flat_streams_6_dout,
        pool_to_flat_streams_6_empty_n,
        pool_to_flat_streams_6_read,
        pool_to_flat_streams_7_dout,
        pool_to_flat_streams_7_empty_n,
        pool_to_flat_streams_7_read,
        flat_to_dense_streams_0_din,
        flat_to_dense_streams_0_full_n,
        flat_to_dense_streams_0_write,
        flat_to_dense_streams_1_din,
        flat_to_dense_streams_1_full_n,
        flat_to_dense_streams_1_write,
        flat_to_dense_streams_2_din,
        flat_to_dense_streams_2_full_n,
        flat_to_dense_streams_2_write,
        flat_to_dense_streams_3_din,
        flat_to_dense_streams_3_full_n,
        flat_to_dense_streams_3_write,
        flat_to_dense_streams_4_din,
        flat_to_dense_streams_4_full_n,
        flat_to_dense_streams_4_write,
        flat_to_dense_streams_5_din,
        flat_to_dense_streams_5_full_n,
        flat_to_dense_streams_5_write,
        flat_to_dense_streams_6_din,
        flat_to_dense_streams_6_full_n,
        flat_to_dense_streams_6_write,
        flat_to_dense_streams_7_din,
        flat_to_dense_streams_7_full_n,
        flat_to_dense_streams_7_write,
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
input  [31:0] pool_to_flat_streams_0_dout;
input   pool_to_flat_streams_0_empty_n;
output   pool_to_flat_streams_0_read;
input  [31:0] pool_to_flat_streams_1_dout;
input   pool_to_flat_streams_1_empty_n;
output   pool_to_flat_streams_1_read;
input  [31:0] pool_to_flat_streams_2_dout;
input   pool_to_flat_streams_2_empty_n;
output   pool_to_flat_streams_2_read;
input  [31:0] pool_to_flat_streams_3_dout;
input   pool_to_flat_streams_3_empty_n;
output   pool_to_flat_streams_3_read;
input  [31:0] pool_to_flat_streams_4_dout;
input   pool_to_flat_streams_4_empty_n;
output   pool_to_flat_streams_4_read;
input  [31:0] pool_to_flat_streams_5_dout;
input   pool_to_flat_streams_5_empty_n;
output   pool_to_flat_streams_5_read;
input  [31:0] pool_to_flat_streams_6_dout;
input   pool_to_flat_streams_6_empty_n;
output   pool_to_flat_streams_6_read;
input  [31:0] pool_to_flat_streams_7_dout;
input   pool_to_flat_streams_7_empty_n;
output   pool_to_flat_streams_7_read;
output  [31:0] flat_to_dense_streams_0_din;
input   flat_to_dense_streams_0_full_n;
output   flat_to_dense_streams_0_write;
output  [31:0] flat_to_dense_streams_1_din;
input   flat_to_dense_streams_1_full_n;
output   flat_to_dense_streams_1_write;
output  [31:0] flat_to_dense_streams_2_din;
input   flat_to_dense_streams_2_full_n;
output   flat_to_dense_streams_2_write;
output  [31:0] flat_to_dense_streams_3_din;
input   flat_to_dense_streams_3_full_n;
output   flat_to_dense_streams_3_write;
output  [31:0] flat_to_dense_streams_4_din;
input   flat_to_dense_streams_4_full_n;
output   flat_to_dense_streams_4_write;
output  [31:0] flat_to_dense_streams_5_din;
input   flat_to_dense_streams_5_full_n;
output   flat_to_dense_streams_5_write;
output  [31:0] flat_to_dense_streams_6_din;
input   flat_to_dense_streams_6_full_n;
output   flat_to_dense_streams_6_write;
output  [31:0] flat_to_dense_streams_7_din;
input   flat_to_dense_streams_7_full_n;
output   flat_to_dense_streams_7_write;
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
wire    flattening_U0_ap_start;
wire    flattening_U0_ap_done;
wire    flattening_U0_ap_continue;
wire    flattening_U0_ap_idle;
wire    flattening_U0_ap_ready;
wire    flattening_U0_pool_to_flat_streams_0_read;
wire   [31:0] flattening_U0_flat_to_dense_streams_0_din;
wire    flattening_U0_flat_to_dense_streams_0_write;
wire    ap_sync_continue;
wire    flattening_1_U0_ap_start;
wire    flattening_1_U0_ap_done;
wire    flattening_1_U0_ap_continue;
wire    flattening_1_U0_ap_idle;
wire    flattening_1_U0_ap_ready;
wire    flattening_1_U0_pool_to_flat_streams_1_read;
wire   [31:0] flattening_1_U0_flat_to_dense_streams_1_din;
wire    flattening_1_U0_flat_to_dense_streams_1_write;
wire    flattening_2_U0_ap_start;
wire    flattening_2_U0_ap_done;
wire    flattening_2_U0_ap_continue;
wire    flattening_2_U0_ap_idle;
wire    flattening_2_U0_ap_ready;
wire    flattening_2_U0_pool_to_flat_streams_2_read;
wire   [31:0] flattening_2_U0_flat_to_dense_streams_2_din;
wire    flattening_2_U0_flat_to_dense_streams_2_write;
wire    flattening_3_U0_ap_start;
wire    flattening_3_U0_ap_done;
wire    flattening_3_U0_ap_continue;
wire    flattening_3_U0_ap_idle;
wire    flattening_3_U0_ap_ready;
wire    flattening_3_U0_pool_to_flat_streams_3_read;
wire   [31:0] flattening_3_U0_flat_to_dense_streams_3_din;
wire    flattening_3_U0_flat_to_dense_streams_3_write;
wire    flattening_4_U0_ap_start;
wire    flattening_4_U0_ap_done;
wire    flattening_4_U0_ap_continue;
wire    flattening_4_U0_ap_idle;
wire    flattening_4_U0_ap_ready;
wire    flattening_4_U0_pool_to_flat_streams_4_read;
wire   [31:0] flattening_4_U0_flat_to_dense_streams_4_din;
wire    flattening_4_U0_flat_to_dense_streams_4_write;
wire    flattening_5_U0_ap_start;
wire    flattening_5_U0_ap_done;
wire    flattening_5_U0_ap_continue;
wire    flattening_5_U0_ap_idle;
wire    flattening_5_U0_ap_ready;
wire    flattening_5_U0_pool_to_flat_streams_5_read;
wire   [31:0] flattening_5_U0_flat_to_dense_streams_5_din;
wire    flattening_5_U0_flat_to_dense_streams_5_write;
wire    flattening_6_U0_ap_start;
wire    flattening_6_U0_ap_done;
wire    flattening_6_U0_ap_continue;
wire    flattening_6_U0_ap_idle;
wire    flattening_6_U0_ap_ready;
wire    flattening_6_U0_pool_to_flat_streams_6_read;
wire   [31:0] flattening_6_U0_flat_to_dense_streams_6_din;
wire    flattening_6_U0_flat_to_dense_streams_6_write;
wire    flattening_7_U0_ap_start;
wire    flattening_7_U0_ap_done;
wire    flattening_7_U0_ap_continue;
wire    flattening_7_U0_ap_idle;
wire    flattening_7_U0_ap_ready;
wire    flattening_7_U0_pool_to_flat_streams_7_read;
wire   [31:0] flattening_7_U0_flat_to_dense_streams_7_din;
wire    flattening_7_U0_flat_to_dense_streams_7_write;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_flattening_U0_ap_ready;
wire    ap_sync_flattening_U0_ap_ready;
reg    ap_sync_reg_flattening_1_U0_ap_ready;
wire    ap_sync_flattening_1_U0_ap_ready;
reg    ap_sync_reg_flattening_2_U0_ap_ready;
wire    ap_sync_flattening_2_U0_ap_ready;
reg    ap_sync_reg_flattening_3_U0_ap_ready;
wire    ap_sync_flattening_3_U0_ap_ready;
reg    ap_sync_reg_flattening_4_U0_ap_ready;
wire    ap_sync_flattening_4_U0_ap_ready;
reg    ap_sync_reg_flattening_5_U0_ap_ready;
wire    ap_sync_flattening_5_U0_ap_ready;
reg    ap_sync_reg_flattening_6_U0_ap_ready;
wire    ap_sync_flattening_6_U0_ap_ready;
reg    ap_sync_reg_flattening_7_U0_ap_ready;
wire    ap_sync_flattening_7_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_sync_reg_flattening_U0_ap_ready = 1'b0;
#0 ap_sync_reg_flattening_1_U0_ap_ready = 1'b0;
#0 ap_sync_reg_flattening_2_U0_ap_ready = 1'b0;
#0 ap_sync_reg_flattening_3_U0_ap_ready = 1'b0;
#0 ap_sync_reg_flattening_4_U0_ap_ready = 1'b0;
#0 ap_sync_reg_flattening_5_U0_ap_ready = 1'b0;
#0 ap_sync_reg_flattening_6_U0_ap_ready = 1'b0;
#0 ap_sync_reg_flattening_7_U0_ap_ready = 1'b0;
end

cnn_flattening flattening_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(flattening_U0_ap_start),
    .ap_done(flattening_U0_ap_done),
    .ap_continue(flattening_U0_ap_continue),
    .ap_idle(flattening_U0_ap_idle),
    .ap_ready(flattening_U0_ap_ready),
    .pool_to_flat_streams_0_dout(pool_to_flat_streams_0_dout),
    .pool_to_flat_streams_0_empty_n(pool_to_flat_streams_0_empty_n),
    .pool_to_flat_streams_0_read(flattening_U0_pool_to_flat_streams_0_read),
    .flat_to_dense_streams_0_din(flattening_U0_flat_to_dense_streams_0_din),
    .flat_to_dense_streams_0_full_n(flat_to_dense_streams_0_full_n),
    .flat_to_dense_streams_0_write(flattening_U0_flat_to_dense_streams_0_write)
);

cnn_flattening_1 flattening_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(flattening_1_U0_ap_start),
    .ap_done(flattening_1_U0_ap_done),
    .ap_continue(flattening_1_U0_ap_continue),
    .ap_idle(flattening_1_U0_ap_idle),
    .ap_ready(flattening_1_U0_ap_ready),
    .pool_to_flat_streams_1_dout(pool_to_flat_streams_1_dout),
    .pool_to_flat_streams_1_empty_n(pool_to_flat_streams_1_empty_n),
    .pool_to_flat_streams_1_read(flattening_1_U0_pool_to_flat_streams_1_read),
    .flat_to_dense_streams_1_din(flattening_1_U0_flat_to_dense_streams_1_din),
    .flat_to_dense_streams_1_full_n(flat_to_dense_streams_1_full_n),
    .flat_to_dense_streams_1_write(flattening_1_U0_flat_to_dense_streams_1_write)
);

cnn_flattening_2 flattening_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(flattening_2_U0_ap_start),
    .ap_done(flattening_2_U0_ap_done),
    .ap_continue(flattening_2_U0_ap_continue),
    .ap_idle(flattening_2_U0_ap_idle),
    .ap_ready(flattening_2_U0_ap_ready),
    .pool_to_flat_streams_2_dout(pool_to_flat_streams_2_dout),
    .pool_to_flat_streams_2_empty_n(pool_to_flat_streams_2_empty_n),
    .pool_to_flat_streams_2_read(flattening_2_U0_pool_to_flat_streams_2_read),
    .flat_to_dense_streams_2_din(flattening_2_U0_flat_to_dense_streams_2_din),
    .flat_to_dense_streams_2_full_n(flat_to_dense_streams_2_full_n),
    .flat_to_dense_streams_2_write(flattening_2_U0_flat_to_dense_streams_2_write)
);

cnn_flattening_3 flattening_3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(flattening_3_U0_ap_start),
    .ap_done(flattening_3_U0_ap_done),
    .ap_continue(flattening_3_U0_ap_continue),
    .ap_idle(flattening_3_U0_ap_idle),
    .ap_ready(flattening_3_U0_ap_ready),
    .pool_to_flat_streams_3_dout(pool_to_flat_streams_3_dout),
    .pool_to_flat_streams_3_empty_n(pool_to_flat_streams_3_empty_n),
    .pool_to_flat_streams_3_read(flattening_3_U0_pool_to_flat_streams_3_read),
    .flat_to_dense_streams_3_din(flattening_3_U0_flat_to_dense_streams_3_din),
    .flat_to_dense_streams_3_full_n(flat_to_dense_streams_3_full_n),
    .flat_to_dense_streams_3_write(flattening_3_U0_flat_to_dense_streams_3_write)
);

cnn_flattening_4 flattening_4_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(flattening_4_U0_ap_start),
    .ap_done(flattening_4_U0_ap_done),
    .ap_continue(flattening_4_U0_ap_continue),
    .ap_idle(flattening_4_U0_ap_idle),
    .ap_ready(flattening_4_U0_ap_ready),
    .pool_to_flat_streams_4_dout(pool_to_flat_streams_4_dout),
    .pool_to_flat_streams_4_empty_n(pool_to_flat_streams_4_empty_n),
    .pool_to_flat_streams_4_read(flattening_4_U0_pool_to_flat_streams_4_read),
    .flat_to_dense_streams_4_din(flattening_4_U0_flat_to_dense_streams_4_din),
    .flat_to_dense_streams_4_full_n(flat_to_dense_streams_4_full_n),
    .flat_to_dense_streams_4_write(flattening_4_U0_flat_to_dense_streams_4_write)
);

cnn_flattening_5 flattening_5_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(flattening_5_U0_ap_start),
    .ap_done(flattening_5_U0_ap_done),
    .ap_continue(flattening_5_U0_ap_continue),
    .ap_idle(flattening_5_U0_ap_idle),
    .ap_ready(flattening_5_U0_ap_ready),
    .pool_to_flat_streams_5_dout(pool_to_flat_streams_5_dout),
    .pool_to_flat_streams_5_empty_n(pool_to_flat_streams_5_empty_n),
    .pool_to_flat_streams_5_read(flattening_5_U0_pool_to_flat_streams_5_read),
    .flat_to_dense_streams_5_din(flattening_5_U0_flat_to_dense_streams_5_din),
    .flat_to_dense_streams_5_full_n(flat_to_dense_streams_5_full_n),
    .flat_to_dense_streams_5_write(flattening_5_U0_flat_to_dense_streams_5_write)
);

cnn_flattening_6 flattening_6_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(flattening_6_U0_ap_start),
    .ap_done(flattening_6_U0_ap_done),
    .ap_continue(flattening_6_U0_ap_continue),
    .ap_idle(flattening_6_U0_ap_idle),
    .ap_ready(flattening_6_U0_ap_ready),
    .pool_to_flat_streams_6_dout(pool_to_flat_streams_6_dout),
    .pool_to_flat_streams_6_empty_n(pool_to_flat_streams_6_empty_n),
    .pool_to_flat_streams_6_read(flattening_6_U0_pool_to_flat_streams_6_read),
    .flat_to_dense_streams_6_din(flattening_6_U0_flat_to_dense_streams_6_din),
    .flat_to_dense_streams_6_full_n(flat_to_dense_streams_6_full_n),
    .flat_to_dense_streams_6_write(flattening_6_U0_flat_to_dense_streams_6_write)
);

cnn_flattening_7 flattening_7_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(flattening_7_U0_ap_start),
    .ap_done(flattening_7_U0_ap_done),
    .ap_continue(flattening_7_U0_ap_continue),
    .ap_idle(flattening_7_U0_ap_idle),
    .ap_ready(flattening_7_U0_ap_ready),
    .pool_to_flat_streams_7_dout(pool_to_flat_streams_7_dout),
    .pool_to_flat_streams_7_empty_n(pool_to_flat_streams_7_empty_n),
    .pool_to_flat_streams_7_read(flattening_7_U0_pool_to_flat_streams_7_read),
    .flat_to_dense_streams_7_din(flattening_7_U0_flat_to_dense_streams_7_din),
    .flat_to_dense_streams_7_full_n(flat_to_dense_streams_7_full_n),
    .flat_to_dense_streams_7_write(flattening_7_U0_flat_to_dense_streams_7_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_flattening_1_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_flattening_1_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_flattening_1_U0_ap_ready <= ap_sync_flattening_1_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_flattening_2_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_flattening_2_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_flattening_2_U0_ap_ready <= ap_sync_flattening_2_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_flattening_3_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_flattening_3_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_flattening_3_U0_ap_ready <= ap_sync_flattening_3_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_flattening_4_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_flattening_4_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_flattening_4_U0_ap_ready <= ap_sync_flattening_4_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_flattening_5_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_flattening_5_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_flattening_5_U0_ap_ready <= ap_sync_flattening_5_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_flattening_6_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_flattening_6_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_flattening_6_U0_ap_ready <= ap_sync_flattening_6_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_flattening_7_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_flattening_7_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_flattening_7_U0_ap_ready <= ap_sync_flattening_7_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_flattening_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_flattening_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_flattening_U0_ap_ready <= ap_sync_flattening_U0_ap_ready;
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

assign ap_idle = (flattening_U0_ap_idle & flattening_7_U0_ap_idle & flattening_6_U0_ap_idle & flattening_5_U0_ap_idle & flattening_4_U0_ap_idle & flattening_3_U0_ap_idle & flattening_2_U0_ap_idle & flattening_1_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_continue = (ap_sync_done & ap_continue);

assign ap_sync_done = (flattening_U0_ap_done & flattening_7_U0_ap_done & flattening_6_U0_ap_done & flattening_5_U0_ap_done & flattening_4_U0_ap_done & flattening_3_U0_ap_done & flattening_2_U0_ap_done & flattening_1_U0_ap_done);

assign ap_sync_flattening_1_U0_ap_ready = (flattening_1_U0_ap_ready | ap_sync_reg_flattening_1_U0_ap_ready);

assign ap_sync_flattening_2_U0_ap_ready = (flattening_2_U0_ap_ready | ap_sync_reg_flattening_2_U0_ap_ready);

assign ap_sync_flattening_3_U0_ap_ready = (flattening_3_U0_ap_ready | ap_sync_reg_flattening_3_U0_ap_ready);

assign ap_sync_flattening_4_U0_ap_ready = (flattening_4_U0_ap_ready | ap_sync_reg_flattening_4_U0_ap_ready);

assign ap_sync_flattening_5_U0_ap_ready = (flattening_5_U0_ap_ready | ap_sync_reg_flattening_5_U0_ap_ready);

assign ap_sync_flattening_6_U0_ap_ready = (flattening_6_U0_ap_ready | ap_sync_reg_flattening_6_U0_ap_ready);

assign ap_sync_flattening_7_U0_ap_ready = (flattening_7_U0_ap_ready | ap_sync_reg_flattening_7_U0_ap_ready);

assign ap_sync_flattening_U0_ap_ready = (flattening_U0_ap_ready | ap_sync_reg_flattening_U0_ap_ready);

assign ap_sync_ready = (ap_sync_flattening_U0_ap_ready & ap_sync_flattening_7_U0_ap_ready & ap_sync_flattening_6_U0_ap_ready & ap_sync_flattening_5_U0_ap_ready & ap_sync_flattening_4_U0_ap_ready & ap_sync_flattening_3_U0_ap_ready & ap_sync_flattening_2_U0_ap_ready & ap_sync_flattening_1_U0_ap_ready);

assign flat_to_dense_streams_0_din = flattening_U0_flat_to_dense_streams_0_din;

assign flat_to_dense_streams_0_write = flattening_U0_flat_to_dense_streams_0_write;

assign flat_to_dense_streams_1_din = flattening_1_U0_flat_to_dense_streams_1_din;

assign flat_to_dense_streams_1_write = flattening_1_U0_flat_to_dense_streams_1_write;

assign flat_to_dense_streams_2_din = flattening_2_U0_flat_to_dense_streams_2_din;

assign flat_to_dense_streams_2_write = flattening_2_U0_flat_to_dense_streams_2_write;

assign flat_to_dense_streams_3_din = flattening_3_U0_flat_to_dense_streams_3_din;

assign flat_to_dense_streams_3_write = flattening_3_U0_flat_to_dense_streams_3_write;

assign flat_to_dense_streams_4_din = flattening_4_U0_flat_to_dense_streams_4_din;

assign flat_to_dense_streams_4_write = flattening_4_U0_flat_to_dense_streams_4_write;

assign flat_to_dense_streams_5_din = flattening_5_U0_flat_to_dense_streams_5_din;

assign flat_to_dense_streams_5_write = flattening_5_U0_flat_to_dense_streams_5_write;

assign flat_to_dense_streams_6_din = flattening_6_U0_flat_to_dense_streams_6_din;

assign flat_to_dense_streams_6_write = flattening_6_U0_flat_to_dense_streams_6_write;

assign flat_to_dense_streams_7_din = flattening_7_U0_flat_to_dense_streams_7_din;

assign flat_to_dense_streams_7_write = flattening_7_U0_flat_to_dense_streams_7_write;

assign flattening_1_U0_ap_continue = ap_sync_continue;

assign flattening_1_U0_ap_start = (real_start & (ap_sync_reg_flattening_1_U0_ap_ready ^ 1'b1));

assign flattening_2_U0_ap_continue = ap_sync_continue;

assign flattening_2_U0_ap_start = (real_start & (ap_sync_reg_flattening_2_U0_ap_ready ^ 1'b1));

assign flattening_3_U0_ap_continue = ap_sync_continue;

assign flattening_3_U0_ap_start = (real_start & (ap_sync_reg_flattening_3_U0_ap_ready ^ 1'b1));

assign flattening_4_U0_ap_continue = ap_sync_continue;

assign flattening_4_U0_ap_start = (real_start & (ap_sync_reg_flattening_4_U0_ap_ready ^ 1'b1));

assign flattening_5_U0_ap_continue = ap_sync_continue;

assign flattening_5_U0_ap_start = (real_start & (ap_sync_reg_flattening_5_U0_ap_ready ^ 1'b1));

assign flattening_6_U0_ap_continue = ap_sync_continue;

assign flattening_6_U0_ap_start = (real_start & (ap_sync_reg_flattening_6_U0_ap_ready ^ 1'b1));

assign flattening_7_U0_ap_continue = ap_sync_continue;

assign flattening_7_U0_ap_start = (real_start & (ap_sync_reg_flattening_7_U0_ap_ready ^ 1'b1));

assign flattening_U0_ap_continue = ap_sync_continue;

assign flattening_U0_ap_start = (real_start & (ap_sync_reg_flattening_U0_ap_ready ^ 1'b1));

assign internal_ap_ready = ap_sync_ready;

assign pool_to_flat_streams_0_read = flattening_U0_pool_to_flat_streams_0_read;

assign pool_to_flat_streams_1_read = flattening_1_U0_pool_to_flat_streams_1_read;

assign pool_to_flat_streams_2_read = flattening_2_U0_pool_to_flat_streams_2_read;

assign pool_to_flat_streams_3_read = flattening_3_U0_pool_to_flat_streams_3_read;

assign pool_to_flat_streams_4_read = flattening_4_U0_pool_to_flat_streams_4_read;

assign pool_to_flat_streams_5_read = flattening_5_U0_pool_to_flat_streams_5_read;

assign pool_to_flat_streams_6_read = flattening_6_U0_pool_to_flat_streams_6_read;

assign pool_to_flat_streams_7_read = flattening_7_U0_pool_to_flat_streams_7_read;

assign start_out = real_start;

endmodule //cnn_flattening_layer
