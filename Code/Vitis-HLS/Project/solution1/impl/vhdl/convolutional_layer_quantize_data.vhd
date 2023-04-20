-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity convolutional_layer_quantize_data is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    value_r : IN STD_LOGIC_VECTOR (31 downto 0);
    value_scale : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of convolutional_layer_quantize_data is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (22 downto 0) := "00000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (22 downto 0) := "00000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (22 downto 0) := "00000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (22 downto 0) := "00000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (22 downto 0) := "00000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (22 downto 0) := "00000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (22 downto 0) := "00001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (22 downto 0) := "00010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (22 downto 0) := "00100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (22 downto 0) := "01000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (22 downto 0) := "10000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv11_3FE : STD_LOGIC_VECTOR (10 downto 0) := "01111111110";
    constant ap_const_lv11_433 : STD_LOGIC_VECTOR (10 downto 0) := "10000110011";
    constant ap_const_lv32_39 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111001";
    constant ap_const_lv63_0 : STD_LOGIC_VECTOR (62 downto 0) := "000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv52_FFFFFFFFFFFFF : STD_LOGIC_VECTOR (51 downto 0) := "1111111111111111111111111111111111111111111111111111";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv12_C01 : STD_LOGIC_VECTOR (11 downto 0) := "110000000001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv11_3FF : STD_LOGIC_VECTOR (10 downto 0) := "01111111111";
    constant ap_const_lv32_35 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110101";
    constant ap_const_lv32_54 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010100";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mask_table_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal mask_table_ce0 : STD_LOGIC;
    signal mask_table_q0 : STD_LOGIC_VECTOR (51 downto 0);
    signal one_half_table_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal one_half_table_ce0 : STD_LOGIC;
    signal one_half_table_q0 : STD_LOGIC_VECTOR (52 downto 0);
    signal grp_fu_106_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal div_reg_400 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal p_Result_s_reg_406 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal grp_fu_112_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal dc_reg_412 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal icmp_ln1034_fu_139_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1034_reg_418 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state19 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state19 : signal is "none";
    signal icmp_ln1034_1_fu_145_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1034_1_reg_424 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln368_fu_167_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal trunc_ln368_reg_439 : STD_LOGIC_VECTOR (62 downto 0);
    signal mask_reg_444 : STD_LOGIC_VECTOR (51 downto 0);
    signal ap_CS_fsm_state20 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state20 : signal is "none";
    signal one_half_reg_449 : STD_LOGIC_VECTOR (52 downto 0);
    signal dc_1_fu_247_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal dc_1_reg_454 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state21 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state21 : signal is "none";
    signal p_Result_4_reg_459 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal val_fu_371_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal val_reg_464 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln541_fu_161_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bitcast_ln486_fu_115_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_V_fu_126_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_fu_129_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal index_fu_151_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_2_fu_181_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal one_half_i_cast_fu_178_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal data_V_1_fu_187_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_193_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal xor_ln1496_fu_197_p2 : STD_LOGIC_VECTOR (51 downto 0);
    signal tmp_1_fu_208_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal xs_sig_V_fu_202_p2 : STD_LOGIC_VECTOR (51 downto 0);
    signal p_Result_1_fu_171_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_3_fu_218_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln1034_fu_226_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln1034_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln1034_fu_242_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln1034_fu_233_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal data_V_2_fu_254_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_11_fu_275_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal mantissa_fu_279_p4 : STD_LOGIC_VECTOR (53 downto 0);
    signal tmp_10_fu_265_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln513_fu_293_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln513_fu_297_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln1364_fu_311_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal isNeg_fu_303_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln1364_fu_317_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ush_fu_321_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln1340_fu_329_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln15_fu_289_p1 : STD_LOGIC_VECTOR (136 downto 0);
    signal zext_ln1340_fu_333_p1 : STD_LOGIC_VECTOR (136 downto 0);
    signal r_V_fu_337_p2 : STD_LOGIC_VECTOR (136 downto 0);
    signal tmp_8_fu_349_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_1_fu_343_p2 : STD_LOGIC_VECTOR (136 downto 0);
    signal zext_ln671_fu_357_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_361_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal result_V_2_fu_379_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (22 downto 0);
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
    signal ap_ST_fsm_state14_blk : STD_LOGIC;
    signal ap_ST_fsm_state15_blk : STD_LOGIC;
    signal ap_ST_fsm_state16_blk : STD_LOGIC;
    signal ap_ST_fsm_state17_blk : STD_LOGIC;
    signal ap_ST_fsm_state18_blk : STD_LOGIC;
    signal ap_ST_fsm_state19_blk : STD_LOGIC;
    signal ap_ST_fsm_state20_blk : STD_LOGIC;
    signal ap_ST_fsm_state21_blk : STD_LOGIC;
    signal ap_ST_fsm_state22_blk : STD_LOGIC;
    signal ap_ST_fsm_state23_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component convolutional_layer_fdiv_32ns_32ns_32_16_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component convolutional_layer_fpext_32ns_64_2_no_dsp_1 IS
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
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component convolutional_layer_quantize_data_mask_table_ROM_AUTO_1R IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (51 downto 0) );
    end component;


    component convolutional_layer_quantize_data_one_half_table_ROM_AUTO_1R IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (52 downto 0) );
    end component;



begin
    mask_table_U : component convolutional_layer_quantize_data_mask_table_ROM_AUTO_1R
    generic map (
        DataWidth => 52,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => mask_table_address0,
        ce0 => mask_table_ce0,
        q0 => mask_table_q0);

    one_half_table_U : component convolutional_layer_quantize_data_one_half_table_ROM_AUTO_1R
    generic map (
        DataWidth => 53,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => one_half_table_address0,
        ce0 => one_half_table_ce0,
        q0 => one_half_table_q0);

    fdiv_32ns_32ns_32_16_no_dsp_1_U1 : component convolutional_layer_fdiv_32ns_32ns_32_16_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 16,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => value_r,
        din1 => value_scale,
        ce => ap_const_logic_1,
        dout => grp_fu_106_p2);

    fpext_32ns_64_2_no_dsp_1_U2 : component convolutional_layer_fpext_32ns_64_2_no_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => div_reg_400,
        ce => ap_const_logic_1,
        dout => grp_fu_112_p1);





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

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state21)) then
                dc_1_reg_454 <= dc_1_fu_247_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state18)) then
                dc_reg_412 <= grp_fu_112_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state16)) then
                div_reg_400 <= grp_fu_106_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state19)) then
                icmp_ln1034_1_reg_424 <= icmp_ln1034_1_fu_145_p2;
                icmp_ln1034_reg_418 <= icmp_ln1034_fu_139_p2;
                trunc_ln368_reg_439 <= trunc_ln368_fu_167_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state20)) then
                mask_reg_444 <= mask_table_q0;
                one_half_reg_449 <= one_half_table_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then
                p_Result_4_reg_459 <= data_V_2_fu_254_p1(63 downto 63);
                val_reg_464 <= val_fu_371_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state17)) then
                p_Result_s_reg_406 <= bitcast_ln486_fu_115_p1(31 downto 31);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
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
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    add_ln513_fu_297_p2 <= std_logic_vector(unsigned(zext_ln513_fu_293_p1) + unsigned(ap_const_lv12_C01));
    and_ln1034_fu_242_p2 <= (xor_ln1034_fu_237_p2 and icmp_ln1034_1_reg_424);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state18 <= ap_CS_fsm(17);
    ap_CS_fsm_state19 <= ap_CS_fsm(18);
    ap_CS_fsm_state20 <= ap_CS_fsm(19);
    ap_CS_fsm_state21 <= ap_CS_fsm(20);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state23 <= ap_CS_fsm(22);
    ap_ST_fsm_state10_blk <= ap_const_logic_0;
    ap_ST_fsm_state11_blk <= ap_const_logic_0;
    ap_ST_fsm_state12_blk <= ap_const_logic_0;
    ap_ST_fsm_state13_blk <= ap_const_logic_0;
    ap_ST_fsm_state14_blk <= ap_const_logic_0;
    ap_ST_fsm_state15_blk <= ap_const_logic_0;
    ap_ST_fsm_state16_blk <= ap_const_logic_0;
    ap_ST_fsm_state17_blk <= ap_const_logic_0;
    ap_ST_fsm_state18_blk <= ap_const_logic_0;
    ap_ST_fsm_state19_blk <= ap_const_logic_0;

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state20_blk <= ap_const_logic_0;
    ap_ST_fsm_state21_blk <= ap_const_logic_0;
    ap_ST_fsm_state22_blk <= ap_const_logic_0;
    ap_ST_fsm_state23_blk <= ap_const_logic_0;
    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;
    ap_ST_fsm_state9_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state23)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state23) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state23)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= 
        result_V_2_fu_379_p2 when (p_Result_4_reg_459(0) = '1') else 
        val_reg_464;
    bitcast_ln1034_fu_233_p1 <= select_ln1034_fu_226_p3;
    bitcast_ln486_fu_115_p1 <= div_reg_400;
    data_V_1_fu_187_p2 <= std_logic_vector(unsigned(p_Result_2_fu_181_p3) + unsigned(one_half_i_cast_fu_178_p1));
    data_V_2_fu_254_p1 <= dc_1_reg_454;
    data_V_fu_126_p1 <= dc_reg_412;
    dc_1_fu_247_p3 <= 
        dc_reg_412 when (and_ln1034_fu_242_p2(0) = '1') else 
        bitcast_ln1034_fu_233_p1;
    icmp_ln1034_1_fu_145_p2 <= "1" when (unsigned(tmp_9_fu_129_p4) > unsigned(ap_const_lv11_433)) else "0";
    icmp_ln1034_fu_139_p2 <= "1" when (unsigned(tmp_9_fu_129_p4) < unsigned(ap_const_lv11_3FE)) else "0";
    index_fu_151_p4 <= data_V_fu_126_p1(57 downto 52);
    isNeg_fu_303_p3 <= add_ln513_fu_297_p2(11 downto 11);
    mantissa_fu_279_p4 <= ((ap_const_lv1_1 & tmp_11_fu_275_p1) & ap_const_lv1_0);
    mask_table_address0 <= zext_ln541_fu_161_p1(6 - 1 downto 0);

    mask_table_ce0_assign_proc : process(ap_CS_fsm_state19)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state19)) then 
            mask_table_ce0 <= ap_const_logic_1;
        else 
            mask_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    one_half_i_cast_fu_178_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(one_half_reg_449),64));
    one_half_table_address0 <= zext_ln541_fu_161_p1(6 - 1 downto 0);

    one_half_table_ce0_assign_proc : process(ap_CS_fsm_state19)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state19)) then 
            one_half_table_ce0 <= ap_const_logic_1;
        else 
            one_half_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_1_fu_171_p3 <= (p_Result_s_reg_406 & ap_const_lv63_0);
    p_Result_2_fu_181_p3 <= (p_Result_s_reg_406 & trunc_ln368_reg_439);
    p_Result_3_fu_218_p3 <= (tmp_1_fu_208_p4 & xs_sig_V_fu_202_p2);
    r_V_1_fu_343_p2 <= std_logic_vector(shift_left(unsigned(zext_ln15_fu_289_p1),to_integer(unsigned('0' & zext_ln1340_fu_333_p1(31-1 downto 0)))));
    r_V_fu_337_p2 <= std_logic_vector(shift_right(unsigned(zext_ln15_fu_289_p1),to_integer(unsigned('0' & zext_ln1340_fu_333_p1(31-1 downto 0)))));
    result_V_2_fu_379_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(val_reg_464));
    select_ln1034_fu_226_p3 <= 
        p_Result_1_fu_171_p3 when (icmp_ln1034_reg_418(0) = '1') else 
        p_Result_3_fu_218_p3;
        sext_ln1340_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ush_fu_321_p3),32));

        sext_ln1364_fu_317_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln1364_fu_311_p2),12));

    sub_ln1364_fu_311_p2 <= std_logic_vector(unsigned(ap_const_lv11_3FF) - unsigned(tmp_10_fu_265_p4));
    tmp_10_fu_265_p4 <= data_V_2_fu_254_p1(62 downto 52);
    tmp_11_fu_275_p1 <= data_V_2_fu_254_p1(52 - 1 downto 0);
    tmp_1_fu_208_p4 <= data_V_1_fu_187_p2(63 downto 52);
    tmp_6_fu_361_p4 <= r_V_1_fu_343_p2(84 downto 53);
    tmp_8_fu_349_p3 <= r_V_fu_337_p2(53 downto 53);
    tmp_9_fu_129_p4 <= data_V_fu_126_p1(62 downto 52);
    tmp_fu_193_p1 <= data_V_1_fu_187_p2(52 - 1 downto 0);
    trunc_ln368_fu_167_p1 <= data_V_fu_126_p1(63 - 1 downto 0);
    ush_fu_321_p3 <= 
        sext_ln1364_fu_317_p1 when (isNeg_fu_303_p3(0) = '1') else 
        add_ln513_fu_297_p2;
    val_fu_371_p3 <= 
        zext_ln671_fu_357_p1 when (isNeg_fu_303_p3(0) = '1') else 
        tmp_6_fu_361_p4;
    xor_ln1034_fu_237_p2 <= (icmp_ln1034_reg_418 xor ap_const_lv1_1);
    xor_ln1496_fu_197_p2 <= (mask_reg_444 xor ap_const_lv52_FFFFFFFFFFFFF);
    xs_sig_V_fu_202_p2 <= (xor_ln1496_fu_197_p2 and tmp_fu_193_p1);
    zext_ln1340_fu_333_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln1340_fu_329_p1),137));
    zext_ln15_fu_289_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mantissa_fu_279_p4),137));
    zext_ln513_fu_293_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_10_fu_265_p4),12));
    zext_ln541_fu_161_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_fu_151_p4),64));
    zext_ln671_fu_357_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_fu_349_p3),32));
end behav;
