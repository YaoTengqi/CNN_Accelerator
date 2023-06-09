// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnn_convolution_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        pad_img_address0,
        pad_img_ce0,
        pad_img_q0,
        pad_img_address1,
        pad_img_ce1,
        pad_img_q1,
        weight_buf_address0,
        weight_buf_ce0,
        weight_buf_q0,
        weight_buf_address1,
        weight_buf_ce1,
        weight_buf_q1,
        biases_buf,
        conv_to_pool_streams_5_din,
        conv_to_pool_streams_5_num_data_valid,
        conv_to_pool_streams_5_fifo_cap,
        conv_to_pool_streams_5_full_n,
        conv_to_pool_streams_5_write
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] pad_img_address0;
output   pad_img_ce0;
input  [31:0] pad_img_q0;
output  [9:0] pad_img_address1;
output   pad_img_ce1;
input  [31:0] pad_img_q1;
output  [3:0] weight_buf_address0;
output   weight_buf_ce0;
input  [31:0] weight_buf_q0;
output  [3:0] weight_buf_address1;
output   weight_buf_ce1;
input  [31:0] weight_buf_q1;
input  [31:0] biases_buf;
output  [31:0] conv_to_pool_streams_5_din;
input  [10:0] conv_to_pool_streams_5_num_data_valid;
input  [10:0] conv_to_pool_streams_5_fifo_cap;
input   conv_to_pool_streams_5_full_n;
output   conv_to_pool_streams_5_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] weight_buf_address0;
reg weight_buf_ce0;
reg[3:0] weight_buf_address1;
reg weight_buf_ce1;
reg conv_to_pool_streams_5_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
reg   [31:0] weight_buf_load_reg_173;
wire    ap_CS_fsm_state3;
reg   [31:0] weight_buf_load_17_reg_188;
reg   [31:0] weight_buf_load_18_reg_193;
wire    ap_CS_fsm_state4;
reg   [31:0] weight_buf_load_19_reg_208;
reg   [31:0] weight_buf_load_20_reg_213;
wire    ap_CS_fsm_state5;
reg   [31:0] weight_buf_load_21_reg_233;
reg   [31:0] weight_buf_load_22_reg_238;
reg   [31:0] weight_buf_load_23_reg_243;
wire    ap_CS_fsm_state6;
reg   [31:0] weight_buf_load_24_reg_248;
wire    grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start;
wire    grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done;
wire    grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_idle;
wire    grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_ready;
wire   [9:0] grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address0;
wire    grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce0;
wire   [9:0] grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address1;
wire    grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce1;
wire   [31:0] grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_5_din;
wire    grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_5_write;
reg    grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    ap_block_state1;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg = 1'b0;
end

cnn_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start),
    .ap_done(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done),
    .ap_idle(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_idle),
    .ap_ready(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_ready),
    .pad_img_address0(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address0),
    .pad_img_ce0(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce0),
    .pad_img_q0(pad_img_q0),
    .pad_img_address1(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address1),
    .pad_img_ce1(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce1),
    .pad_img_q1(pad_img_q1),
    .w(weight_buf_load_reg_173),
    .w_17(weight_buf_load_17_reg_188),
    .w_18(weight_buf_load_18_reg_193),
    .w_19(weight_buf_load_19_reg_208),
    .w_20(weight_buf_load_20_reg_213),
    .w_21(weight_buf_load_21_reg_233),
    .w_22(weight_buf_load_22_reg_238),
    .w_23(weight_buf_load_23_reg_243),
    .w_24(weight_buf_load_24_reg_248),
    .biases_buf(biases_buf),
    .conv_to_pool_streams_5_din(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_5_din),
    .conv_to_pool_streams_5_num_data_valid(11'd0),
    .conv_to_pool_streams_5_fifo_cap(11'd0),
    .conv_to_pool_streams_5_full_n(conv_to_pool_streams_5_full_n),
    .conv_to_pool_streams_5_write(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_5_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & (grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= 1'b1;
        end else if ((grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_ready == 1'b1)) begin
            grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight_buf_load_17_reg_188 <= weight_buf_q1;
        weight_buf_load_18_reg_193 <= weight_buf_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        weight_buf_load_19_reg_208 <= weight_buf_q0;
        weight_buf_load_20_reg_213 <= weight_buf_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        weight_buf_load_21_reg_233 <= weight_buf_q0;
        weight_buf_load_22_reg_238 <= weight_buf_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        weight_buf_load_23_reg_243 <= weight_buf_q0;
        weight_buf_load_24_reg_248 <= weight_buf_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weight_buf_load_reg_173 <= weight_buf_q0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        conv_to_pool_streams_5_write = grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_5_write;
    end else begin
        conv_to_pool_streams_5_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        weight_buf_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weight_buf_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weight_buf_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weight_buf_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weight_buf_address0 = 64'd0;
    end else begin
        weight_buf_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        weight_buf_address1 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weight_buf_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weight_buf_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weight_buf_address1 = 64'd1;
    end else begin
        weight_buf_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        weight_buf_ce0 = 1'b1;
    end else begin
        weight_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        weight_buf_ce1 = 1'b1;
    end else begin
        weight_buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign conv_to_pool_streams_5_din = grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_5_din;

assign grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start = grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg;

assign pad_img_address0 = grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address0;

assign pad_img_address1 = grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address1;

assign pad_img_ce0 = grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce0;

assign pad_img_ce1 = grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce1;

endmodule //cnn_convolution_5
