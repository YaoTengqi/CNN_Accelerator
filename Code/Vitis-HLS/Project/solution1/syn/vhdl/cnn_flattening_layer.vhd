-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cnn_flattening_layer is
port (
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    pool_to_flat_streams_0_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_to_flat_streams_0_empty_n : IN STD_LOGIC;
    pool_to_flat_streams_0_read : OUT STD_LOGIC;
    pool_to_flat_streams_1_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_to_flat_streams_1_empty_n : IN STD_LOGIC;
    pool_to_flat_streams_1_read : OUT STD_LOGIC;
    pool_to_flat_streams_2_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_to_flat_streams_2_empty_n : IN STD_LOGIC;
    pool_to_flat_streams_2_read : OUT STD_LOGIC;
    pool_to_flat_streams_3_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_to_flat_streams_3_empty_n : IN STD_LOGIC;
    pool_to_flat_streams_3_read : OUT STD_LOGIC;
    pool_to_flat_streams_4_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_to_flat_streams_4_empty_n : IN STD_LOGIC;
    pool_to_flat_streams_4_read : OUT STD_LOGIC;
    pool_to_flat_streams_5_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_to_flat_streams_5_empty_n : IN STD_LOGIC;
    pool_to_flat_streams_5_read : OUT STD_LOGIC;
    pool_to_flat_streams_6_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_to_flat_streams_6_empty_n : IN STD_LOGIC;
    pool_to_flat_streams_6_read : OUT STD_LOGIC;
    pool_to_flat_streams_7_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    pool_to_flat_streams_7_empty_n : IN STD_LOGIC;
    pool_to_flat_streams_7_read : OUT STD_LOGIC;
    flat_to_dense_streams_0_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    flat_to_dense_streams_0_full_n : IN STD_LOGIC;
    flat_to_dense_streams_0_write : OUT STD_LOGIC;
    flat_to_dense_streams_1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    flat_to_dense_streams_1_full_n : IN STD_LOGIC;
    flat_to_dense_streams_1_write : OUT STD_LOGIC;
    flat_to_dense_streams_2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    flat_to_dense_streams_2_full_n : IN STD_LOGIC;
    flat_to_dense_streams_2_write : OUT STD_LOGIC;
    flat_to_dense_streams_3_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    flat_to_dense_streams_3_full_n : IN STD_LOGIC;
    flat_to_dense_streams_3_write : OUT STD_LOGIC;
    flat_to_dense_streams_4_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    flat_to_dense_streams_4_full_n : IN STD_LOGIC;
    flat_to_dense_streams_4_write : OUT STD_LOGIC;
    flat_to_dense_streams_5_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    flat_to_dense_streams_5_full_n : IN STD_LOGIC;
    flat_to_dense_streams_5_write : OUT STD_LOGIC;
    flat_to_dense_streams_6_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    flat_to_dense_streams_6_full_n : IN STD_LOGIC;
    flat_to_dense_streams_6_write : OUT STD_LOGIC;
    flat_to_dense_streams_7_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    flat_to_dense_streams_7_full_n : IN STD_LOGIC;
    flat_to_dense_streams_7_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of cnn_flattening_layer is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal flattening_U0_ap_start : STD_LOGIC;
    signal flattening_U0_ap_done : STD_LOGIC;
    signal flattening_U0_ap_continue : STD_LOGIC;
    signal flattening_U0_ap_idle : STD_LOGIC;
    signal flattening_U0_ap_ready : STD_LOGIC;
    signal flattening_U0_pool_to_flat_streams_0_read : STD_LOGIC;
    signal flattening_U0_flat_to_dense_streams_0_din : STD_LOGIC_VECTOR (31 downto 0);
    signal flattening_U0_flat_to_dense_streams_0_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal flattening_15_U0_ap_start : STD_LOGIC;
    signal flattening_15_U0_ap_done : STD_LOGIC;
    signal flattening_15_U0_ap_continue : STD_LOGIC;
    signal flattening_15_U0_ap_idle : STD_LOGIC;
    signal flattening_15_U0_ap_ready : STD_LOGIC;
    signal flattening_15_U0_pool_to_flat_streams_1_read : STD_LOGIC;
    signal flattening_15_U0_flat_to_dense_streams_1_din : STD_LOGIC_VECTOR (31 downto 0);
    signal flattening_15_U0_flat_to_dense_streams_1_write : STD_LOGIC;
    signal flattening_16_U0_ap_start : STD_LOGIC;
    signal flattening_16_U0_ap_done : STD_LOGIC;
    signal flattening_16_U0_ap_continue : STD_LOGIC;
    signal flattening_16_U0_ap_idle : STD_LOGIC;
    signal flattening_16_U0_ap_ready : STD_LOGIC;
    signal flattening_16_U0_pool_to_flat_streams_2_read : STD_LOGIC;
    signal flattening_16_U0_flat_to_dense_streams_2_din : STD_LOGIC_VECTOR (31 downto 0);
    signal flattening_16_U0_flat_to_dense_streams_2_write : STD_LOGIC;
    signal flattening_17_U0_ap_start : STD_LOGIC;
    signal flattening_17_U0_ap_done : STD_LOGIC;
    signal flattening_17_U0_ap_continue : STD_LOGIC;
    signal flattening_17_U0_ap_idle : STD_LOGIC;
    signal flattening_17_U0_ap_ready : STD_LOGIC;
    signal flattening_17_U0_pool_to_flat_streams_3_read : STD_LOGIC;
    signal flattening_17_U0_flat_to_dense_streams_3_din : STD_LOGIC_VECTOR (31 downto 0);
    signal flattening_17_U0_flat_to_dense_streams_3_write : STD_LOGIC;
    signal flattening_18_U0_ap_start : STD_LOGIC;
    signal flattening_18_U0_ap_done : STD_LOGIC;
    signal flattening_18_U0_ap_continue : STD_LOGIC;
    signal flattening_18_U0_ap_idle : STD_LOGIC;
    signal flattening_18_U0_ap_ready : STD_LOGIC;
    signal flattening_18_U0_pool_to_flat_streams_4_read : STD_LOGIC;
    signal flattening_18_U0_flat_to_dense_streams_4_din : STD_LOGIC_VECTOR (31 downto 0);
    signal flattening_18_U0_flat_to_dense_streams_4_write : STD_LOGIC;
    signal flattening_19_U0_ap_start : STD_LOGIC;
    signal flattening_19_U0_ap_done : STD_LOGIC;
    signal flattening_19_U0_ap_continue : STD_LOGIC;
    signal flattening_19_U0_ap_idle : STD_LOGIC;
    signal flattening_19_U0_ap_ready : STD_LOGIC;
    signal flattening_19_U0_pool_to_flat_streams_5_read : STD_LOGIC;
    signal flattening_19_U0_flat_to_dense_streams_5_din : STD_LOGIC_VECTOR (31 downto 0);
    signal flattening_19_U0_flat_to_dense_streams_5_write : STD_LOGIC;
    signal flattening_20_U0_ap_start : STD_LOGIC;
    signal flattening_20_U0_ap_done : STD_LOGIC;
    signal flattening_20_U0_ap_continue : STD_LOGIC;
    signal flattening_20_U0_ap_idle : STD_LOGIC;
    signal flattening_20_U0_ap_ready : STD_LOGIC;
    signal flattening_20_U0_pool_to_flat_streams_6_read : STD_LOGIC;
    signal flattening_20_U0_flat_to_dense_streams_6_din : STD_LOGIC_VECTOR (31 downto 0);
    signal flattening_20_U0_flat_to_dense_streams_6_write : STD_LOGIC;
    signal flattening_21_U0_ap_start : STD_LOGIC;
    signal flattening_21_U0_ap_done : STD_LOGIC;
    signal flattening_21_U0_ap_continue : STD_LOGIC;
    signal flattening_21_U0_ap_idle : STD_LOGIC;
    signal flattening_21_U0_ap_ready : STD_LOGIC;
    signal flattening_21_U0_pool_to_flat_streams_7_read : STD_LOGIC;
    signal flattening_21_U0_flat_to_dense_streams_7_din : STD_LOGIC_VECTOR (31 downto 0);
    signal flattening_21_U0_flat_to_dense_streams_7_write : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_flattening_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_flattening_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_flattening_15_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_flattening_15_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_flattening_16_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_flattening_16_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_flattening_17_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_flattening_17_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_flattening_18_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_flattening_18_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_flattening_19_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_flattening_19_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_flattening_20_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_flattening_20_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_flattening_21_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_flattening_21_U0_ap_ready : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cnn_flattening IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool_to_flat_streams_0_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool_to_flat_streams_0_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_0_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_0_empty_n : IN STD_LOGIC;
        pool_to_flat_streams_0_read : OUT STD_LOGIC;
        flat_to_dense_streams_0_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        flat_to_dense_streams_0_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_0_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_0_full_n : IN STD_LOGIC;
        flat_to_dense_streams_0_write : OUT STD_LOGIC );
    end component;


    component cnn_flattening_15 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool_to_flat_streams_1_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool_to_flat_streams_1_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_1_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_1_empty_n : IN STD_LOGIC;
        pool_to_flat_streams_1_read : OUT STD_LOGIC;
        flat_to_dense_streams_1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        flat_to_dense_streams_1_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_1_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_1_full_n : IN STD_LOGIC;
        flat_to_dense_streams_1_write : OUT STD_LOGIC );
    end component;


    component cnn_flattening_16 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool_to_flat_streams_2_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool_to_flat_streams_2_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_2_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_2_empty_n : IN STD_LOGIC;
        pool_to_flat_streams_2_read : OUT STD_LOGIC;
        flat_to_dense_streams_2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        flat_to_dense_streams_2_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_2_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_2_full_n : IN STD_LOGIC;
        flat_to_dense_streams_2_write : OUT STD_LOGIC );
    end component;


    component cnn_flattening_17 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool_to_flat_streams_3_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool_to_flat_streams_3_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_3_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_3_empty_n : IN STD_LOGIC;
        pool_to_flat_streams_3_read : OUT STD_LOGIC;
        flat_to_dense_streams_3_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        flat_to_dense_streams_3_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_3_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_3_full_n : IN STD_LOGIC;
        flat_to_dense_streams_3_write : OUT STD_LOGIC );
    end component;


    component cnn_flattening_18 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool_to_flat_streams_4_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool_to_flat_streams_4_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_4_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_4_empty_n : IN STD_LOGIC;
        pool_to_flat_streams_4_read : OUT STD_LOGIC;
        flat_to_dense_streams_4_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        flat_to_dense_streams_4_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_4_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_4_full_n : IN STD_LOGIC;
        flat_to_dense_streams_4_write : OUT STD_LOGIC );
    end component;


    component cnn_flattening_19 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool_to_flat_streams_5_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool_to_flat_streams_5_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_5_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_5_empty_n : IN STD_LOGIC;
        pool_to_flat_streams_5_read : OUT STD_LOGIC;
        flat_to_dense_streams_5_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        flat_to_dense_streams_5_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_5_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_5_full_n : IN STD_LOGIC;
        flat_to_dense_streams_5_write : OUT STD_LOGIC );
    end component;


    component cnn_flattening_20 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool_to_flat_streams_6_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool_to_flat_streams_6_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_6_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_6_empty_n : IN STD_LOGIC;
        pool_to_flat_streams_6_read : OUT STD_LOGIC;
        flat_to_dense_streams_6_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        flat_to_dense_streams_6_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_6_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_6_full_n : IN STD_LOGIC;
        flat_to_dense_streams_6_write : OUT STD_LOGIC );
    end component;


    component cnn_flattening_21 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        pool_to_flat_streams_7_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        pool_to_flat_streams_7_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_7_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        pool_to_flat_streams_7_empty_n : IN STD_LOGIC;
        pool_to_flat_streams_7_read : OUT STD_LOGIC;
        flat_to_dense_streams_7_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        flat_to_dense_streams_7_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_7_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
        flat_to_dense_streams_7_full_n : IN STD_LOGIC;
        flat_to_dense_streams_7_write : OUT STD_LOGIC );
    end component;



begin
    flattening_U0 : component cnn_flattening
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => flattening_U0_ap_start,
        ap_done => flattening_U0_ap_done,
        ap_continue => flattening_U0_ap_continue,
        ap_idle => flattening_U0_ap_idle,
        ap_ready => flattening_U0_ap_ready,
        pool_to_flat_streams_0_dout => pool_to_flat_streams_0_dout,
        pool_to_flat_streams_0_num_data_valid => ap_const_lv9_0,
        pool_to_flat_streams_0_fifo_cap => ap_const_lv9_0,
        pool_to_flat_streams_0_empty_n => pool_to_flat_streams_0_empty_n,
        pool_to_flat_streams_0_read => flattening_U0_pool_to_flat_streams_0_read,
        flat_to_dense_streams_0_din => flattening_U0_flat_to_dense_streams_0_din,
        flat_to_dense_streams_0_num_data_valid => ap_const_lv9_0,
        flat_to_dense_streams_0_fifo_cap => ap_const_lv9_0,
        flat_to_dense_streams_0_full_n => flat_to_dense_streams_0_full_n,
        flat_to_dense_streams_0_write => flattening_U0_flat_to_dense_streams_0_write);

    flattening_15_U0 : component cnn_flattening_15
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => flattening_15_U0_ap_start,
        ap_done => flattening_15_U0_ap_done,
        ap_continue => flattening_15_U0_ap_continue,
        ap_idle => flattening_15_U0_ap_idle,
        ap_ready => flattening_15_U0_ap_ready,
        pool_to_flat_streams_1_dout => pool_to_flat_streams_1_dout,
        pool_to_flat_streams_1_num_data_valid => ap_const_lv9_0,
        pool_to_flat_streams_1_fifo_cap => ap_const_lv9_0,
        pool_to_flat_streams_1_empty_n => pool_to_flat_streams_1_empty_n,
        pool_to_flat_streams_1_read => flattening_15_U0_pool_to_flat_streams_1_read,
        flat_to_dense_streams_1_din => flattening_15_U0_flat_to_dense_streams_1_din,
        flat_to_dense_streams_1_num_data_valid => ap_const_lv9_0,
        flat_to_dense_streams_1_fifo_cap => ap_const_lv9_0,
        flat_to_dense_streams_1_full_n => flat_to_dense_streams_1_full_n,
        flat_to_dense_streams_1_write => flattening_15_U0_flat_to_dense_streams_1_write);

    flattening_16_U0 : component cnn_flattening_16
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => flattening_16_U0_ap_start,
        ap_done => flattening_16_U0_ap_done,
        ap_continue => flattening_16_U0_ap_continue,
        ap_idle => flattening_16_U0_ap_idle,
        ap_ready => flattening_16_U0_ap_ready,
        pool_to_flat_streams_2_dout => pool_to_flat_streams_2_dout,
        pool_to_flat_streams_2_num_data_valid => ap_const_lv9_0,
        pool_to_flat_streams_2_fifo_cap => ap_const_lv9_0,
        pool_to_flat_streams_2_empty_n => pool_to_flat_streams_2_empty_n,
        pool_to_flat_streams_2_read => flattening_16_U0_pool_to_flat_streams_2_read,
        flat_to_dense_streams_2_din => flattening_16_U0_flat_to_dense_streams_2_din,
        flat_to_dense_streams_2_num_data_valid => ap_const_lv9_0,
        flat_to_dense_streams_2_fifo_cap => ap_const_lv9_0,
        flat_to_dense_streams_2_full_n => flat_to_dense_streams_2_full_n,
        flat_to_dense_streams_2_write => flattening_16_U0_flat_to_dense_streams_2_write);

    flattening_17_U0 : component cnn_flattening_17
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => flattening_17_U0_ap_start,
        ap_done => flattening_17_U0_ap_done,
        ap_continue => flattening_17_U0_ap_continue,
        ap_idle => flattening_17_U0_ap_idle,
        ap_ready => flattening_17_U0_ap_ready,
        pool_to_flat_streams_3_dout => pool_to_flat_streams_3_dout,
        pool_to_flat_streams_3_num_data_valid => ap_const_lv9_0,
        pool_to_flat_streams_3_fifo_cap => ap_const_lv9_0,
        pool_to_flat_streams_3_empty_n => pool_to_flat_streams_3_empty_n,
        pool_to_flat_streams_3_read => flattening_17_U0_pool_to_flat_streams_3_read,
        flat_to_dense_streams_3_din => flattening_17_U0_flat_to_dense_streams_3_din,
        flat_to_dense_streams_3_num_data_valid => ap_const_lv9_0,
        flat_to_dense_streams_3_fifo_cap => ap_const_lv9_0,
        flat_to_dense_streams_3_full_n => flat_to_dense_streams_3_full_n,
        flat_to_dense_streams_3_write => flattening_17_U0_flat_to_dense_streams_3_write);

    flattening_18_U0 : component cnn_flattening_18
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => flattening_18_U0_ap_start,
        ap_done => flattening_18_U0_ap_done,
        ap_continue => flattening_18_U0_ap_continue,
        ap_idle => flattening_18_U0_ap_idle,
        ap_ready => flattening_18_U0_ap_ready,
        pool_to_flat_streams_4_dout => pool_to_flat_streams_4_dout,
        pool_to_flat_streams_4_num_data_valid => ap_const_lv9_0,
        pool_to_flat_streams_4_fifo_cap => ap_const_lv9_0,
        pool_to_flat_streams_4_empty_n => pool_to_flat_streams_4_empty_n,
        pool_to_flat_streams_4_read => flattening_18_U0_pool_to_flat_streams_4_read,
        flat_to_dense_streams_4_din => flattening_18_U0_flat_to_dense_streams_4_din,
        flat_to_dense_streams_4_num_data_valid => ap_const_lv9_0,
        flat_to_dense_streams_4_fifo_cap => ap_const_lv9_0,
        flat_to_dense_streams_4_full_n => flat_to_dense_streams_4_full_n,
        flat_to_dense_streams_4_write => flattening_18_U0_flat_to_dense_streams_4_write);

    flattening_19_U0 : component cnn_flattening_19
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => flattening_19_U0_ap_start,
        ap_done => flattening_19_U0_ap_done,
        ap_continue => flattening_19_U0_ap_continue,
        ap_idle => flattening_19_U0_ap_idle,
        ap_ready => flattening_19_U0_ap_ready,
        pool_to_flat_streams_5_dout => pool_to_flat_streams_5_dout,
        pool_to_flat_streams_5_num_data_valid => ap_const_lv9_0,
        pool_to_flat_streams_5_fifo_cap => ap_const_lv9_0,
        pool_to_flat_streams_5_empty_n => pool_to_flat_streams_5_empty_n,
        pool_to_flat_streams_5_read => flattening_19_U0_pool_to_flat_streams_5_read,
        flat_to_dense_streams_5_din => flattening_19_U0_flat_to_dense_streams_5_din,
        flat_to_dense_streams_5_num_data_valid => ap_const_lv9_0,
        flat_to_dense_streams_5_fifo_cap => ap_const_lv9_0,
        flat_to_dense_streams_5_full_n => flat_to_dense_streams_5_full_n,
        flat_to_dense_streams_5_write => flattening_19_U0_flat_to_dense_streams_5_write);

    flattening_20_U0 : component cnn_flattening_20
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => flattening_20_U0_ap_start,
        ap_done => flattening_20_U0_ap_done,
        ap_continue => flattening_20_U0_ap_continue,
        ap_idle => flattening_20_U0_ap_idle,
        ap_ready => flattening_20_U0_ap_ready,
        pool_to_flat_streams_6_dout => pool_to_flat_streams_6_dout,
        pool_to_flat_streams_6_num_data_valid => ap_const_lv9_0,
        pool_to_flat_streams_6_fifo_cap => ap_const_lv9_0,
        pool_to_flat_streams_6_empty_n => pool_to_flat_streams_6_empty_n,
        pool_to_flat_streams_6_read => flattening_20_U0_pool_to_flat_streams_6_read,
        flat_to_dense_streams_6_din => flattening_20_U0_flat_to_dense_streams_6_din,
        flat_to_dense_streams_6_num_data_valid => ap_const_lv9_0,
        flat_to_dense_streams_6_fifo_cap => ap_const_lv9_0,
        flat_to_dense_streams_6_full_n => flat_to_dense_streams_6_full_n,
        flat_to_dense_streams_6_write => flattening_20_U0_flat_to_dense_streams_6_write);

    flattening_21_U0 : component cnn_flattening_21
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => flattening_21_U0_ap_start,
        ap_done => flattening_21_U0_ap_done,
        ap_continue => flattening_21_U0_ap_continue,
        ap_idle => flattening_21_U0_ap_idle,
        ap_ready => flattening_21_U0_ap_ready,
        pool_to_flat_streams_7_dout => pool_to_flat_streams_7_dout,
        pool_to_flat_streams_7_num_data_valid => ap_const_lv9_0,
        pool_to_flat_streams_7_fifo_cap => ap_const_lv9_0,
        pool_to_flat_streams_7_empty_n => pool_to_flat_streams_7_empty_n,
        pool_to_flat_streams_7_read => flattening_21_U0_pool_to_flat_streams_7_read,
        flat_to_dense_streams_7_din => flattening_21_U0_flat_to_dense_streams_7_din,
        flat_to_dense_streams_7_num_data_valid => ap_const_lv9_0,
        flat_to_dense_streams_7_fifo_cap => ap_const_lv9_0,
        flat_to_dense_streams_7_full_n => flat_to_dense_streams_7_full_n,
        flat_to_dense_streams_7_write => flattening_21_U0_flat_to_dense_streams_7_write);





    ap_sync_reg_flattening_15_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_flattening_15_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_flattening_15_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_flattening_15_U0_ap_ready <= ap_sync_flattening_15_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_flattening_16_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_flattening_16_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_flattening_16_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_flattening_16_U0_ap_ready <= ap_sync_flattening_16_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_flattening_17_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_flattening_17_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_flattening_17_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_flattening_17_U0_ap_ready <= ap_sync_flattening_17_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_flattening_18_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_flattening_18_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_flattening_18_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_flattening_18_U0_ap_ready <= ap_sync_flattening_18_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_flattening_19_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_flattening_19_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_flattening_19_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_flattening_19_U0_ap_ready <= ap_sync_flattening_19_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_flattening_20_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_flattening_20_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_flattening_20_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_flattening_20_U0_ap_ready <= ap_sync_flattening_20_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_flattening_21_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_flattening_21_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_flattening_21_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_flattening_21_U0_ap_ready <= ap_sync_flattening_21_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_flattening_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_flattening_U0_ap_ready <= ap_const_logic_0;
            else
                if (((real_start and ap_sync_ready) = ap_const_logic_1)) then 
                    ap_sync_reg_flattening_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_flattening_U0_ap_ready <= ap_sync_flattening_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    ap_done <= ap_sync_done;
    ap_idle <= (flattening_U0_ap_idle and flattening_21_U0_ap_idle and flattening_20_U0_ap_idle and flattening_19_U0_ap_idle and flattening_18_U0_ap_idle and flattening_17_U0_ap_idle and flattening_16_U0_ap_idle and flattening_15_U0_ap_idle);
    ap_ready <= ap_sync_ready;
    ap_sync_continue <= (ap_sync_done and ap_continue);
    ap_sync_done <= (flattening_U0_ap_done and flattening_21_U0_ap_done and flattening_20_U0_ap_done and flattening_19_U0_ap_done and flattening_18_U0_ap_done and flattening_17_U0_ap_done and flattening_16_U0_ap_done and flattening_15_U0_ap_done);
    ap_sync_flattening_15_U0_ap_ready <= (flattening_15_U0_ap_ready or ap_sync_reg_flattening_15_U0_ap_ready);
    ap_sync_flattening_16_U0_ap_ready <= (flattening_16_U0_ap_ready or ap_sync_reg_flattening_16_U0_ap_ready);
    ap_sync_flattening_17_U0_ap_ready <= (flattening_17_U0_ap_ready or ap_sync_reg_flattening_17_U0_ap_ready);
    ap_sync_flattening_18_U0_ap_ready <= (flattening_18_U0_ap_ready or ap_sync_reg_flattening_18_U0_ap_ready);
    ap_sync_flattening_19_U0_ap_ready <= (flattening_19_U0_ap_ready or ap_sync_reg_flattening_19_U0_ap_ready);
    ap_sync_flattening_20_U0_ap_ready <= (flattening_20_U0_ap_ready or ap_sync_reg_flattening_20_U0_ap_ready);
    ap_sync_flattening_21_U0_ap_ready <= (flattening_21_U0_ap_ready or ap_sync_reg_flattening_21_U0_ap_ready);
    ap_sync_flattening_U0_ap_ready <= (flattening_U0_ap_ready or ap_sync_reg_flattening_U0_ap_ready);
    ap_sync_ready <= (ap_sync_flattening_U0_ap_ready and ap_sync_flattening_21_U0_ap_ready and ap_sync_flattening_20_U0_ap_ready and ap_sync_flattening_19_U0_ap_ready and ap_sync_flattening_18_U0_ap_ready and ap_sync_flattening_17_U0_ap_ready and ap_sync_flattening_16_U0_ap_ready and ap_sync_flattening_15_U0_ap_ready);
    flat_to_dense_streams_0_din <= flattening_U0_flat_to_dense_streams_0_din;
    flat_to_dense_streams_0_write <= flattening_U0_flat_to_dense_streams_0_write;
    flat_to_dense_streams_1_din <= flattening_15_U0_flat_to_dense_streams_1_din;
    flat_to_dense_streams_1_write <= flattening_15_U0_flat_to_dense_streams_1_write;
    flat_to_dense_streams_2_din <= flattening_16_U0_flat_to_dense_streams_2_din;
    flat_to_dense_streams_2_write <= flattening_16_U0_flat_to_dense_streams_2_write;
    flat_to_dense_streams_3_din <= flattening_17_U0_flat_to_dense_streams_3_din;
    flat_to_dense_streams_3_write <= flattening_17_U0_flat_to_dense_streams_3_write;
    flat_to_dense_streams_4_din <= flattening_18_U0_flat_to_dense_streams_4_din;
    flat_to_dense_streams_4_write <= flattening_18_U0_flat_to_dense_streams_4_write;
    flat_to_dense_streams_5_din <= flattening_19_U0_flat_to_dense_streams_5_din;
    flat_to_dense_streams_5_write <= flattening_19_U0_flat_to_dense_streams_5_write;
    flat_to_dense_streams_6_din <= flattening_20_U0_flat_to_dense_streams_6_din;
    flat_to_dense_streams_6_write <= flattening_20_U0_flat_to_dense_streams_6_write;
    flat_to_dense_streams_7_din <= flattening_21_U0_flat_to_dense_streams_7_din;
    flat_to_dense_streams_7_write <= flattening_21_U0_flat_to_dense_streams_7_write;
    flattening_15_U0_ap_continue <= ap_sync_continue;
    flattening_15_U0_ap_start <= (real_start and (ap_sync_reg_flattening_15_U0_ap_ready xor ap_const_logic_1));
    flattening_16_U0_ap_continue <= ap_sync_continue;
    flattening_16_U0_ap_start <= (real_start and (ap_sync_reg_flattening_16_U0_ap_ready xor ap_const_logic_1));
    flattening_17_U0_ap_continue <= ap_sync_continue;
    flattening_17_U0_ap_start <= (real_start and (ap_sync_reg_flattening_17_U0_ap_ready xor ap_const_logic_1));
    flattening_18_U0_ap_continue <= ap_sync_continue;
    flattening_18_U0_ap_start <= (real_start and (ap_sync_reg_flattening_18_U0_ap_ready xor ap_const_logic_1));
    flattening_19_U0_ap_continue <= ap_sync_continue;
    flattening_19_U0_ap_start <= (real_start and (ap_sync_reg_flattening_19_U0_ap_ready xor ap_const_logic_1));
    flattening_20_U0_ap_continue <= ap_sync_continue;
    flattening_20_U0_ap_start <= (real_start and (ap_sync_reg_flattening_20_U0_ap_ready xor ap_const_logic_1));
    flattening_21_U0_ap_continue <= ap_sync_continue;
    flattening_21_U0_ap_start <= (real_start and (ap_sync_reg_flattening_21_U0_ap_ready xor ap_const_logic_1));
    flattening_U0_ap_continue <= ap_sync_continue;
    flattening_U0_ap_start <= (real_start and (ap_sync_reg_flattening_U0_ap_ready xor ap_const_logic_1));
    internal_ap_ready <= ap_sync_ready;
    pool_to_flat_streams_0_read <= flattening_U0_pool_to_flat_streams_0_read;
    pool_to_flat_streams_1_read <= flattening_15_U0_pool_to_flat_streams_1_read;
    pool_to_flat_streams_2_read <= flattening_16_U0_pool_to_flat_streams_2_read;
    pool_to_flat_streams_3_read <= flattening_17_U0_pool_to_flat_streams_3_read;
    pool_to_flat_streams_4_read <= flattening_18_U0_pool_to_flat_streams_4_read;
    pool_to_flat_streams_5_read <= flattening_19_U0_pool_to_flat_streams_5_read;
    pool_to_flat_streams_6_read <= flattening_20_U0_pool_to_flat_streams_6_read;
    pool_to_flat_streams_7_read <= flattening_21_U0_pool_to_flat_streams_7_read;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
