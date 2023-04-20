// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnn_max_pooling_9 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        conv_to_pool_streams_2_dout,
        conv_to_pool_streams_2_num_data_valid,
        conv_to_pool_streams_2_fifo_cap,
        conv_to_pool_streams_2_empty_n,
        conv_to_pool_streams_2_read,
        pool_to_flat_streams_2_din,
        pool_to_flat_streams_2_num_data_valid,
        pool_to_flat_streams_2_fifo_cap,
        pool_to_flat_streams_2_full_n,
        pool_to_flat_streams_2_write
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] conv_to_pool_streams_2_dout;
input  [10:0] conv_to_pool_streams_2_num_data_valid;
input  [10:0] conv_to_pool_streams_2_fifo_cap;
input   conv_to_pool_streams_2_empty_n;
output   conv_to_pool_streams_2_read;
output  [31:0] pool_to_flat_streams_2_din;
input  [8:0] pool_to_flat_streams_2_num_data_valid;
input  [8:0] pool_to_flat_streams_2_fifo_cap;
input   pool_to_flat_streams_2_full_n;
output   pool_to_flat_streams_2_write;

reg ap_idle;
reg conv_to_pool_streams_2_read;
reg pool_to_flat_streams_2_write;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
reg   [0:0] icmp_ln15_reg_375;
reg    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_state8_pp0_stage3_iter1;
reg    ap_done_reg;
reg    ap_block_pp0_stage3_subdone;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    conv_to_pool_streams_2_blk_n;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln15_fu_102_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg    pool_to_flat_streams_2_blk_n;
reg   [31:0] reg_90;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state9_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state6_pp0_stage1_iter1;
wire    ap_block_state10_pp0_stage1_iter2;
reg    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln15_reg_375_pp0_iter1_reg;
wire   [22:0] trunc_ln28_fu_114_p1;
reg   [22:0] trunc_ln28_reg_379;
wire   [0:0] grp_fu_84_p2;
reg   [0:0] icmp_ln28_reg_384;
wire   [31:0] value_fu_123_p1;
reg   [31:0] value_reg_389;
wire   [0:0] icmp_ln28_1_fu_128_p2;
reg   [0:0] icmp_ln28_1_reg_395;
reg   [0:0] icmp_ln28_2_reg_400;
wire   [0:0] icmp_ln28_3_fu_137_p2;
reg   [0:0] icmp_ln28_3_reg_405;
wire   [31:0] pool_1_fu_153_p3;
reg   [31:0] pool_1_reg_410;
reg    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state7_pp0_stage2_iter1;
reg    ap_block_state11_pp0_stage2_iter2;
reg    ap_block_pp0_stage2_11001;
reg   [31:0] conv_to_pool_streams_2_read_2_reg_417;
reg   [0:0] icmp_ln28_6_reg_422;
reg   [0:0] icmp_ln28_6_reg_422_pp0_iter1_reg;
wire   [0:0] icmp_ln28_7_fu_164_p2;
reg   [0:0] icmp_ln28_7_reg_427;
reg   [0:0] icmp_ln28_7_reg_427_pp0_iter1_reg;
wire   [31:0] value_1_fu_170_p1;
reg   [31:0] value_1_reg_432;
reg    ap_block_pp0_stage3_11001;
reg   [31:0] conv_to_pool_streams_2_read_3_reg_438;
reg   [31:0] conv_to_pool_streams_2_read_3_reg_438_pp0_iter1_reg;
reg   [0:0] icmp_ln28_10_reg_443;
reg   [0:0] icmp_ln28_10_reg_443_pp0_iter1_reg;
wire   [0:0] icmp_ln28_11_fu_179_p2;
reg   [0:0] icmp_ln28_11_reg_448;
reg   [0:0] icmp_ln28_11_reg_448_pp0_iter1_reg;
wire   [31:0] pool_3_fu_236_p3;
reg   [31:0] pool_3_reg_453;
wire   [31:0] value_2_fu_242_p1;
reg   [31:0] value_2_reg_460;
wire   [31:0] pool_5_fu_297_p3;
reg   [31:0] pool_5_reg_466;
wire   [31:0] value_3_fu_303_p1;
reg   [31:0] value_3_reg_473;
wire   [31:0] pool_7_fu_358_p3;
reg   [31:0] pool_7_reg_479;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage2_subdone;
reg   [7:0] indvar_flatten_fu_52;
wire   [7:0] add_ln15_fu_108_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    ap_block_pp0_stage2_01001;
reg   [31:0] grp_fu_69_p0;
reg   [31:0] grp_fu_69_p1;
wire   [7:0] grp_fu_74_p4;
wire   [22:0] trunc_ln28_1_fu_133_p1;
wire   [0:0] or_ln28_fu_143_p2;
wire   [0:0] grp_fu_69_p2;
wire   [0:0] and_ln28_fu_147_p2;
wire   [22:0] trunc_ln28_3_fu_160_p1;
wire   [22:0] trunc_ln28_5_fu_175_p1;
wire   [31:0] bitcast_ln28_fu_185_p1;
wire   [7:0] tmp_3_fu_188_p4;
wire   [22:0] trunc_ln28_2_fu_198_p1;
wire   [0:0] icmp_ln28_5_fu_212_p2;
wire   [0:0] icmp_ln28_4_fu_206_p2;
wire   [0:0] or_ln28_1_fu_202_p2;
wire   [0:0] or_ln28_2_fu_218_p2;
wire   [0:0] and_ln28_1_fu_224_p2;
wire   [0:0] and_ln28_2_fu_230_p2;
wire   [31:0] bitcast_ln28_1_fu_246_p1;
wire   [7:0] tmp_6_fu_249_p4;
wire   [22:0] trunc_ln28_4_fu_259_p1;
wire   [0:0] icmp_ln28_9_fu_273_p2;
wire   [0:0] icmp_ln28_8_fu_267_p2;
wire   [0:0] or_ln28_3_fu_263_p2;
wire   [0:0] or_ln28_4_fu_279_p2;
wire   [0:0] and_ln28_3_fu_285_p2;
wire   [0:0] and_ln28_4_fu_291_p2;
wire   [31:0] bitcast_ln28_2_fu_307_p1;
wire   [7:0] tmp_9_fu_310_p4;
wire   [22:0] trunc_ln28_6_fu_320_p1;
wire   [0:0] icmp_ln28_13_fu_334_p2;
wire   [0:0] icmp_ln28_12_fu_328_p2;
wire   [0:0] or_ln28_5_fu_324_p2;
wire   [0:0] or_ln28_6_fu_340_p2;
wire   [0:0] and_ln28_5_fu_346_p2;
wire   [0:0] and_ln28_6_fu_352_p2;
reg    grp_fu_69_ce;
reg    ap_block_pp0_stage1_00001;
reg    ap_block_pp0_stage3_00001;
reg    ap_block_pp0_stage2_00001;
reg    ap_block_pp0_stage0_00001;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
reg    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_134;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

cnn_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U319(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_69_p0),
    .din1(grp_fu_69_p1),
    .ce(grp_fu_69_ce),
    .opcode(5'd2),
    .dout(grp_fu_69_p2)
);

cnn_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_134)) begin
        if ((icmp_ln15_fu_102_p2 == 1'd0)) begin
            indvar_flatten_fu_52 <= add_ln15_fu_108_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_52 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        conv_to_pool_streams_2_read_2_reg_417 <= conv_to_pool_streams_2_dout;
        icmp_ln28_6_reg_422 <= grp_fu_84_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        conv_to_pool_streams_2_read_3_reg_438 <= conv_to_pool_streams_2_dout;
        icmp_ln28_10_reg_443 <= grp_fu_84_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        conv_to_pool_streams_2_read_3_reg_438_pp0_iter1_reg <= conv_to_pool_streams_2_read_3_reg_438;
        icmp_ln28_10_reg_443_pp0_iter1_reg <= icmp_ln28_10_reg_443;
        icmp_ln28_11_reg_448_pp0_iter1_reg <= icmp_ln28_11_reg_448;
        pool_5_reg_466 <= pool_5_fu_297_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15_reg_375 <= icmp_ln15_fu_102_p2;
        icmp_ln15_reg_375_pp0_iter1_reg <= icmp_ln15_reg_375;
        pool_3_reg_453 <= pool_3_fu_236_p3;
        value_3_reg_473 <= value_3_fu_303_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln15_reg_375 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln28_11_reg_448 <= icmp_ln28_11_fu_179_p2;
        value_1_reg_432 <= value_1_fu_170_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln15_reg_375 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln28_1_reg_395 <= icmp_ln28_1_fu_128_p2;
        icmp_ln28_3_reg_405 <= icmp_ln28_3_fu_137_p2;
        value_reg_389 <= value_fu_123_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln28_2_reg_400 <= grp_fu_84_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln28_6_reg_422_pp0_iter1_reg <= icmp_ln28_6_reg_422;
        icmp_ln28_7_reg_427_pp0_iter1_reg <= icmp_ln28_7_reg_427;
        value_2_reg_460 <= value_2_fu_242_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln15_reg_375 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln28_7_reg_427 <= icmp_ln28_7_fu_164_p2;
        pool_1_reg_410 <= pool_1_fu_153_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_102_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_384 <= grp_fu_84_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pool_7_reg_479 <= pool_7_fu_358_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln15_fu_102_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_90 <= conv_to_pool_streams_2_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_102_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln28_reg_379 <= trunc_ln28_fu_114_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (icmp_ln15_reg_375 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln15_reg_375_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_52;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln15_fu_102_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        conv_to_pool_streams_2_blk_n = conv_to_pool_streams_2_empty_n;
    end else begin
        conv_to_pool_streams_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((icmp_ln15_fu_102_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln15_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        conv_to_pool_streams_2_read = 1'b1;
    end else begin
        conv_to_pool_streams_2_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_69_ce = 1'b1;
    end else begin
        grp_fu_69_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_69_p0 = value_3_fu_303_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_69_p0 = value_2_fu_242_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_69_p0 = value_1_fu_170_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_69_p0 = value_fu_123_p1;
    end else begin
        grp_fu_69_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_69_p1 = pool_5_reg_466;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_69_p1 = pool_3_reg_453;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_69_p1 = pool_1_reg_410;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_69_p1 = 32'd8388608;
    end else begin
        grp_fu_69_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pool_to_flat_streams_2_blk_n = pool_to_flat_streams_2_full_n;
    end else begin
        pool_to_flat_streams_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pool_to_flat_streams_2_write = 1'b1;
    end else begin
        pool_to_flat_streams_2_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln15_fu_108_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);

assign and_ln28_1_fu_224_p2 = (or_ln28_2_fu_218_p2 & or_ln28_1_fu_202_p2);

assign and_ln28_2_fu_230_p2 = (grp_fu_69_p2 & and_ln28_1_fu_224_p2);

assign and_ln28_3_fu_285_p2 = (or_ln28_4_fu_279_p2 & or_ln28_3_fu_263_p2);

assign and_ln28_4_fu_291_p2 = (grp_fu_69_p2 & and_ln28_3_fu_285_p2);

assign and_ln28_5_fu_346_p2 = (or_ln28_6_fu_340_p2 & or_ln28_5_fu_324_p2);

assign and_ln28_6_fu_352_p2 = (grp_fu_69_p2 & and_ln28_5_fu_346_p2);

assign and_ln28_fu_147_p2 = (or_ln28_fu_143_p2 & grp_fu_69_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_00001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln15_fu_102_p2 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln15_fu_102_p2 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln15_fu_102_p2 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0))));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_00001 = ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_00001 = (((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((pool_to_flat_streams_2_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage2_01001 = (((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((pool_to_flat_streams_2_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage2_11001 = (((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((pool_to_flat_streams_2_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = (((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((pool_to_flat_streams_2_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_00001 = ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_done_reg == 1'b1) | ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_done_reg == 1'b1) | ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

assign ap_block_state10_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp0_stage2_iter2 = (pool_to_flat_streams_2_full_n == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((icmp_ln15_fu_102_p2 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = ((icmp_ln15_reg_375 == 1'd0) & (conv_to_pool_streams_2_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_134 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;

assign bitcast_ln28_1_fu_246_p1 = pool_3_reg_453;

assign bitcast_ln28_2_fu_307_p1 = pool_5_reg_466;

assign bitcast_ln28_fu_185_p1 = pool_1_reg_410;

assign grp_fu_74_p4 = {{conv_to_pool_streams_2_dout[30:23]}};

assign grp_fu_84_p2 = ((grp_fu_74_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln15_fu_102_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd196) ? 1'b1 : 1'b0);

assign icmp_ln28_11_fu_179_p2 = ((trunc_ln28_5_fu_175_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_12_fu_328_p2 = ((tmp_9_fu_310_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln28_13_fu_334_p2 = ((trunc_ln28_6_fu_320_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_1_fu_128_p2 = ((trunc_ln28_reg_379 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_3_fu_137_p2 = ((trunc_ln28_1_fu_133_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_4_fu_206_p2 = ((tmp_3_fu_188_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln28_5_fu_212_p2 = ((trunc_ln28_2_fu_198_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_7_fu_164_p2 = ((trunc_ln28_3_fu_160_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_8_fu_267_p2 = ((tmp_6_fu_249_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln28_9_fu_273_p2 = ((trunc_ln28_4_fu_259_p1 == 23'd0) ? 1'b1 : 1'b0);

assign or_ln28_1_fu_202_p2 = (icmp_ln28_3_reg_405 | icmp_ln28_2_reg_400);

assign or_ln28_2_fu_218_p2 = (icmp_ln28_5_fu_212_p2 | icmp_ln28_4_fu_206_p2);

assign or_ln28_3_fu_263_p2 = (icmp_ln28_7_reg_427_pp0_iter1_reg | icmp_ln28_6_reg_422_pp0_iter1_reg);

assign or_ln28_4_fu_279_p2 = (icmp_ln28_9_fu_273_p2 | icmp_ln28_8_fu_267_p2);

assign or_ln28_5_fu_324_p2 = (icmp_ln28_11_reg_448_pp0_iter1_reg | icmp_ln28_10_reg_443_pp0_iter1_reg);

assign or_ln28_6_fu_340_p2 = (icmp_ln28_13_fu_334_p2 | icmp_ln28_12_fu_328_p2);

assign or_ln28_fu_143_p2 = (icmp_ln28_reg_384 | icmp_ln28_1_reg_395);

assign pool_1_fu_153_p3 = ((and_ln28_fu_147_p2[0:0] == 1'b1) ? value_reg_389 : 32'd8388608);

assign pool_3_fu_236_p3 = ((and_ln28_2_fu_230_p2[0:0] == 1'b1) ? value_1_reg_432 : pool_1_reg_410);

assign pool_5_fu_297_p3 = ((and_ln28_4_fu_291_p2[0:0] == 1'b1) ? value_2_reg_460 : pool_3_reg_453);

assign pool_7_fu_358_p3 = ((and_ln28_6_fu_352_p2[0:0] == 1'b1) ? value_3_reg_473 : pool_5_reg_466);

assign pool_to_flat_streams_2_din = pool_7_reg_479;

assign tmp_3_fu_188_p4 = {{bitcast_ln28_fu_185_p1[30:23]}};

assign tmp_6_fu_249_p4 = {{bitcast_ln28_1_fu_246_p1[30:23]}};

assign tmp_9_fu_310_p4 = {{bitcast_ln28_2_fu_307_p1[30:23]}};

assign trunc_ln28_1_fu_133_p1 = conv_to_pool_streams_2_dout[22:0];

assign trunc_ln28_2_fu_198_p1 = bitcast_ln28_fu_185_p1[22:0];

assign trunc_ln28_3_fu_160_p1 = conv_to_pool_streams_2_dout[22:0];

assign trunc_ln28_4_fu_259_p1 = bitcast_ln28_1_fu_246_p1[22:0];

assign trunc_ln28_5_fu_175_p1 = conv_to_pool_streams_2_dout[22:0];

assign trunc_ln28_6_fu_320_p1 = bitcast_ln28_2_fu_307_p1[22:0];

assign trunc_ln28_fu_114_p1 = conv_to_pool_streams_2_dout[22:0];

assign value_1_fu_170_p1 = reg_90;

assign value_2_fu_242_p1 = conv_to_pool_streams_2_read_2_reg_417;

assign value_3_fu_303_p1 = conv_to_pool_streams_2_read_3_reg_438_pp0_iter1_reg;

assign value_fu_123_p1 = reg_90;

endmodule //cnn_max_pooling_9
