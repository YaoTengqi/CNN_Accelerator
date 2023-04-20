// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnn_dense_layer (
        flat_to_dense_streams_0_dout,
        flat_to_dense_streams_0_empty_n,
        flat_to_dense_streams_0_read,
        flat_to_dense_streams_1_dout,
        flat_to_dense_streams_1_empty_n,
        flat_to_dense_streams_1_read,
        flat_to_dense_streams_2_dout,
        flat_to_dense_streams_2_empty_n,
        flat_to_dense_streams_2_read,
        flat_to_dense_streams_3_dout,
        flat_to_dense_streams_3_empty_n,
        flat_to_dense_streams_3_read,
        flat_to_dense_streams_4_dout,
        flat_to_dense_streams_4_empty_n,
        flat_to_dense_streams_4_read,
        flat_to_dense_streams_5_dout,
        flat_to_dense_streams_5_empty_n,
        flat_to_dense_streams_5_read,
        flat_to_dense_streams_6_dout,
        flat_to_dense_streams_6_empty_n,
        flat_to_dense_streams_6_read,
        flat_to_dense_streams_7_dout,
        flat_to_dense_streams_7_empty_n,
        flat_to_dense_streams_7_read,
        dense_to_softmax_streams_0_din,
        dense_to_softmax_streams_0_full_n,
        dense_to_softmax_streams_0_write,
        dense_to_softmax_streams_1_din,
        dense_to_softmax_streams_1_full_n,
        dense_to_softmax_streams_1_write,
        dense_to_softmax_streams_2_din,
        dense_to_softmax_streams_2_full_n,
        dense_to_softmax_streams_2_write,
        dense_to_softmax_streams_3_din,
        dense_to_softmax_streams_3_full_n,
        dense_to_softmax_streams_3_write,
        dense_to_softmax_streams_4_din,
        dense_to_softmax_streams_4_full_n,
        dense_to_softmax_streams_4_write,
        dense_to_softmax_streams_5_din,
        dense_to_softmax_streams_5_full_n,
        dense_to_softmax_streams_5_write,
        dense_to_softmax_streams_6_din,
        dense_to_softmax_streams_6_full_n,
        dense_to_softmax_streams_6_write,
        dense_to_softmax_streams_7_din,
        dense_to_softmax_streams_7_full_n,
        dense_to_softmax_streams_7_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] flat_to_dense_streams_0_dout;
input   flat_to_dense_streams_0_empty_n;
output   flat_to_dense_streams_0_read;
input  [31:0] flat_to_dense_streams_1_dout;
input   flat_to_dense_streams_1_empty_n;
output   flat_to_dense_streams_1_read;
input  [31:0] flat_to_dense_streams_2_dout;
input   flat_to_dense_streams_2_empty_n;
output   flat_to_dense_streams_2_read;
input  [31:0] flat_to_dense_streams_3_dout;
input   flat_to_dense_streams_3_empty_n;
output   flat_to_dense_streams_3_read;
input  [31:0] flat_to_dense_streams_4_dout;
input   flat_to_dense_streams_4_empty_n;
output   flat_to_dense_streams_4_read;
input  [31:0] flat_to_dense_streams_5_dout;
input   flat_to_dense_streams_5_empty_n;
output   flat_to_dense_streams_5_read;
input  [31:0] flat_to_dense_streams_6_dout;
input   flat_to_dense_streams_6_empty_n;
output   flat_to_dense_streams_6_read;
input  [31:0] flat_to_dense_streams_7_dout;
input   flat_to_dense_streams_7_empty_n;
output   flat_to_dense_streams_7_read;
output  [31:0] dense_to_softmax_streams_0_din;
input   dense_to_softmax_streams_0_full_n;
output   dense_to_softmax_streams_0_write;
output  [31:0] dense_to_softmax_streams_1_din;
input   dense_to_softmax_streams_1_full_n;
output   dense_to_softmax_streams_1_write;
output  [31:0] dense_to_softmax_streams_2_din;
input   dense_to_softmax_streams_2_full_n;
output   dense_to_softmax_streams_2_write;
output  [31:0] dense_to_softmax_streams_3_din;
input   dense_to_softmax_streams_3_full_n;
output   dense_to_softmax_streams_3_write;
output  [31:0] dense_to_softmax_streams_4_din;
input   dense_to_softmax_streams_4_full_n;
output   dense_to_softmax_streams_4_write;
output  [31:0] dense_to_softmax_streams_5_din;
input   dense_to_softmax_streams_5_full_n;
output   dense_to_softmax_streams_5_write;
output  [31:0] dense_to_softmax_streams_6_din;
input   dense_to_softmax_streams_6_full_n;
output   dense_to_softmax_streams_6_write;
output  [31:0] dense_to_softmax_streams_7_din;
input   dense_to_softmax_streams_7_full_n;
output   dense_to_softmax_streams_7_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    dense_U0_ap_start;
wire    dense_U0_ap_done;
wire    dense_U0_ap_continue;
wire    dense_U0_ap_idle;
wire    dense_U0_ap_ready;
wire    dense_U0_flat_to_dense_streams_0_read;
wire   [31:0] dense_U0_dense_to_softmax_streams_0_din;
wire    dense_U0_dense_to_softmax_streams_0_write;
wire    ap_sync_continue;
wire    dense_22_U0_ap_start;
wire    dense_22_U0_ap_done;
wire    dense_22_U0_ap_continue;
wire    dense_22_U0_ap_idle;
wire    dense_22_U0_ap_ready;
wire    dense_22_U0_flat_to_dense_streams_1_read;
wire   [31:0] dense_22_U0_dense_to_softmax_streams_1_din;
wire    dense_22_U0_dense_to_softmax_streams_1_write;
wire    dense_23_U0_ap_start;
wire    dense_23_U0_ap_done;
wire    dense_23_U0_ap_continue;
wire    dense_23_U0_ap_idle;
wire    dense_23_U0_ap_ready;
wire    dense_23_U0_flat_to_dense_streams_2_read;
wire   [31:0] dense_23_U0_dense_to_softmax_streams_2_din;
wire    dense_23_U0_dense_to_softmax_streams_2_write;
wire    dense_24_U0_ap_start;
wire    dense_24_U0_ap_done;
wire    dense_24_U0_ap_continue;
wire    dense_24_U0_ap_idle;
wire    dense_24_U0_ap_ready;
wire    dense_24_U0_flat_to_dense_streams_3_read;
wire   [31:0] dense_24_U0_dense_to_softmax_streams_3_din;
wire    dense_24_U0_dense_to_softmax_streams_3_write;
wire    dense_25_U0_ap_start;
wire    dense_25_U0_ap_done;
wire    dense_25_U0_ap_continue;
wire    dense_25_U0_ap_idle;
wire    dense_25_U0_ap_ready;
wire    dense_25_U0_flat_to_dense_streams_4_read;
wire   [31:0] dense_25_U0_dense_to_softmax_streams_4_din;
wire    dense_25_U0_dense_to_softmax_streams_4_write;
wire    dense_26_U0_ap_start;
wire    dense_26_U0_ap_done;
wire    dense_26_U0_ap_continue;
wire    dense_26_U0_ap_idle;
wire    dense_26_U0_ap_ready;
wire    dense_26_U0_flat_to_dense_streams_5_read;
wire   [31:0] dense_26_U0_dense_to_softmax_streams_5_din;
wire    dense_26_U0_dense_to_softmax_streams_5_write;
wire    dense_27_U0_ap_start;
wire    dense_27_U0_ap_done;
wire    dense_27_U0_ap_continue;
wire    dense_27_U0_ap_idle;
wire    dense_27_U0_ap_ready;
wire    dense_27_U0_flat_to_dense_streams_6_read;
wire   [31:0] dense_27_U0_dense_to_softmax_streams_6_din;
wire    dense_27_U0_dense_to_softmax_streams_6_write;
wire    dense_28_U0_ap_start;
wire    dense_28_U0_ap_done;
wire    dense_28_U0_ap_continue;
wire    dense_28_U0_ap_idle;
wire    dense_28_U0_ap_ready;
wire    dense_28_U0_flat_to_dense_streams_7_read;
wire   [31:0] dense_28_U0_dense_to_softmax_streams_7_din;
wire    dense_28_U0_dense_to_softmax_streams_7_write;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_dense_U0_ap_ready;
wire    ap_sync_dense_U0_ap_ready;
reg    ap_sync_reg_dense_22_U0_ap_ready;
wire    ap_sync_dense_22_U0_ap_ready;
reg    ap_sync_reg_dense_23_U0_ap_ready;
wire    ap_sync_dense_23_U0_ap_ready;
reg    ap_sync_reg_dense_24_U0_ap_ready;
wire    ap_sync_dense_24_U0_ap_ready;
reg    ap_sync_reg_dense_25_U0_ap_ready;
wire    ap_sync_dense_25_U0_ap_ready;
reg    ap_sync_reg_dense_26_U0_ap_ready;
wire    ap_sync_dense_26_U0_ap_ready;
reg    ap_sync_reg_dense_27_U0_ap_ready;
wire    ap_sync_dense_27_U0_ap_ready;
reg    ap_sync_reg_dense_28_U0_ap_ready;
wire    ap_sync_dense_28_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_dense_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dense_22_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dense_23_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dense_24_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dense_25_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dense_26_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dense_27_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dense_28_U0_ap_ready = 1'b0;
end

cnn_dense dense_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dense_U0_ap_start),
    .ap_done(dense_U0_ap_done),
    .ap_continue(dense_U0_ap_continue),
    .ap_idle(dense_U0_ap_idle),
    .ap_ready(dense_U0_ap_ready),
    .flat_to_dense_streams_0_dout(flat_to_dense_streams_0_dout),
    .flat_to_dense_streams_0_num_data_valid(9'd0),
    .flat_to_dense_streams_0_fifo_cap(9'd0),
    .flat_to_dense_streams_0_empty_n(flat_to_dense_streams_0_empty_n),
    .flat_to_dense_streams_0_read(dense_U0_flat_to_dense_streams_0_read),
    .dense_to_softmax_streams_0_din(dense_U0_dense_to_softmax_streams_0_din),
    .dense_to_softmax_streams_0_num_data_valid(5'd0),
    .dense_to_softmax_streams_0_fifo_cap(5'd0),
    .dense_to_softmax_streams_0_full_n(dense_to_softmax_streams_0_full_n),
    .dense_to_softmax_streams_0_write(dense_U0_dense_to_softmax_streams_0_write)
);

cnn_dense_22 dense_22_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dense_22_U0_ap_start),
    .ap_done(dense_22_U0_ap_done),
    .ap_continue(dense_22_U0_ap_continue),
    .ap_idle(dense_22_U0_ap_idle),
    .ap_ready(dense_22_U0_ap_ready),
    .flat_to_dense_streams_1_dout(flat_to_dense_streams_1_dout),
    .flat_to_dense_streams_1_num_data_valid(9'd0),
    .flat_to_dense_streams_1_fifo_cap(9'd0),
    .flat_to_dense_streams_1_empty_n(flat_to_dense_streams_1_empty_n),
    .flat_to_dense_streams_1_read(dense_22_U0_flat_to_dense_streams_1_read),
    .dense_to_softmax_streams_1_din(dense_22_U0_dense_to_softmax_streams_1_din),
    .dense_to_softmax_streams_1_num_data_valid(5'd0),
    .dense_to_softmax_streams_1_fifo_cap(5'd0),
    .dense_to_softmax_streams_1_full_n(dense_to_softmax_streams_1_full_n),
    .dense_to_softmax_streams_1_write(dense_22_U0_dense_to_softmax_streams_1_write)
);

cnn_dense_23 dense_23_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dense_23_U0_ap_start),
    .ap_done(dense_23_U0_ap_done),
    .ap_continue(dense_23_U0_ap_continue),
    .ap_idle(dense_23_U0_ap_idle),
    .ap_ready(dense_23_U0_ap_ready),
    .flat_to_dense_streams_2_dout(flat_to_dense_streams_2_dout),
    .flat_to_dense_streams_2_num_data_valid(9'd0),
    .flat_to_dense_streams_2_fifo_cap(9'd0),
    .flat_to_dense_streams_2_empty_n(flat_to_dense_streams_2_empty_n),
    .flat_to_dense_streams_2_read(dense_23_U0_flat_to_dense_streams_2_read),
    .dense_to_softmax_streams_2_din(dense_23_U0_dense_to_softmax_streams_2_din),
    .dense_to_softmax_streams_2_num_data_valid(5'd0),
    .dense_to_softmax_streams_2_fifo_cap(5'd0),
    .dense_to_softmax_streams_2_full_n(dense_to_softmax_streams_2_full_n),
    .dense_to_softmax_streams_2_write(dense_23_U0_dense_to_softmax_streams_2_write)
);

cnn_dense_24 dense_24_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dense_24_U0_ap_start),
    .ap_done(dense_24_U0_ap_done),
    .ap_continue(dense_24_U0_ap_continue),
    .ap_idle(dense_24_U0_ap_idle),
    .ap_ready(dense_24_U0_ap_ready),
    .flat_to_dense_streams_3_dout(flat_to_dense_streams_3_dout),
    .flat_to_dense_streams_3_num_data_valid(9'd0),
    .flat_to_dense_streams_3_fifo_cap(9'd0),
    .flat_to_dense_streams_3_empty_n(flat_to_dense_streams_3_empty_n),
    .flat_to_dense_streams_3_read(dense_24_U0_flat_to_dense_streams_3_read),
    .dense_to_softmax_streams_3_din(dense_24_U0_dense_to_softmax_streams_3_din),
    .dense_to_softmax_streams_3_num_data_valid(5'd0),
    .dense_to_softmax_streams_3_fifo_cap(5'd0),
    .dense_to_softmax_streams_3_full_n(dense_to_softmax_streams_3_full_n),
    .dense_to_softmax_streams_3_write(dense_24_U0_dense_to_softmax_streams_3_write)
);

cnn_dense_25 dense_25_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dense_25_U0_ap_start),
    .ap_done(dense_25_U0_ap_done),
    .ap_continue(dense_25_U0_ap_continue),
    .ap_idle(dense_25_U0_ap_idle),
    .ap_ready(dense_25_U0_ap_ready),
    .flat_to_dense_streams_4_dout(flat_to_dense_streams_4_dout),
    .flat_to_dense_streams_4_num_data_valid(9'd0),
    .flat_to_dense_streams_4_fifo_cap(9'd0),
    .flat_to_dense_streams_4_empty_n(flat_to_dense_streams_4_empty_n),
    .flat_to_dense_streams_4_read(dense_25_U0_flat_to_dense_streams_4_read),
    .dense_to_softmax_streams_4_din(dense_25_U0_dense_to_softmax_streams_4_din),
    .dense_to_softmax_streams_4_num_data_valid(5'd0),
    .dense_to_softmax_streams_4_fifo_cap(5'd0),
    .dense_to_softmax_streams_4_full_n(dense_to_softmax_streams_4_full_n),
    .dense_to_softmax_streams_4_write(dense_25_U0_dense_to_softmax_streams_4_write)
);

cnn_dense_26 dense_26_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dense_26_U0_ap_start),
    .ap_done(dense_26_U0_ap_done),
    .ap_continue(dense_26_U0_ap_continue),
    .ap_idle(dense_26_U0_ap_idle),
    .ap_ready(dense_26_U0_ap_ready),
    .flat_to_dense_streams_5_dout(flat_to_dense_streams_5_dout),
    .flat_to_dense_streams_5_num_data_valid(9'd0),
    .flat_to_dense_streams_5_fifo_cap(9'd0),
    .flat_to_dense_streams_5_empty_n(flat_to_dense_streams_5_empty_n),
    .flat_to_dense_streams_5_read(dense_26_U0_flat_to_dense_streams_5_read),
    .dense_to_softmax_streams_5_din(dense_26_U0_dense_to_softmax_streams_5_din),
    .dense_to_softmax_streams_5_num_data_valid(5'd0),
    .dense_to_softmax_streams_5_fifo_cap(5'd0),
    .dense_to_softmax_streams_5_full_n(dense_to_softmax_streams_5_full_n),
    .dense_to_softmax_streams_5_write(dense_26_U0_dense_to_softmax_streams_5_write)
);

cnn_dense_27 dense_27_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dense_27_U0_ap_start),
    .ap_done(dense_27_U0_ap_done),
    .ap_continue(dense_27_U0_ap_continue),
    .ap_idle(dense_27_U0_ap_idle),
    .ap_ready(dense_27_U0_ap_ready),
    .flat_to_dense_streams_6_dout(flat_to_dense_streams_6_dout),
    .flat_to_dense_streams_6_num_data_valid(9'd0),
    .flat_to_dense_streams_6_fifo_cap(9'd0),
    .flat_to_dense_streams_6_empty_n(flat_to_dense_streams_6_empty_n),
    .flat_to_dense_streams_6_read(dense_27_U0_flat_to_dense_streams_6_read),
    .dense_to_softmax_streams_6_din(dense_27_U0_dense_to_softmax_streams_6_din),
    .dense_to_softmax_streams_6_num_data_valid(5'd0),
    .dense_to_softmax_streams_6_fifo_cap(5'd0),
    .dense_to_softmax_streams_6_full_n(dense_to_softmax_streams_6_full_n),
    .dense_to_softmax_streams_6_write(dense_27_U0_dense_to_softmax_streams_6_write)
);

cnn_dense_28 dense_28_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dense_28_U0_ap_start),
    .ap_done(dense_28_U0_ap_done),
    .ap_continue(dense_28_U0_ap_continue),
    .ap_idle(dense_28_U0_ap_idle),
    .ap_ready(dense_28_U0_ap_ready),
    .flat_to_dense_streams_7_dout(flat_to_dense_streams_7_dout),
    .flat_to_dense_streams_7_num_data_valid(9'd0),
    .flat_to_dense_streams_7_fifo_cap(9'd0),
    .flat_to_dense_streams_7_empty_n(flat_to_dense_streams_7_empty_n),
    .flat_to_dense_streams_7_read(dense_28_U0_flat_to_dense_streams_7_read),
    .dense_to_softmax_streams_7_din(dense_28_U0_dense_to_softmax_streams_7_din),
    .dense_to_softmax_streams_7_num_data_valid(5'd0),
    .dense_to_softmax_streams_7_fifo_cap(5'd0),
    .dense_to_softmax_streams_7_full_n(dense_to_softmax_streams_7_full_n),
    .dense_to_softmax_streams_7_write(dense_28_U0_dense_to_softmax_streams_7_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dense_22_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dense_22_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dense_22_U0_ap_ready <= ap_sync_dense_22_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dense_23_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dense_23_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dense_23_U0_ap_ready <= ap_sync_dense_23_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dense_24_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dense_24_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dense_24_U0_ap_ready <= ap_sync_dense_24_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dense_25_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dense_25_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dense_25_U0_ap_ready <= ap_sync_dense_25_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dense_26_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dense_26_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dense_26_U0_ap_ready <= ap_sync_dense_26_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dense_27_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dense_27_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dense_27_U0_ap_ready <= ap_sync_dense_27_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dense_28_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dense_28_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dense_28_U0_ap_ready <= ap_sync_dense_28_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dense_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dense_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dense_U0_ap_ready <= ap_sync_dense_U0_ap_ready;
        end
    end
end

assign ap_done = ap_sync_done;

assign ap_idle = (dense_U0_ap_idle & dense_28_U0_ap_idle & dense_27_U0_ap_idle & dense_26_U0_ap_idle & dense_25_U0_ap_idle & dense_24_U0_ap_idle & dense_23_U0_ap_idle & dense_22_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_continue = (ap_sync_done & ap_continue);

assign ap_sync_dense_22_U0_ap_ready = (dense_22_U0_ap_ready | ap_sync_reg_dense_22_U0_ap_ready);

assign ap_sync_dense_23_U0_ap_ready = (dense_23_U0_ap_ready | ap_sync_reg_dense_23_U0_ap_ready);

assign ap_sync_dense_24_U0_ap_ready = (dense_24_U0_ap_ready | ap_sync_reg_dense_24_U0_ap_ready);

assign ap_sync_dense_25_U0_ap_ready = (dense_25_U0_ap_ready | ap_sync_reg_dense_25_U0_ap_ready);

assign ap_sync_dense_26_U0_ap_ready = (dense_26_U0_ap_ready | ap_sync_reg_dense_26_U0_ap_ready);

assign ap_sync_dense_27_U0_ap_ready = (dense_27_U0_ap_ready | ap_sync_reg_dense_27_U0_ap_ready);

assign ap_sync_dense_28_U0_ap_ready = (dense_28_U0_ap_ready | ap_sync_reg_dense_28_U0_ap_ready);

assign ap_sync_dense_U0_ap_ready = (dense_U0_ap_ready | ap_sync_reg_dense_U0_ap_ready);

assign ap_sync_done = (dense_U0_ap_done & dense_28_U0_ap_done & dense_27_U0_ap_done & dense_26_U0_ap_done & dense_25_U0_ap_done & dense_24_U0_ap_done & dense_23_U0_ap_done & dense_22_U0_ap_done);

assign ap_sync_ready = (ap_sync_dense_U0_ap_ready & ap_sync_dense_28_U0_ap_ready & ap_sync_dense_27_U0_ap_ready & ap_sync_dense_26_U0_ap_ready & ap_sync_dense_25_U0_ap_ready & ap_sync_dense_24_U0_ap_ready & ap_sync_dense_23_U0_ap_ready & ap_sync_dense_22_U0_ap_ready);

assign dense_22_U0_ap_continue = ap_sync_continue;

assign dense_22_U0_ap_start = ((ap_sync_reg_dense_22_U0_ap_ready ^ 1'b1) & ap_start);

assign dense_23_U0_ap_continue = ap_sync_continue;

assign dense_23_U0_ap_start = ((ap_sync_reg_dense_23_U0_ap_ready ^ 1'b1) & ap_start);

assign dense_24_U0_ap_continue = ap_sync_continue;

assign dense_24_U0_ap_start = ((ap_sync_reg_dense_24_U0_ap_ready ^ 1'b1) & ap_start);

assign dense_25_U0_ap_continue = ap_sync_continue;

assign dense_25_U0_ap_start = ((ap_sync_reg_dense_25_U0_ap_ready ^ 1'b1) & ap_start);

assign dense_26_U0_ap_continue = ap_sync_continue;

assign dense_26_U0_ap_start = ((ap_sync_reg_dense_26_U0_ap_ready ^ 1'b1) & ap_start);

assign dense_27_U0_ap_continue = ap_sync_continue;

assign dense_27_U0_ap_start = ((ap_sync_reg_dense_27_U0_ap_ready ^ 1'b1) & ap_start);

assign dense_28_U0_ap_continue = ap_sync_continue;

assign dense_28_U0_ap_start = ((ap_sync_reg_dense_28_U0_ap_ready ^ 1'b1) & ap_start);

assign dense_U0_ap_continue = ap_sync_continue;

assign dense_U0_ap_start = ((ap_sync_reg_dense_U0_ap_ready ^ 1'b1) & ap_start);

assign dense_to_softmax_streams_0_din = dense_U0_dense_to_softmax_streams_0_din;

assign dense_to_softmax_streams_0_write = dense_U0_dense_to_softmax_streams_0_write;

assign dense_to_softmax_streams_1_din = dense_22_U0_dense_to_softmax_streams_1_din;

assign dense_to_softmax_streams_1_write = dense_22_U0_dense_to_softmax_streams_1_write;

assign dense_to_softmax_streams_2_din = dense_23_U0_dense_to_softmax_streams_2_din;

assign dense_to_softmax_streams_2_write = dense_23_U0_dense_to_softmax_streams_2_write;

assign dense_to_softmax_streams_3_din = dense_24_U0_dense_to_softmax_streams_3_din;

assign dense_to_softmax_streams_3_write = dense_24_U0_dense_to_softmax_streams_3_write;

assign dense_to_softmax_streams_4_din = dense_25_U0_dense_to_softmax_streams_4_din;

assign dense_to_softmax_streams_4_write = dense_25_U0_dense_to_softmax_streams_4_write;

assign dense_to_softmax_streams_5_din = dense_26_U0_dense_to_softmax_streams_5_din;

assign dense_to_softmax_streams_5_write = dense_26_U0_dense_to_softmax_streams_5_write;

assign dense_to_softmax_streams_6_din = dense_27_U0_dense_to_softmax_streams_6_din;

assign dense_to_softmax_streams_6_write = dense_27_U0_dense_to_softmax_streams_6_write;

assign dense_to_softmax_streams_7_din = dense_28_U0_dense_to_softmax_streams_7_din;

assign dense_to_softmax_streams_7_write = dense_28_U0_dense_to_softmax_streams_7_write;

assign flat_to_dense_streams_0_read = dense_U0_flat_to_dense_streams_0_read;

assign flat_to_dense_streams_1_read = dense_22_U0_flat_to_dense_streams_1_read;

assign flat_to_dense_streams_2_read = dense_23_U0_flat_to_dense_streams_2_read;

assign flat_to_dense_streams_3_read = dense_24_U0_flat_to_dense_streams_3_read;

assign flat_to_dense_streams_4_read = dense_25_U0_flat_to_dense_streams_4_read;

assign flat_to_dense_streams_5_read = dense_26_U0_flat_to_dense_streams_5_read;

assign flat_to_dense_streams_6_read = dense_27_U0_flat_to_dense_streams_6_read;

assign flat_to_dense_streams_7_read = dense_28_U0_flat_to_dense_streams_7_read;

endmodule //cnn_dense_layer
