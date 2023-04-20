-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cnn_convolution is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    pad_img_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    pad_img_ce0 : OUT STD_LOGIC;
    pad_img_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    pad_img_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    pad_img_ce1 : OUT STD_LOGIC;
    pad_img_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    weight_buf_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    weight_buf_ce0 : OUT STD_LOGIC;
    weight_buf_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    weight_buf_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    weight_buf_ce1 : OUT STD_LOGIC;
    weight_buf_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    biases_buf : IN STD_LOGIC_VECTOR (31 downto 0);
    conv_to_pool_streams_0_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    conv_to_pool_streams_0_num_data_valid : IN STD_LOGIC_VECTOR (10 downto 0);
    conv_to_pool_streams_0_fifo_cap : IN STD_LOGIC_VECTOR (10 downto 0);
    conv_to_pool_streams_0_full_n : IN STD_LOGIC;
    conv_to_pool_streams_0_write : OUT STD_LOGIC );
end;


architecture behav of cnn_convolution is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (12 downto 0) := "0000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (12 downto 0) := "0000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (12 downto 0) := "0000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (12 downto 0) := "0000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (12 downto 0) := "0000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (12 downto 0) := "0000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (12 downto 0) := "0001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (12 downto 0) := "0010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (12 downto 0) := "0100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal weight_buf_load_reg_212 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal weight_buf_load_57_reg_227 : STD_LOGIC_VECTOR (31 downto 0);
    signal weight_buf_load_58_reg_232 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal weight_buf_load_59_reg_247 : STD_LOGIC_VECTOR (31 downto 0);
    signal weight_buf_load_60_reg_252 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal weight_buf_load_61_reg_267 : STD_LOGIC_VECTOR (31 downto 0);
    signal weight_buf_load_62_reg_272 : STD_LOGIC_VECTOR (31 downto 0);
    signal weight_buf_load_63_reg_277 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal weight_buf_load_64_reg_282 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_fu_156_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv8_reg_292 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal grp_fu_161_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_reg_297 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_165_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_s_reg_302 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_169_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_6_reg_307 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_173_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_7_reg_312 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_177_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_8_reg_317 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_181_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_9_reg_322 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_185_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_1_reg_327 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_189_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_2_reg_332 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_193_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_3_reg_337 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start : STD_LOGIC;
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done : STD_LOGIC;
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_idle : STD_LOGIC;
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_ready : STD_LOGIC;
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce0 : STD_LOGIC;
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce1 : STD_LOGIC;
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_0_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_0_write : STD_LOGIC;
    signal grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal ap_ST_fsm_state11_blk : STD_LOGIC;
    signal ap_ST_fsm_state12_blk : STD_LOGIC;
    signal ap_ST_fsm_state13_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cnn_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pad_img_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        pad_img_ce0 : OUT STD_LOGIC;
        pad_img_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        pad_img_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        pad_img_ce1 : OUT STD_LOGIC;
        pad_img_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        w : IN STD_LOGIC_VECTOR (31 downto 0);
        w_16 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_6 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_7 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_8 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_9 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_10 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_11 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_12 : IN STD_LOGIC_VECTOR (31 downto 0);
        conv8 : IN STD_LOGIC_VECTOR (31 downto 0);
        conv_to_pool_streams_0_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        conv_to_pool_streams_0_num_data_valid : IN STD_LOGIC_VECTOR (10 downto 0);
        conv_to_pool_streams_0_fifo_cap : IN STD_LOGIC_VECTOR (10 downto 0);
        conv_to_pool_streams_0_full_n : IN STD_LOGIC;
        conv_to_pool_streams_0_write : OUT STD_LOGIC );
    end component;


    component cnn_sitofp_32ns_32_6_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138 : component cnn_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start,
        ap_done => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done,
        ap_idle => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_idle,
        ap_ready => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_ready,
        pad_img_address0 => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address0,
        pad_img_ce0 => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce0,
        pad_img_q0 => pad_img_q0,
        pad_img_address1 => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address1,
        pad_img_ce1 => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce1,
        pad_img_q1 => pad_img_q1,
        w => w_reg_297,
        w_16 => w_s_reg_302,
        w_6 => w_6_reg_307,
        w_7 => w_7_reg_312,
        w_8 => w_8_reg_317,
        w_9 => w_9_reg_322,
        w_10 => w_1_reg_327,
        w_11 => w_2_reg_332,
        w_12 => w_3_reg_337,
        conv8 => conv8_reg_292,
        conv_to_pool_streams_0_din => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_0_din,
        conv_to_pool_streams_0_num_data_valid => ap_const_lv11_0,
        conv_to_pool_streams_0_fifo_cap => ap_const_lv11_0,
        conv_to_pool_streams_0_full_n => conv_to_pool_streams_0_full_n,
        conv_to_pool_streams_0_write => grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_0_write);

    sitofp_32ns_32_6_no_dsp_1_U49 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => biases_buf,
        ce => ap_const_logic_1,
        dout => grp_fu_156_p1);

    sitofp_32ns_32_6_no_dsp_1_U50 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_reg_212,
        ce => ap_const_logic_1,
        dout => grp_fu_161_p1);

    sitofp_32ns_32_6_no_dsp_1_U51 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_57_reg_227,
        ce => ap_const_logic_1,
        dout => grp_fu_165_p1);

    sitofp_32ns_32_6_no_dsp_1_U52 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_58_reg_232,
        ce => ap_const_logic_1,
        dout => grp_fu_169_p1);

    sitofp_32ns_32_6_no_dsp_1_U53 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_59_reg_247,
        ce => ap_const_logic_1,
        dout => grp_fu_173_p1);

    sitofp_32ns_32_6_no_dsp_1_U54 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_60_reg_252,
        ce => ap_const_logic_1,
        dout => grp_fu_177_p1);

    sitofp_32ns_32_6_no_dsp_1_U55 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_61_reg_267,
        ce => ap_const_logic_1,
        dout => grp_fu_181_p1);

    sitofp_32ns_32_6_no_dsp_1_U56 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_62_reg_272,
        ce => ap_const_logic_1,
        dout => grp_fu_185_p1);

    sitofp_32ns_32_6_no_dsp_1_U57 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_63_reg_277,
        ce => ap_const_logic_1,
        dout => grp_fu_189_p1);

    sitofp_32ns_32_6_no_dsp_1_U58 : component cnn_sitofp_32ns_32_6_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_buf_load_64_reg_282,
        ce => ap_const_logic_1,
        dout => grp_fu_193_p1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state13) and (grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                    grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_ready = ap_const_logic_1)) then 
                    grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                conv8_reg_292 <= grp_fu_156_p1;
                w_1_reg_327 <= grp_fu_185_p1;
                w_2_reg_332 <= grp_fu_189_p1;
                w_3_reg_337 <= grp_fu_193_p1;
                w_6_reg_307 <= grp_fu_169_p1;
                w_7_reg_312 <= grp_fu_173_p1;
                w_8_reg_317 <= grp_fu_177_p1;
                w_9_reg_322 <= grp_fu_181_p1;
                w_reg_297 <= grp_fu_161_p1;
                w_s_reg_302 <= grp_fu_165_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                weight_buf_load_57_reg_227 <= weight_buf_q1;
                weight_buf_load_58_reg_232 <= weight_buf_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                weight_buf_load_59_reg_247 <= weight_buf_q0;
                weight_buf_load_60_reg_252 <= weight_buf_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                weight_buf_load_61_reg_267 <= weight_buf_q0;
                weight_buf_load_62_reg_272 <= weight_buf_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                weight_buf_load_63_reg_277 <= weight_buf_q0;
                weight_buf_load_64_reg_282 <= weight_buf_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                weight_buf_load_reg_212 <= weight_buf_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done, ap_CS_fsm_state13)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state13) and (grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state13;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_ST_fsm_state10_blk <= ap_const_logic_0;
    ap_ST_fsm_state11_blk <= ap_const_logic_0;
    ap_ST_fsm_state12_blk <= ap_const_logic_0;

    ap_ST_fsm_state13_blk_assign_proc : process(grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done)
    begin
        if ((grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state13_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state13_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;
    ap_ST_fsm_state9_blk <= ap_const_logic_0;

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done, ap_CS_fsm_state13)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state13) and (grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done, ap_CS_fsm_state13)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state13) and (grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    conv_to_pool_streams_0_din <= grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_0_din;

    conv_to_pool_streams_0_write_assign_proc : process(grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_0_write, ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            conv_to_pool_streams_0_write <= grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_conv_to_pool_streams_0_write;
        else 
            conv_to_pool_streams_0_write <= ap_const_logic_0;
        end if; 
    end process;

    grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start <= grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_ap_start_reg;
    pad_img_address0 <= grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address0;
    pad_img_address1 <= grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_address1;
    pad_img_ce0 <= grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce0;
    pad_img_ce1 <= grp_convolution_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_138_pad_img_ce1;

    weight_buf_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            weight_buf_address0 <= ap_const_lv64_7(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            weight_buf_address0 <= ap_const_lv64_5(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            weight_buf_address0 <= ap_const_lv64_3(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            weight_buf_address0 <= ap_const_lv64_2(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            weight_buf_address0 <= ap_const_lv64_0(4 - 1 downto 0);
        else 
            weight_buf_address0 <= "XXXX";
        end if; 
    end process;


    weight_buf_address1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            weight_buf_address1 <= ap_const_lv64_8(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            weight_buf_address1 <= ap_const_lv64_6(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            weight_buf_address1 <= ap_const_lv64_4(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            weight_buf_address1 <= ap_const_lv64_1(4 - 1 downto 0);
        else 
            weight_buf_address1 <= "XXXX";
        end if; 
    end process;


    weight_buf_ce0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            weight_buf_ce0 <= ap_const_logic_1;
        else 
            weight_buf_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    weight_buf_ce1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            weight_buf_ce1 <= ap_const_logic_1;
        else 
            weight_buf_ce1 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
