// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnn_max_pooling_7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        conv_to_pool_streams_7_dout,
        conv_to_pool_streams_7_empty_n,
        conv_to_pool_streams_7_read,
        pool_to_flat_streams_7_din,
        pool_to_flat_streams_7_full_n,
        pool_to_flat_streams_7_write
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
input  [31:0] conv_to_pool_streams_7_dout;
input   conv_to_pool_streams_7_empty_n;
output   conv_to_pool_streams_7_read;
output  [31:0] pool_to_flat_streams_7_din;
input   pool_to_flat_streams_7_full_n;
output   pool_to_flat_streams_7_write;

reg ap_idle;
reg conv_to_pool_streams_7_read;
reg pool_to_flat_streams_7_write;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
reg   [0:0] icmp_ln15_reg_373;
reg    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_state8_pp0_stage3_iter1;
reg    ap_done_reg;
reg    ap_block_pp0_stage3_subdone;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    conv_to_pool_streams_7_blk_n;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln15_fu_100_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg    pool_to_flat_streams_7_blk_n;
reg   [31:0] reg_88;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state9_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state6_pp0_stage1_iter1;
wire    ap_block_state10_pp0_stage1_iter2;
reg    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln15_reg_373_pp0_iter1_reg;
wire   [22:0] trunc_ln28_fu_112_p1;
reg   [22:0] trunc_ln28_reg_377;
wire   [0:0] grp_fu_82_p2;
reg   [0:0] icmp_ln28_reg_382;
wire   [31:0] tmp_14_fu_121_p1;
reg   [31:0] tmp_14_reg_387;
wire   [0:0] icmp_ln28_1_fu_126_p2;
reg   [0:0] icmp_ln28_1_reg_393;
reg   [0:0] icmp_ln28_2_reg_398;
wire   [0:0] icmp_ln28_3_fu_135_p2;
reg   [0:0] icmp_ln28_3_reg_403;
wire   [31:0] pool_1_fu_151_p3;
reg   [31:0] pool_1_reg_408;
reg    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state7_pp0_stage2_iter1;
reg    ap_block_state11_pp0_stage2_iter2;
reg    ap_block_pp0_stage2_11001;
reg   [31:0] conv_to_pool_streams_7_read_2_reg_415;
reg   [0:0] icmp_ln28_6_reg_420;
reg   [0:0] icmp_ln28_6_reg_420_pp0_iter1_reg;
wire   [0:0] icmp_ln28_7_fu_162_p2;
reg   [0:0] icmp_ln28_7_reg_425;
reg   [0:0] icmp_ln28_7_reg_425_pp0_iter1_reg;
wire   [31:0] tmp_15_fu_168_p1;
reg   [31:0] tmp_15_reg_430;
reg    ap_block_pp0_stage3_11001;
reg   [31:0] conv_to_pool_streams_7_read_3_reg_436;
reg   [31:0] conv_to_pool_streams_7_read_3_reg_436_pp0_iter1_reg;
reg   [0:0] icmp_ln28_10_reg_441;
reg   [0:0] icmp_ln28_10_reg_441_pp0_iter1_reg;
wire   [0:0] icmp_ln28_11_fu_177_p2;
reg   [0:0] icmp_ln28_11_reg_446;
reg   [0:0] icmp_ln28_11_reg_446_pp0_iter1_reg;
wire   [31:0] pool_3_fu_234_p3;
reg   [31:0] pool_3_reg_451;
wire   [31:0] tmp_16_fu_240_p1;
reg   [31:0] tmp_16_reg_458;
wire   [31:0] pool_5_fu_295_p3;
reg   [31:0] pool_5_reg_464;
wire   [31:0] tmp_17_fu_301_p1;
reg   [31:0] tmp_17_reg_471;
wire   [31:0] pool_7_fu_356_p3;
reg   [31:0] pool_7_reg_477;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage2_subdone;
reg   [7:0] indvar_flatten_fu_50;
wire   [7:0] add_ln15_fu_106_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    ap_block_pp0_stage2_01001;
reg   [31:0] grp_fu_67_p0;
reg   [31:0] grp_fu_67_p1;
wire   [7:0] grp_fu_72_p4;
wire   [22:0] trunc_ln28_1_fu_131_p1;
wire   [0:0] or_ln28_fu_141_p2;
wire   [0:0] grp_fu_67_p2;
wire   [0:0] and_ln28_fu_145_p2;
wire   [22:0] trunc_ln28_3_fu_158_p1;
wire   [22:0] trunc_ln28_5_fu_173_p1;
wire   [31:0] bitcast_ln28_fu_183_p1;
wire   [7:0] tmp_7_fu_186_p4;
wire   [22:0] trunc_ln28_2_fu_196_p1;
wire   [0:0] icmp_ln28_5_fu_210_p2;
wire   [0:0] icmp_ln28_4_fu_204_p2;
wire   [0:0] or_ln28_1_fu_200_p2;
wire   [0:0] or_ln28_2_fu_216_p2;
wire   [0:0] and_ln28_1_fu_222_p2;
wire   [0:0] and_ln28_2_fu_228_p2;
wire   [31:0] bitcast_ln28_1_fu_244_p1;
wire   [7:0] tmp_1_fu_247_p4;
wire   [22:0] trunc_ln28_4_fu_257_p1;
wire   [0:0] icmp_ln28_9_fu_271_p2;
wire   [0:0] icmp_ln28_8_fu_265_p2;
wire   [0:0] or_ln28_3_fu_261_p2;
wire   [0:0] or_ln28_4_fu_277_p2;
wire   [0:0] and_ln28_3_fu_283_p2;
wire   [0:0] and_ln28_4_fu_289_p2;
wire   [31:0] bitcast_ln28_2_fu_305_p1;
wire   [7:0] tmp_5_fu_308_p4;
wire   [22:0] trunc_ln28_6_fu_318_p1;
wire   [0:0] icmp_ln28_13_fu_332_p2;
wire   [0:0] icmp_ln28_12_fu_326_p2;
wire   [0:0] or_ln28_5_fu_322_p2;
wire   [0:0] or_ln28_6_fu_338_p2;
wire   [0:0] and_ln28_5_fu_344_p2;
wire   [0:0] and_ln28_6_fu_350_p2;
reg    grp_fu_67_ce;
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
reg    ap_condition_130;
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
fcmp_32ns_32ns_1_2_no_dsp_1_U253(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_67_p0),
    .din1(grp_fu_67_p1),
    .ce(grp_fu_67_ce),
    .opcode(5'd2),
    .dout(grp_fu_67_p2)
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
    if ((1'b1 == ap_condition_130)) begin
        if ((icmp_ln15_fu_100_p2 == 1'd0)) begin
            indvar_flatten_fu_50 <= add_ln15_fu_106_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_50 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        conv_to_pool_streams_7_read_2_reg_415 <= conv_to_pool_streams_7_dout;
        icmp_ln28_6_reg_420 <= grp_fu_82_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        conv_to_pool_streams_7_read_3_reg_436 <= conv_to_pool_streams_7_dout;
        icmp_ln28_10_reg_441 <= grp_fu_82_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        conv_to_pool_streams_7_read_3_reg_436_pp0_iter1_reg <= conv_to_pool_streams_7_read_3_reg_436;
        icmp_ln28_10_reg_441_pp0_iter1_reg <= icmp_ln28_10_reg_441;
        icmp_ln28_11_reg_446_pp0_iter1_reg <= icmp_ln28_11_reg_446;
        pool_5_reg_464 <= pool_5_fu_295_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15_reg_373 <= icmp_ln15_fu_100_p2;
        icmp_ln15_reg_373_pp0_iter1_reg <= icmp_ln15_reg_373;
        pool_3_reg_451 <= pool_3_fu_234_p3;
        tmp_17_reg_471 <= tmp_17_fu_301_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln15_reg_373 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln28_11_reg_446 <= icmp_ln28_11_fu_177_p2;
        tmp_15_reg_430 <= tmp_15_fu_168_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln15_reg_373 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln28_1_reg_393 <= icmp_ln28_1_fu_126_p2;
        icmp_ln28_3_reg_403 <= icmp_ln28_3_fu_135_p2;
        tmp_14_reg_387 <= tmp_14_fu_121_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln28_2_reg_398 <= grp_fu_82_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln28_6_reg_420_pp0_iter1_reg <= icmp_ln28_6_reg_420;
        icmp_ln28_7_reg_425_pp0_iter1_reg <= icmp_ln28_7_reg_425;
        tmp_16_reg_458 <= tmp_16_fu_240_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln15_reg_373 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln28_7_reg_425 <= icmp_ln28_7_fu_162_p2;
        pool_1_reg_408 <= pool_1_fu_151_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_382 <= grp_fu_82_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pool_7_reg_477 <= pool_7_fu_356_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln15_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_88 <= conv_to_pool_streams_7_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln28_reg_377 <= trunc_ln28_fu_112_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (icmp_ln15_reg_373 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln15_reg_373_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_50;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln15_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_done_reg == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        conv_to_pool_streams_7_blk_n = conv_to_pool_streams_7_empty_n;
    end else begin
        conv_to_pool_streams_7_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((icmp_ln15_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln15_reg_373 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        conv_to_pool_streams_7_read = 1'b1;
    end else begin
        conv_to_pool_streams_7_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_67_ce = 1'b1;
    end else begin
        grp_fu_67_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_67_p0 = tmp_17_fu_301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_67_p0 = tmp_16_fu_240_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_67_p0 = tmp_15_fu_168_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_67_p0 = tmp_14_fu_121_p1;
    end else begin
        grp_fu_67_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_67_p1 = pool_5_reg_464;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_67_p1 = pool_3_reg_451;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_67_p1 = pool_1_reg_408;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_67_p1 = 32'd8388608;
    end else begin
        grp_fu_67_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pool_to_flat_streams_7_blk_n = pool_to_flat_streams_7_full_n;
    end else begin
        pool_to_flat_streams_7_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pool_to_flat_streams_7_write = 1'b1;
    end else begin
        pool_to_flat_streams_7_write = 1'b0;
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

assign add_ln15_fu_106_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);

assign and_ln28_1_fu_222_p2 = (or_ln28_2_fu_216_p2 & or_ln28_1_fu_200_p2);

assign and_ln28_2_fu_228_p2 = (grp_fu_67_p2 & and_ln28_1_fu_222_p2);

assign and_ln28_3_fu_283_p2 = (or_ln28_4_fu_277_p2 & or_ln28_3_fu_261_p2);

assign and_ln28_4_fu_289_p2 = (grp_fu_67_p2 & and_ln28_3_fu_283_p2);

assign and_ln28_5_fu_344_p2 = (or_ln28_6_fu_338_p2 & or_ln28_5_fu_322_p2);

assign and_ln28_6_fu_350_p2 = (grp_fu_67_p2 & and_ln28_5_fu_344_p2);

assign and_ln28_fu_145_p2 = (or_ln28_fu_141_p2 & grp_fu_67_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_00001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln15_fu_100_p2 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln15_fu_100_p2 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((ap_done_reg == 1'b1) | ((icmp_ln15_fu_100_p2 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0))));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_00001 = ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_00001 = (((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((pool_to_flat_streams_7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage2_01001 = (((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((pool_to_flat_streams_7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage2_11001 = (((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((pool_to_flat_streams_7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = (((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((pool_to_flat_streams_7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_00001 = ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_done_reg == 1'b1) | ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_done_reg == 1'b1) | ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

assign ap_block_state10_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp0_stage2_iter2 = (pool_to_flat_streams_7_full_n == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((icmp_ln15_fu_100_p2 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = ((icmp_ln15_reg_373 == 1'd0) & (conv_to_pool_streams_7_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_130 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;

assign bitcast_ln28_1_fu_244_p1 = pool_3_reg_451;

assign bitcast_ln28_2_fu_305_p1 = pool_5_reg_464;

assign bitcast_ln28_fu_183_p1 = pool_1_reg_408;

assign grp_fu_72_p4 = {{conv_to_pool_streams_7_dout[30:23]}};

assign grp_fu_82_p2 = ((grp_fu_72_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln15_fu_100_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd196) ? 1'b1 : 1'b0);

assign icmp_ln28_11_fu_177_p2 = ((trunc_ln28_5_fu_173_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_12_fu_326_p2 = ((tmp_5_fu_308_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln28_13_fu_332_p2 = ((trunc_ln28_6_fu_318_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_1_fu_126_p2 = ((trunc_ln28_reg_377 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_3_fu_135_p2 = ((trunc_ln28_1_fu_131_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_4_fu_204_p2 = ((tmp_7_fu_186_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln28_5_fu_210_p2 = ((trunc_ln28_2_fu_196_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_7_fu_162_p2 = ((trunc_ln28_3_fu_158_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln28_8_fu_265_p2 = ((tmp_1_fu_247_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln28_9_fu_271_p2 = ((trunc_ln28_4_fu_257_p1 == 23'd0) ? 1'b1 : 1'b0);

assign or_ln28_1_fu_200_p2 = (icmp_ln28_3_reg_403 | icmp_ln28_2_reg_398);

assign or_ln28_2_fu_216_p2 = (icmp_ln28_5_fu_210_p2 | icmp_ln28_4_fu_204_p2);

assign or_ln28_3_fu_261_p2 = (icmp_ln28_7_reg_425_pp0_iter1_reg | icmp_ln28_6_reg_420_pp0_iter1_reg);

assign or_ln28_4_fu_277_p2 = (icmp_ln28_9_fu_271_p2 | icmp_ln28_8_fu_265_p2);

assign or_ln28_5_fu_322_p2 = (icmp_ln28_11_reg_446_pp0_iter1_reg | icmp_ln28_10_reg_441_pp0_iter1_reg);

assign or_ln28_6_fu_338_p2 = (icmp_ln28_13_fu_332_p2 | icmp_ln28_12_fu_326_p2);

assign or_ln28_fu_141_p2 = (icmp_ln28_reg_382 | icmp_ln28_1_reg_393);

assign pool_1_fu_151_p3 = ((and_ln28_fu_145_p2[0:0] == 1'b1) ? tmp_14_reg_387 : 32'd8388608);

assign pool_3_fu_234_p3 = ((and_ln28_2_fu_228_p2[0:0] == 1'b1) ? tmp_15_reg_430 : pool_1_reg_408);

assign pool_5_fu_295_p3 = ((and_ln28_4_fu_289_p2[0:0] == 1'b1) ? tmp_16_reg_458 : pool_3_reg_451);

assign pool_7_fu_356_p3 = ((and_ln28_6_fu_350_p2[0:0] == 1'b1) ? tmp_17_reg_471 : pool_5_reg_464);

assign pool_to_flat_streams_7_din = pool_7_reg_477;

assign tmp_14_fu_121_p1 = reg_88;

assign tmp_15_fu_168_p1 = reg_88;

assign tmp_16_fu_240_p1 = conv_to_pool_streams_7_read_2_reg_415;

assign tmp_17_fu_301_p1 = conv_to_pool_streams_7_read_3_reg_436_pp0_iter1_reg;

assign tmp_1_fu_247_p4 = {{bitcast_ln28_1_fu_244_p1[30:23]}};

assign tmp_5_fu_308_p4 = {{bitcast_ln28_2_fu_305_p1[30:23]}};

assign tmp_7_fu_186_p4 = {{bitcast_ln28_fu_183_p1[30:23]}};

assign trunc_ln28_1_fu_131_p1 = conv_to_pool_streams_7_dout[22:0];

assign trunc_ln28_2_fu_196_p1 = bitcast_ln28_fu_183_p1[22:0];

assign trunc_ln28_3_fu_158_p1 = conv_to_pool_streams_7_dout[22:0];

assign trunc_ln28_4_fu_257_p1 = bitcast_ln28_1_fu_244_p1[22:0];

assign trunc_ln28_5_fu_173_p1 = conv_to_pool_streams_7_dout[22:0];

assign trunc_ln28_6_fu_318_p1 = bitcast_ln28_2_fu_305_p1[22:0];

assign trunc_ln28_fu_112_p1 = conv_to_pool_streams_7_dout[22:0];

endmodule //cnn_max_pooling_7
