// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnn_cnn_Pipeline_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        weight_buf_0_address0,
        weight_buf_0_ce0,
        weight_buf_0_we0,
        weight_buf_0_d0,
        weight_buf_address0,
        weight_buf_ce0,
        weight_buf_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] weight_buf_0_address0;
output   weight_buf_0_ce0;
output   weight_buf_0_we0;
output  [31:0] weight_buf_0_d0;
output  [6:0] weight_buf_address0;
output   weight_buf_ce0;
input  [31:0] weight_buf_q0;

reg ap_idle;
reg weight_buf_0_ce0;
reg weight_buf_0_we0;
reg weight_buf_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] exitcond498_fu_112_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [3:0] loop_index37_load_reg_276;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] p_cast18_cast_cast_cast_cast_cast_fu_226_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] loop_index37_cast_fu_246_p1;
reg   [3:0] phi_urem_fu_56;
wire   [3:0] idx_urem_fu_142_p3;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_phi_urem_load;
reg   [7:0] phi_mul_fu_60;
wire   [7:0] next_mul_fu_150_p2;
reg   [7:0] ap_sig_allocacmp_phi_mul_load;
reg   [3:0] loop_index37_fu_64;
wire   [3:0] empty_154_fu_118_p2;
reg   [3:0] ap_sig_allocacmp_loop_index37_load;
wire   [3:0] next_urem_fu_130_p2;
wire   [0:0] empty_155_fu_136_p2;
wire   [1:0] tmp_s_fu_156_p4;
wire   [5:0] p_shl_fu_166_p3;
wire   [3:0] p_shl1_fu_178_p3;
wire   [6:0] p_shl_cast_fu_174_p1;
wire   [6:0] p_shl1_cast_fu_186_p1;
wire   [3:0] empty_157_fu_196_p2;
wire   [6:0] empty_156_fu_190_p2;
wire   [6:0] p_cast16_fu_202_p1;
wire   [6:0] empty_158_fu_206_p2;
wire   [4:0] p_cast6_fu_212_p4;
wire  signed [6:0] p_cast18_cast_cast_cast_cast_fu_222_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

cnn_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((exitcond498_fu_112_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            loop_index37_fu_64 <= empty_154_fu_118_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            loop_index37_fu_64 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((exitcond498_fu_112_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            phi_mul_fu_60 <= next_mul_fu_150_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            phi_mul_fu_60 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((exitcond498_fu_112_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            phi_urem_fu_56 <= idx_urem_fu_142_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            phi_urem_fu_56 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        loop_index37_load_reg_276 <= ap_sig_allocacmp_loop_index37_load;
    end
end

always @ (*) begin
    if (((exitcond498_fu_112_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_loop_index37_load = 4'd0;
    end else begin
        ap_sig_allocacmp_loop_index37_load = loop_index37_fu_64;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_phi_mul_load = 8'd0;
    end else begin
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_60;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_phi_urem_load = 4'd0;
    end else begin
        ap_sig_allocacmp_phi_urem_load = phi_urem_fu_56;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weight_buf_0_ce0 = 1'b1;
    end else begin
        weight_buf_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weight_buf_0_we0 = 1'b1;
    end else begin
        weight_buf_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weight_buf_ce0 = 1'b1;
    end else begin
        weight_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_154_fu_118_p2 = (ap_sig_allocacmp_loop_index37_load + 4'd1);

assign empty_155_fu_136_p2 = ((next_urem_fu_130_p2 < 4'd3) ? 1'b1 : 1'b0);

assign empty_156_fu_190_p2 = (p_shl_cast_fu_174_p1 - p_shl1_cast_fu_186_p1);

assign empty_157_fu_196_p2 = ap_sig_allocacmp_phi_urem_load << 4'd2;

assign empty_158_fu_206_p2 = (empty_156_fu_190_p2 + p_cast16_fu_202_p1);

assign exitcond498_fu_112_p2 = ((ap_sig_allocacmp_loop_index37_load == 4'd9) ? 1'b1 : 1'b0);

assign idx_urem_fu_142_p3 = ((empty_155_fu_136_p2[0:0] == 1'b1) ? next_urem_fu_130_p2 : 4'd0);

assign loop_index37_cast_fu_246_p1 = loop_index37_load_reg_276;

assign next_mul_fu_150_p2 = (ap_sig_allocacmp_phi_mul_load + 8'd22);

assign next_urem_fu_130_p2 = (ap_sig_allocacmp_phi_urem_load + 4'd1);

assign p_cast16_fu_202_p1 = empty_157_fu_196_p2;

assign p_cast18_cast_cast_cast_cast_cast_fu_226_p1 = $unsigned(p_cast18_cast_cast_cast_cast_fu_222_p1);

assign p_cast18_cast_cast_cast_cast_fu_222_p1 = $signed(p_cast6_fu_212_p4);

assign p_cast6_fu_212_p4 = {{empty_158_fu_206_p2[6:2]}};

assign p_shl1_cast_fu_186_p1 = p_shl1_fu_178_p3;

assign p_shl1_fu_178_p3 = {{tmp_s_fu_156_p4}, {2'd0}};

assign p_shl_cast_fu_174_p1 = p_shl_fu_166_p3;

assign p_shl_fu_166_p3 = {{tmp_s_fu_156_p4}, {4'd0}};

assign tmp_s_fu_156_p4 = {{ap_sig_allocacmp_phi_mul_load[7:6]}};

assign weight_buf_0_address0 = loop_index37_cast_fu_246_p1;

assign weight_buf_0_d0 = weight_buf_q0;

assign weight_buf_address0 = p_cast18_cast_cast_cast_cast_cast_fu_226_p1;

endmodule //cnn_cnn_Pipeline_3
