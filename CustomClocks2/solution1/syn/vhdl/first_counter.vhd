-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity first_counter is
port (
    clock : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    enable : IN STD_LOGIC;
    out_counter : OUT STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of first_counter is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "first_counter,hls_ip_2018_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.797000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=10,HLS_SYN_LUT=21,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_first_counter_increment_fu_50_out_counter : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_first_counter_increment_fu_50_out_counter_ap_vld : STD_LOGIC;
    signal grp_first_counter_increment_fu_50_first_counter_count_V_o : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal first_counter_count_V : STD_LOGIC_VECTOR (3 downto 0);

    component first_counter_increment IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        enable : IN STD_LOGIC;
        out_counter : OUT STD_LOGIC_VECTOR (3 downto 0);
        out_counter_ap_vld : OUT STD_LOGIC;
        first_counter_count_V_i : IN STD_LOGIC_VECTOR (3 downto 0);
        first_counter_count_V_o : OUT STD_LOGIC_VECTOR (3 downto 0);
        first_counter_count_V_o_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_first_counter_increment_fu_50 : component first_counter_increment
    port map (
        ap_clk => clock,
        ap_rst => reset,
        enable => enable,
        out_counter => grp_first_counter_increment_fu_50_out_counter,
        out_counter_ap_vld => grp_first_counter_increment_fu_50_out_counter_ap_vld,
        first_counter_count_V_i => first_counter_count_V,
        first_counter_count_V_o => grp_first_counter_increment_fu_50_first_counter_count_V_o,
        first_counter_count_V_o_ap_vld => grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld);





    first_counter_count_V_assign_proc : process(clock)
    begin
        if (clock'event and clock =  '1') then
            if ((grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld = ap_const_logic_1)) then 
                first_counter_count_V <= grp_first_counter_increment_fu_50_first_counter_count_V_o;
            end if; 
        end if;
    end process;


    out_counter_assign_proc : process(clock)
    begin
        if (clock'event and clock =  '1') then
            if ((grp_first_counter_increment_fu_50_out_counter_ap_vld = ap_const_logic_1)) then 
                out_counter <= grp_first_counter_increment_fu_50_out_counter;
            end if; 
        end if;
    end process;

    ap_CS_fsm <= ap_const_lv2_0;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
end behav;
