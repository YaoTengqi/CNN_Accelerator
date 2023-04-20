-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity convolutional_layer_convolution_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    pad_img4_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    pad_img4_ce0 : OUT STD_LOGIC;
    pad_img4_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    pad_img4_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    pad_img4_ce1 : OUT STD_LOGIC;
    pad_img4_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    weight_buf_4_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    weight_buf_4_ce0 : OUT STD_LOGIC;
    weight_buf_4_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    weight_buf_4_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    weight_buf_4_ce1 : OUT STD_LOGIC;
    weight_buf_4_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    biases_buf : IN STD_LOGIC_VECTOR (31 downto 0);
    conv_to_pool_streams_4_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    conv_to_pool_streams_4_full_n : IN STD_LOGIC;
    conv_to_pool_streams_4_write : OUT STD_LOGIC );
end;


architecture behav of convolutional_layer_convolution_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal weight_buf_4_load_reg_211 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal weight_buf_4_load_1_reg_226 : STD_LOGIC_VECTOR (31 downto 0);
    signal weight_buf_4_load_2_reg_231 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal weight_buf_4_load_3_reg_246 : STD_LOGIC_VECTOR (31 downto 0);
    signal weight_buf_4_load_4_reg_251 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal weight_buf_4_load_5_reg_271 : STD_LOGIC_VECTOR (31 downto 0);
    signal weight_buf_4_load_6_reg_276 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_fu_158_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_reg_281 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal w_25_fu_162_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_25_reg_286 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_26_fu_166_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_26_reg_291 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_27_fu_170_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_27_reg_296 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_28_fu_174_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_28_reg_301 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_29_fu_178_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_29_reg_306 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_30_fu_182_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_30_reg_311 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_31_fu_186_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_31_reg_316 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_32_fu_191_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal w_32_reg_321 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start : STD_LOGIC;
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done : STD_LOGIC;
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_idle : STD_LOGIC;
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_ready : STD_LOGIC;
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_ce0 : STD_LOGIC;
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_ce1 : STD_LOGIC;
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_conv_to_pool_streams_4_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_conv_to_pool_streams_4_write : STD_LOGIC;
    signal grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component convolutional_layer_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pad_img4_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        pad_img4_ce0 : OUT STD_LOGIC;
        pad_img4_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        pad_img4_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        pad_img4_ce1 : OUT STD_LOGIC;
        pad_img4_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        w : IN STD_LOGIC_VECTOR (31 downto 0);
        w_25 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_26 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_27 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_28 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_29 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_30 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_31 : IN STD_LOGIC_VECTOR (31 downto 0);
        w_32 : IN STD_LOGIC_VECTOR (31 downto 0);
        biases_buf : IN STD_LOGIC_VECTOR (31 downto 0);
        conv_to_pool_streams_4_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        conv_to_pool_streams_4_full_n : IN STD_LOGIC;
        conv_to_pool_streams_4_write : OUT STD_LOGIC );
    end component;



begin
    grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140 : component convolutional_layer_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start,
        ap_done => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done,
        ap_idle => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_idle,
        ap_ready => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_ready,
        pad_img4_address0 => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_address0,
        pad_img4_ce0 => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_ce0,
        pad_img4_q0 => pad_img4_q0,
        pad_img4_address1 => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_address1,
        pad_img4_ce1 => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_ce1,
        pad_img4_q1 => pad_img4_q1,
        w => w_reg_281,
        w_25 => w_25_reg_286,
        w_26 => w_26_reg_291,
        w_27 => w_27_reg_296,
        w_28 => w_28_reg_301,
        w_29 => w_29_reg_306,
        w_30 => w_30_reg_311,
        w_31 => w_31_reg_316,
        w_32 => w_32_reg_321,
        biases_buf => biases_buf,
        conv_to_pool_streams_4_din => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_conv_to_pool_streams_4_din,
        conv_to_pool_streams_4_full_n => conv_to_pool_streams_4_full_n,
        conv_to_pool_streams_4_write => grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_conv_to_pool_streams_4_write);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_ready = ap_const_logic_1)) then 
                    grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                w_25_reg_286 <= w_25_fu_162_p1;
                w_26_reg_291 <= w_26_fu_166_p1;
                w_27_reg_296 <= w_27_fu_170_p1;
                w_28_reg_301 <= w_28_fu_174_p1;
                w_29_reg_306 <= w_29_fu_178_p1;
                w_30_reg_311 <= w_30_fu_182_p1;
                w_31_reg_316 <= w_31_fu_186_p1;
                w_32_reg_321 <= w_32_fu_191_p1;
                w_reg_281 <= w_fu_158_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                weight_buf_4_load_1_reg_226 <= weight_buf_4_q1;
                weight_buf_4_load_2_reg_231 <= weight_buf_4_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                weight_buf_4_load_3_reg_246 <= weight_buf_4_q0;
                weight_buf_4_load_4_reg_251 <= weight_buf_4_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                weight_buf_4_load_5_reg_271 <= weight_buf_4_q0;
                weight_buf_4_load_6_reg_276 <= weight_buf_4_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                weight_buf_4_load_reg_211 <= weight_buf_4_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done, ap_CS_fsm_state7)
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
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

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

    ap_ST_fsm_state7_blk_assign_proc : process(grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done)
    begin
        if ((grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done = ap_const_logic_1))) then 
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


    ap_ready_assign_proc : process(grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    conv_to_pool_streams_4_din <= grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_conv_to_pool_streams_4_din;

    conv_to_pool_streams_4_write_assign_proc : process(grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_conv_to_pool_streams_4_write, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            conv_to_pool_streams_4_write <= grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_conv_to_pool_streams_4_write;
        else 
            conv_to_pool_streams_4_write <= ap_const_logic_0;
        end if; 
    end process;

    grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start <= grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_ap_start_reg;
    pad_img4_address0 <= grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_address0;
    pad_img4_address1 <= grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_address1;
    pad_img4_ce0 <= grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_ce0;
    pad_img4_ce1 <= grp_convolution_4_Pipeline_conv_for_rows_win_for_rows_win_for_cols_fu_140_pad_img4_ce1;
    w_25_fu_162_p1 <= weight_buf_4_load_1_reg_226;
    w_26_fu_166_p1 <= weight_buf_4_load_2_reg_231;
    w_27_fu_170_p1 <= weight_buf_4_load_3_reg_246;
    w_28_fu_174_p1 <= weight_buf_4_load_4_reg_251;
    w_29_fu_178_p1 <= weight_buf_4_load_5_reg_271;
    w_30_fu_182_p1 <= weight_buf_4_load_6_reg_276;
    w_31_fu_186_p1 <= weight_buf_4_q0;
    w_32_fu_191_p1 <= weight_buf_4_q1;
    w_fu_158_p1 <= weight_buf_4_load_reg_211;

    weight_buf_4_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            weight_buf_4_address0 <= ap_const_lv64_7(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            weight_buf_4_address0 <= ap_const_lv64_5(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            weight_buf_4_address0 <= ap_const_lv64_3(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            weight_buf_4_address0 <= ap_const_lv64_2(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            weight_buf_4_address0 <= ap_const_lv64_0(4 - 1 downto 0);
        else 
            weight_buf_4_address0 <= "XXXX";
        end if; 
    end process;


    weight_buf_4_address1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            weight_buf_4_address1 <= ap_const_lv64_8(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            weight_buf_4_address1 <= ap_const_lv64_6(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            weight_buf_4_address1 <= ap_const_lv64_4(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            weight_buf_4_address1 <= ap_const_lv64_1(4 - 1 downto 0);
        else 
            weight_buf_4_address1 <= "XXXX";
        end if; 
    end process;


    weight_buf_4_ce0_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or (not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            weight_buf_4_ce0 <= ap_const_logic_1;
        else 
            weight_buf_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    weight_buf_4_ce1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            weight_buf_4_ce1 <= ap_const_logic_1;
        else 
            weight_buf_4_ce1 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
