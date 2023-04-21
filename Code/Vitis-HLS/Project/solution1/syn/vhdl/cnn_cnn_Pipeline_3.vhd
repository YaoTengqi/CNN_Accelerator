-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cnn_cnn_Pipeline_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    weight_buf_0_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    weight_buf_0_ce0 : OUT STD_LOGIC;
    weight_buf_0_we0 : OUT STD_LOGIC;
    weight_buf_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    weight_buf_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    weight_buf_ce0 : OUT STD_LOGIC;
    weight_buf_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of cnn_cnn_Pipeline_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv8_16 : STD_LOGIC_VECTOR (7 downto 0) := "00010110";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal exitcond508_fu_112_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal loop_index38_load_reg_276 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_cast18_cast_cast_cast_cast_cast_fu_226_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal loop_index38_cast_fu_246_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal phi_urem_fu_56 : STD_LOGIC_VECTOR (3 downto 0);
    signal idx_urem_fu_142_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_phi_urem_load : STD_LOGIC_VECTOR (3 downto 0);
    signal phi_mul_fu_60 : STD_LOGIC_VECTOR (7 downto 0);
    signal next_mul_fu_150_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_phi_mul_load : STD_LOGIC_VECTOR (7 downto 0);
    signal loop_index38_fu_64 : STD_LOGIC_VECTOR (3 downto 0);
    signal empty_154_fu_118_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_loop_index38_load : STD_LOGIC_VECTOR (3 downto 0);
    signal next_urem_fu_130_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal empty_155_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_55_fu_156_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_shl_fu_166_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl1_fu_178_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl_cast_fu_174_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl1_cast_fu_186_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal empty_157_fu_196_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal empty_156_fu_190_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_cast16_fu_202_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal empty_158_fu_206_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_cast6_fu_212_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_cast18_cast_cast_cast_cast_fu_222_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cnn_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component cnn_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    loop_index38_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((exitcond508_fu_112_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    loop_index38_fu_64 <= empty_154_fu_118_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    loop_index38_fu_64 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    phi_mul_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((exitcond508_fu_112_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    phi_mul_fu_60 <= next_mul_fu_150_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    phi_mul_fu_60 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;

    phi_urem_fu_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((exitcond508_fu_112_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    phi_urem_fu_56 <= idx_urem_fu_142_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    phi_urem_fu_56 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                loop_index38_load_reg_276 <= ap_sig_allocacmp_loop_index38_load;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, exitcond508_fu_112_p2)
    begin
        if (((exitcond508_fu_112_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_loop_index38_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, loop_index38_fu_64)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_loop_index38_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_loop_index38_load <= loop_index38_fu_64;
        end if; 
    end process;


    ap_sig_allocacmp_phi_mul_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, phi_mul_fu_60)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_phi_mul_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_phi_mul_load <= phi_mul_fu_60;
        end if; 
    end process;


    ap_sig_allocacmp_phi_urem_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, phi_urem_fu_56, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_phi_urem_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_phi_urem_load <= phi_urem_fu_56;
        end if; 
    end process;

    empty_154_fu_118_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_loop_index38_load) + unsigned(ap_const_lv4_1));
    empty_155_fu_136_p2 <= "1" when (unsigned(next_urem_fu_130_p2) < unsigned(ap_const_lv4_3)) else "0";
    empty_156_fu_190_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_174_p1) - unsigned(p_shl1_cast_fu_186_p1));
    empty_157_fu_196_p2 <= std_logic_vector(shift_left(unsigned(ap_sig_allocacmp_phi_urem_load),to_integer(unsigned('0' & ap_const_lv4_2(4-1 downto 0)))));
    empty_158_fu_206_p2 <= std_logic_vector(unsigned(empty_156_fu_190_p2) + unsigned(p_cast16_fu_202_p1));
    exitcond508_fu_112_p2 <= "1" when (ap_sig_allocacmp_loop_index38_load = ap_const_lv4_9) else "0";
    idx_urem_fu_142_p3 <= 
        next_urem_fu_130_p2 when (empty_155_fu_136_p2(0) = '1') else 
        ap_const_lv4_0;
    loop_index38_cast_fu_246_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(loop_index38_load_reg_276),64));
    next_mul_fu_150_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_phi_mul_load) + unsigned(ap_const_lv8_16));
    next_urem_fu_130_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_phi_urem_load) + unsigned(ap_const_lv4_1));
    p_cast16_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_157_fu_196_p2),7));
    p_cast18_cast_cast_cast_cast_cast_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_cast18_cast_cast_cast_cast_fu_222_p1),64));
        p_cast18_cast_cast_cast_cast_fu_222_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_cast6_fu_212_p4),7));

    p_cast6_fu_212_p4 <= empty_158_fu_206_p2(6 downto 2);
    p_shl1_cast_fu_186_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl1_fu_178_p3),7));
    p_shl1_fu_178_p3 <= (tmp_55_fu_156_p4 & ap_const_lv2_0);
    p_shl_cast_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_fu_166_p3),7));
    p_shl_fu_166_p3 <= (tmp_55_fu_156_p4 & ap_const_lv4_0);
    tmp_55_fu_156_p4 <= ap_sig_allocacmp_phi_mul_load(7 downto 6);
    weight_buf_0_address0 <= loop_index38_cast_fu_246_p1(4 - 1 downto 0);

    weight_buf_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            weight_buf_0_ce0 <= ap_const_logic_1;
        else 
            weight_buf_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    weight_buf_0_d0 <= weight_buf_q0;

    weight_buf_0_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            weight_buf_0_we0 <= ap_const_logic_1;
        else 
            weight_buf_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    weight_buf_address0 <= p_cast18_cast_cast_cast_cast_cast_fu_226_p1(7 - 1 downto 0);

    weight_buf_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            weight_buf_ce0 <= ap_const_logic_1;
        else 
            weight_buf_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
