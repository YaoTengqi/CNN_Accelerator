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

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

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
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
reg   [31:0] weight_buf_load_reg_212;
wire    ap_CS_fsm_state3;
reg   [31:0] weight_buf_load_17_reg_227;
reg   [31:0] weight_buf_load_18_reg_232;
wire    ap_CS_fsm_state4;
reg   [31:0] weight_buf_load_19_reg_247;
reg   [31:0] weight_buf_load_20_reg_252;
wire    ap_CS_fsm_state5;
reg   [31:0] weight_buf_load_21_reg_267;
reg   [31:0] weight_buf_load_22_reg_272;
reg   [31:0] weight_buf_load_23_reg_277;
wire    ap_CS_fsm_state6;
reg   [31:0] weight_buf_load_24_reg_282;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_156_p1;
reg   [31:0] conv3_reg_292;
wire    ap_CS_fsm_state12;
wire   [31:0] grp_fu_161_p1;
reg   [31:0] w_reg_297;
wire   [31:0] grp_fu_165_p1;
reg   [31:0] w_s_reg_302;
wire   [31:0] grp_fu_169_p1;
reg   [31:0] w_7_reg_307;
wire   [31:0] grp_fu_173_p1;
reg   [31:0] w_8_reg_312;
wire   [31:0] grp_fu_177_p1;
reg   [31:0] w_9_reg_317;
wire   [31:0] grp_fu_181_p1;
reg   [31:0] w_1_reg_322;
wire   [31:0] grp_fu_185_p1;
reg   [31:0] w_2_reg_327;
wire   [31:0] grp_fu_189_p1;
reg   [31:0] w_3_reg_332;
wire   [31:0] grp_fu_193_p1;
reg   [31:0] w_4_reg_337;
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
wire    ap_CS_fsm_state13;
reg    ap_block_state1;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
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
    .w(w_reg_297),
    .w_11(w_s_reg_302),
    .w_7(w_7_reg_307),
    .w_8(w_8_reg_312),
    .w_9(w_9_reg_317),
    .w_1(w_1_reg_322),
    .w_2(w_2_reg_327),
    .w_3(w_3_reg_332),
    .w_4(w_4_reg_337),
    .conv3(conv3_reg_292),
    .conv_to_pool_streams_5_din(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_5_din),
    .conv_to_pool_streams_5_num_data_valid(11'd0),
    .conv_to_pool_streams_5_fifo_cap(11'd0),
    .conv_to_pool_streams_5_full_n(conv_to_pool_streams_5_full_n),
    .conv_to_pool_streams_5_write(grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_5_write)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U205(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(biases_buf),
    .ce(1'b1),
    .dout(grp_fu_156_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U206(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_reg_212),
    .ce(1'b1),
    .dout(grp_fu_161_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U207(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_17_reg_227),
    .ce(1'b1),
    .dout(grp_fu_165_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U208(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_18_reg_232),
    .ce(1'b1),
    .dout(grp_fu_169_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U209(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_19_reg_247),
    .ce(1'b1),
    .dout(grp_fu_173_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U210(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_20_reg_252),
    .ce(1'b1),
    .dout(grp_fu_177_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U211(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_21_reg_267),
    .ce(1'b1),
    .dout(grp_fu_181_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U212(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_22_reg_272),
    .ce(1'b1),
    .dout(grp_fu_185_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U213(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_23_reg_277),
    .ce(1'b1),
    .dout(grp_fu_189_p1)
);

cnn_sitofp_32ns_32_6_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U214(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_buf_load_24_reg_282),
    .ce(1'b1),
    .dout(grp_fu_193_p1)
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
        end else if (((1'b1 == ap_CS_fsm_state13) & (grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= 1'b1;
        end else if ((grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_ready == 1'b1)) begin
            grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        conv3_reg_292 <= grp_fu_156_p1;
        w_1_reg_322 <= grp_fu_181_p1;
        w_2_reg_327 <= grp_fu_185_p1;
        w_3_reg_332 <= grp_fu_189_p1;
        w_4_reg_337 <= grp_fu_193_p1;
        w_7_reg_307 <= grp_fu_169_p1;
        w_8_reg_312 <= grp_fu_173_p1;
        w_9_reg_317 <= grp_fu_177_p1;
        w_reg_297 <= grp_fu_161_p1;
        w_s_reg_302 <= grp_fu_165_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weight_buf_load_17_reg_227 <= weight_buf_q1;
        weight_buf_load_18_reg_232 <= weight_buf_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        weight_buf_load_19_reg_247 <= weight_buf_q0;
        weight_buf_load_20_reg_252 <= weight_buf_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        weight_buf_load_21_reg_267 <= weight_buf_q0;
        weight_buf_load_22_reg_272 <= weight_buf_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        weight_buf_load_23_reg_277 <= weight_buf_q0;
        weight_buf_load_24_reg_282 <= weight_buf_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        weight_buf_load_reg_212 <= weight_buf_q0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

always @ (*) begin
    if ((grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
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

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state13) & (grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
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
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        weight_buf_ce0 = 1'b1;
    end else begin
        weight_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
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
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_convolution_5_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

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
