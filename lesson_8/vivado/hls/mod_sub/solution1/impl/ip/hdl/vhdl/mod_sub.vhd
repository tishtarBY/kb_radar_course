-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1.3
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mod_sub is
port (
    ix_V : IN STD_LOGIC_VECTOR (31 downto 0);
    qx_V : IN STD_LOGIC_VECTOR (31 downto 0);
    i_mod_V : IN STD_LOGIC_VECTOR (7 downto 0);
    q_mod_V : IN STD_LOGIC_VECTOR (7 downto 0);
    iy_V : OUT STD_LOGIC_VECTOR (31 downto 0);
    qy_V : OUT STD_LOGIC_VECTOR (31 downto 0);
    period_V : IN STD_LOGIC_VECTOR (7 downto 0);
    mux_V : IN STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ix_V_ap_vld : IN STD_LOGIC;
    qx_V_ap_vld : IN STD_LOGIC;
    i_mod_V_ap_vld : IN STD_LOGIC;
    q_mod_V_ap_vld : IN STD_LOGIC;
    period_V_ap_vld : IN STD_LOGIC;
    mux_V_ap_vld : IN STD_LOGIC;
    iy_V_ap_vld : OUT STD_LOGIC;
    qy_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of mod_sub is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "mod_sub,hls_ip_2019_1_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z045-ffg900-2,HLS_INPUT_CLOCK=100.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=12.347000,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=8,HLS_SYN_FF=204,HLS_SYN_LUT=780,HLS_VERSION=2019_1_3}";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal mod_sub_entry23_U0_ap_start : STD_LOGIC;
    signal mod_sub_entry23_U0_start_full_n : STD_LOGIC;
    signal mod_sub_entry23_U0_ap_done : STD_LOGIC;
    signal mod_sub_entry23_U0_ap_continue : STD_LOGIC;
    signal mod_sub_entry23_U0_ap_idle : STD_LOGIC;
    signal mod_sub_entry23_U0_ap_ready : STD_LOGIC;
    signal mod_sub_entry23_U0_start_out : STD_LOGIC;
    signal mod_sub_entry23_U0_start_write : STD_LOGIC;
    signal mod_sub_entry23_U0_ix_V_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal mod_sub_entry23_U0_ix_V_out_write : STD_LOGIC;
    signal mod_sub_entry23_U0_qx_V_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal mod_sub_entry23_U0_qx_V_out_write : STD_LOGIC;
    signal mod_sub_entry23_U0_i_mod_V_out_din : STD_LOGIC_VECTOR (7 downto 0);
    signal mod_sub_entry23_U0_i_mod_V_out_write : STD_LOGIC;
    signal mod_sub_entry23_U0_q_mod_V_out_din : STD_LOGIC_VECTOR (7 downto 0);
    signal mod_sub_entry23_U0_q_mod_V_out_write : STD_LOGIC;
    signal mod_sub_entry23_U0_period_V_out_din : STD_LOGIC_VECTOR (7 downto 0);
    signal mod_sub_entry23_U0_period_V_out_write : STD_LOGIC;
    signal mod_sub_entry23_U0_mux_V_out_din : STD_LOGIC_VECTOR (1 downto 0);
    signal mod_sub_entry23_U0_mux_V_out_write : STD_LOGIC;
    signal freqm_U0_ap_start : STD_LOGIC;
    signal freqm_U0_ap_done : STD_LOGIC;
    signal freqm_U0_ap_continue : STD_LOGIC;
    signal freqm_U0_ap_idle : STD_LOGIC;
    signal freqm_U0_ap_ready : STD_LOGIC;
    signal freqm_U0_ix_V_read : STD_LOGIC;
    signal freqm_U0_qx_V_read : STD_LOGIC;
    signal freqm_U0_i_mod_V_read : STD_LOGIC;
    signal freqm_U0_q_mod_V_read : STD_LOGIC;
    signal freqm_U0_ix_V_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal freqm_U0_ix_V_out_write : STD_LOGIC;
    signal freqm_U0_qx_V_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal freqm_U0_qx_V_out_write : STD_LOGIC;
    signal freqm_U0_ap_return_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal freqm_U0_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_channel_done_q_fr_V : STD_LOGIC;
    signal q_fr_V_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_q_fr_V : STD_LOGIC := '0';
    signal ap_sync_channel_write_q_fr_V : STD_LOGIC;
    signal ap_channel_done_i_fr_V : STD_LOGIC;
    signal i_fr_V_full_n : STD_LOGIC;
    signal ap_sync_reg_channel_write_i_fr_V : STD_LOGIC := '0';
    signal ap_sync_channel_write_i_fr_V : STD_LOGIC;
    signal phasm_U0_ap_start : STD_LOGIC;
    signal phasm_U0_ap_done : STD_LOGIC;
    signal phasm_U0_ap_continue : STD_LOGIC;
    signal phasm_U0_ap_idle : STD_LOGIC;
    signal phasm_U0_ap_ready : STD_LOGIC;
    signal phasm_U0_period_V_read : STD_LOGIC;
    signal phasm_U0_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_channel_done_flag : STD_LOGIC;
    signal flag_full_n : STD_LOGIC;
    signal o_mux_U0_ap_start : STD_LOGIC;
    signal o_mux_U0_ap_done : STD_LOGIC;
    signal o_mux_U0_ap_continue : STD_LOGIC;
    signal o_mux_U0_ap_idle : STD_LOGIC;
    signal o_mux_U0_ap_ready : STD_LOGIC;
    signal o_mux_U0_ix_V_read : STD_LOGIC;
    signal o_mux_U0_qx_V_read : STD_LOGIC;
    signal o_mux_U0_iy_V : STD_LOGIC_VECTOR (31 downto 0);
    signal o_mux_U0_iy_V_ap_vld : STD_LOGIC;
    signal o_mux_U0_qy_V : STD_LOGIC_VECTOR (31 downto 0);
    signal o_mux_U0_qy_V_ap_vld : STD_LOGIC;
    signal o_mux_U0_flag : STD_LOGIC;
    signal o_mux_U0_mux_V_read : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal ix_V_c_full_n : STD_LOGIC;
    signal ix_V_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal ix_V_c_empty_n : STD_LOGIC;
    signal qx_V_c_full_n : STD_LOGIC;
    signal qx_V_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal qx_V_c_empty_n : STD_LOGIC;
    signal i_mod_V_c_full_n : STD_LOGIC;
    signal i_mod_V_c_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal i_mod_V_c_empty_n : STD_LOGIC;
    signal q_mod_V_c_full_n : STD_LOGIC;
    signal q_mod_V_c_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal q_mod_V_c_empty_n : STD_LOGIC;
    signal period_V_c_full_n : STD_LOGIC;
    signal period_V_c_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal period_V_c_empty_n : STD_LOGIC;
    signal mux_V_c_full_n : STD_LOGIC;
    signal mux_V_c_dout : STD_LOGIC_VECTOR (1 downto 0);
    signal mux_V_c_empty_n : STD_LOGIC;
    signal ix_V_c2_full_n : STD_LOGIC;
    signal ix_V_c2_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal ix_V_c2_empty_n : STD_LOGIC;
    signal qx_V_c3_full_n : STD_LOGIC;
    signal qx_V_c3_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal qx_V_c3_empty_n : STD_LOGIC;
    signal i_fr_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fr_V_empty_n : STD_LOGIC;
    signal q_fr_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal q_fr_V_empty_n : STD_LOGIC;
    signal flag_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal flag_empty_n : STD_LOGIC;
    signal start_for_freqm_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_freqm_U0_full_n : STD_LOGIC;
    signal start_for_freqm_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_freqm_U0_empty_n : STD_LOGIC;
    signal start_for_phasm_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_phasm_U0_full_n : STD_LOGIC;
    signal start_for_phasm_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_phasm_U0_empty_n : STD_LOGIC;
    signal freqm_U0_start_full_n : STD_LOGIC;
    signal freqm_U0_start_write : STD_LOGIC;
    signal phasm_U0_start_full_n : STD_LOGIC;
    signal phasm_U0_start_write : STD_LOGIC;
    signal o_mux_U0_start_full_n : STD_LOGIC;
    signal o_mux_U0_start_write : STD_LOGIC;

    component mod_sub_entry23 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        ix_V : IN STD_LOGIC_VECTOR (31 downto 0);
        ix_V_ap_vld : IN STD_LOGIC;
        qx_V : IN STD_LOGIC_VECTOR (31 downto 0);
        qx_V_ap_vld : IN STD_LOGIC;
        i_mod_V : IN STD_LOGIC_VECTOR (7 downto 0);
        i_mod_V_ap_vld : IN STD_LOGIC;
        q_mod_V : IN STD_LOGIC_VECTOR (7 downto 0);
        q_mod_V_ap_vld : IN STD_LOGIC;
        period_V : IN STD_LOGIC_VECTOR (7 downto 0);
        period_V_ap_vld : IN STD_LOGIC;
        mux_V : IN STD_LOGIC_VECTOR (1 downto 0);
        mux_V_ap_vld : IN STD_LOGIC;
        ix_V_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        ix_V_out_full_n : IN STD_LOGIC;
        ix_V_out_write : OUT STD_LOGIC;
        qx_V_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        qx_V_out_full_n : IN STD_LOGIC;
        qx_V_out_write : OUT STD_LOGIC;
        i_mod_V_out_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        i_mod_V_out_full_n : IN STD_LOGIC;
        i_mod_V_out_write : OUT STD_LOGIC;
        q_mod_V_out_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        q_mod_V_out_full_n : IN STD_LOGIC;
        q_mod_V_out_write : OUT STD_LOGIC;
        period_V_out_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        period_V_out_full_n : IN STD_LOGIC;
        period_V_out_write : OUT STD_LOGIC;
        mux_V_out_din : OUT STD_LOGIC_VECTOR (1 downto 0);
        mux_V_out_full_n : IN STD_LOGIC;
        mux_V_out_write : OUT STD_LOGIC );
    end component;


    component freqm IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ix_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        ix_V_empty_n : IN STD_LOGIC;
        ix_V_read : OUT STD_LOGIC;
        qx_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        qx_V_empty_n : IN STD_LOGIC;
        qx_V_read : OUT STD_LOGIC;
        i_mod_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        i_mod_V_empty_n : IN STD_LOGIC;
        i_mod_V_read : OUT STD_LOGIC;
        q_mod_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        q_mod_V_empty_n : IN STD_LOGIC;
        q_mod_V_read : OUT STD_LOGIC;
        ix_V_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        ix_V_out_full_n : IN STD_LOGIC;
        ix_V_out_write : OUT STD_LOGIC;
        qx_V_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        qx_V_out_full_n : IN STD_LOGIC;
        qx_V_out_write : OUT STD_LOGIC;
        ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component phasm IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        period_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        period_V_empty_n : IN STD_LOGIC;
        period_V_read : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component o_mux IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ix_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        ix_V_empty_n : IN STD_LOGIC;
        ix_V_read : OUT STD_LOGIC;
        qx_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        qx_V_empty_n : IN STD_LOGIC;
        qx_V_read : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (31 downto 0);
        p_read1 : IN STD_LOGIC_VECTOR (31 downto 0);
        iy_V : OUT STD_LOGIC_VECTOR (31 downto 0);
        iy_V_ap_vld : OUT STD_LOGIC;
        qy_V : OUT STD_LOGIC_VECTOR (31 downto 0);
        qy_V_ap_vld : OUT STD_LOGIC;
        flag : IN STD_LOGIC;
        mux_V_dout : IN STD_LOGIC_VECTOR (1 downto 0);
        mux_V_empty_n : IN STD_LOGIC;
        mux_V_read : OUT STD_LOGIC );
    end component;


    component fifo_w32_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w2_d3_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (1 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w1_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_freqm_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_phasm_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    mod_sub_entry23_U0 : component mod_sub_entry23
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => mod_sub_entry23_U0_ap_start,
        start_full_n => mod_sub_entry23_U0_start_full_n,
        ap_done => mod_sub_entry23_U0_ap_done,
        ap_continue => mod_sub_entry23_U0_ap_continue,
        ap_idle => mod_sub_entry23_U0_ap_idle,
        ap_ready => mod_sub_entry23_U0_ap_ready,
        start_out => mod_sub_entry23_U0_start_out,
        start_write => mod_sub_entry23_U0_start_write,
        ix_V => ix_V,
        ix_V_ap_vld => ix_V_ap_vld,
        qx_V => qx_V,
        qx_V_ap_vld => qx_V_ap_vld,
        i_mod_V => i_mod_V,
        i_mod_V_ap_vld => i_mod_V_ap_vld,
        q_mod_V => q_mod_V,
        q_mod_V_ap_vld => q_mod_V_ap_vld,
        period_V => period_V,
        period_V_ap_vld => period_V_ap_vld,
        mux_V => mux_V,
        mux_V_ap_vld => mux_V_ap_vld,
        ix_V_out_din => mod_sub_entry23_U0_ix_V_out_din,
        ix_V_out_full_n => ix_V_c_full_n,
        ix_V_out_write => mod_sub_entry23_U0_ix_V_out_write,
        qx_V_out_din => mod_sub_entry23_U0_qx_V_out_din,
        qx_V_out_full_n => qx_V_c_full_n,
        qx_V_out_write => mod_sub_entry23_U0_qx_V_out_write,
        i_mod_V_out_din => mod_sub_entry23_U0_i_mod_V_out_din,
        i_mod_V_out_full_n => i_mod_V_c_full_n,
        i_mod_V_out_write => mod_sub_entry23_U0_i_mod_V_out_write,
        q_mod_V_out_din => mod_sub_entry23_U0_q_mod_V_out_din,
        q_mod_V_out_full_n => q_mod_V_c_full_n,
        q_mod_V_out_write => mod_sub_entry23_U0_q_mod_V_out_write,
        period_V_out_din => mod_sub_entry23_U0_period_V_out_din,
        period_V_out_full_n => period_V_c_full_n,
        period_V_out_write => mod_sub_entry23_U0_period_V_out_write,
        mux_V_out_din => mod_sub_entry23_U0_mux_V_out_din,
        mux_V_out_full_n => mux_V_c_full_n,
        mux_V_out_write => mod_sub_entry23_U0_mux_V_out_write);

    freqm_U0 : component freqm
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => freqm_U0_ap_start,
        ap_done => freqm_U0_ap_done,
        ap_continue => freqm_U0_ap_continue,
        ap_idle => freqm_U0_ap_idle,
        ap_ready => freqm_U0_ap_ready,
        ix_V_dout => ix_V_c_dout,
        ix_V_empty_n => ix_V_c_empty_n,
        ix_V_read => freqm_U0_ix_V_read,
        qx_V_dout => qx_V_c_dout,
        qx_V_empty_n => qx_V_c_empty_n,
        qx_V_read => freqm_U0_qx_V_read,
        i_mod_V_dout => i_mod_V_c_dout,
        i_mod_V_empty_n => i_mod_V_c_empty_n,
        i_mod_V_read => freqm_U0_i_mod_V_read,
        q_mod_V_dout => q_mod_V_c_dout,
        q_mod_V_empty_n => q_mod_V_c_empty_n,
        q_mod_V_read => freqm_U0_q_mod_V_read,
        ix_V_out_din => freqm_U0_ix_V_out_din,
        ix_V_out_full_n => ix_V_c2_full_n,
        ix_V_out_write => freqm_U0_ix_V_out_write,
        qx_V_out_din => freqm_U0_qx_V_out_din,
        qx_V_out_full_n => qx_V_c3_full_n,
        qx_V_out_write => freqm_U0_qx_V_out_write,
        ap_return_0 => freqm_U0_ap_return_0,
        ap_return_1 => freqm_U0_ap_return_1);

    phasm_U0 : component phasm
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => phasm_U0_ap_start,
        ap_done => phasm_U0_ap_done,
        ap_continue => phasm_U0_ap_continue,
        ap_idle => phasm_U0_ap_idle,
        ap_ready => phasm_U0_ap_ready,
        period_V_dout => period_V_c_dout,
        period_V_empty_n => period_V_c_empty_n,
        period_V_read => phasm_U0_period_V_read,
        ap_return => phasm_U0_ap_return);

    o_mux_U0 : component o_mux
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => o_mux_U0_ap_start,
        ap_done => o_mux_U0_ap_done,
        ap_continue => o_mux_U0_ap_continue,
        ap_idle => o_mux_U0_ap_idle,
        ap_ready => o_mux_U0_ap_ready,
        ix_V_dout => ix_V_c2_dout,
        ix_V_empty_n => ix_V_c2_empty_n,
        ix_V_read => o_mux_U0_ix_V_read,
        qx_V_dout => qx_V_c3_dout,
        qx_V_empty_n => qx_V_c3_empty_n,
        qx_V_read => o_mux_U0_qx_V_read,
        p_read => i_fr_V_dout,
        p_read1 => q_fr_V_dout,
        iy_V => o_mux_U0_iy_V,
        iy_V_ap_vld => o_mux_U0_iy_V_ap_vld,
        qy_V => o_mux_U0_qy_V,
        qy_V_ap_vld => o_mux_U0_qy_V_ap_vld,
        flag => o_mux_U0_flag,
        mux_V_dout => mux_V_c_dout,
        mux_V_empty_n => mux_V_c_empty_n,
        mux_V_read => o_mux_U0_mux_V_read);

    ix_V_c_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => mod_sub_entry23_U0_ix_V_out_din,
        if_full_n => ix_V_c_full_n,
        if_write => mod_sub_entry23_U0_ix_V_out_write,
        if_dout => ix_V_c_dout,
        if_empty_n => ix_V_c_empty_n,
        if_read => freqm_U0_ix_V_read);

    qx_V_c_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => mod_sub_entry23_U0_qx_V_out_din,
        if_full_n => qx_V_c_full_n,
        if_write => mod_sub_entry23_U0_qx_V_out_write,
        if_dout => qx_V_c_dout,
        if_empty_n => qx_V_c_empty_n,
        if_read => freqm_U0_qx_V_read);

    i_mod_V_c_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => mod_sub_entry23_U0_i_mod_V_out_din,
        if_full_n => i_mod_V_c_full_n,
        if_write => mod_sub_entry23_U0_i_mod_V_out_write,
        if_dout => i_mod_V_c_dout,
        if_empty_n => i_mod_V_c_empty_n,
        if_read => freqm_U0_i_mod_V_read);

    q_mod_V_c_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => mod_sub_entry23_U0_q_mod_V_out_din,
        if_full_n => q_mod_V_c_full_n,
        if_write => mod_sub_entry23_U0_q_mod_V_out_write,
        if_dout => q_mod_V_c_dout,
        if_empty_n => q_mod_V_c_empty_n,
        if_read => freqm_U0_q_mod_V_read);

    period_V_c_U : component fifo_w8_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => mod_sub_entry23_U0_period_V_out_din,
        if_full_n => period_V_c_full_n,
        if_write => mod_sub_entry23_U0_period_V_out_write,
        if_dout => period_V_c_dout,
        if_empty_n => period_V_c_empty_n,
        if_read => phasm_U0_period_V_read);

    mux_V_c_U : component fifo_w2_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => mod_sub_entry23_U0_mux_V_out_din,
        if_full_n => mux_V_c_full_n,
        if_write => mod_sub_entry23_U0_mux_V_out_write,
        if_dout => mux_V_c_dout,
        if_empty_n => mux_V_c_empty_n,
        if_read => o_mux_U0_mux_V_read);

    ix_V_c2_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => freqm_U0_ix_V_out_din,
        if_full_n => ix_V_c2_full_n,
        if_write => freqm_U0_ix_V_out_write,
        if_dout => ix_V_c2_dout,
        if_empty_n => ix_V_c2_empty_n,
        if_read => o_mux_U0_ix_V_read);

    qx_V_c3_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => freqm_U0_qx_V_out_din,
        if_full_n => qx_V_c3_full_n,
        if_write => freqm_U0_qx_V_out_write,
        if_dout => qx_V_c3_dout,
        if_empty_n => qx_V_c3_empty_n,
        if_read => o_mux_U0_qx_V_read);

    i_fr_V_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => freqm_U0_ap_return_0,
        if_full_n => i_fr_V_full_n,
        if_write => ap_channel_done_i_fr_V,
        if_dout => i_fr_V_dout,
        if_empty_n => i_fr_V_empty_n,
        if_read => o_mux_U0_ap_ready);

    q_fr_V_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => freqm_U0_ap_return_1,
        if_full_n => q_fr_V_full_n,
        if_write => ap_channel_done_q_fr_V,
        if_dout => q_fr_V_dout,
        if_empty_n => q_fr_V_empty_n,
        if_read => o_mux_U0_ap_ready);

    flag_U : component fifo_w1_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => phasm_U0_ap_return,
        if_full_n => flag_full_n,
        if_write => phasm_U0_ap_done,
        if_dout => flag_dout,
        if_empty_n => flag_empty_n,
        if_read => o_mux_U0_ap_ready);

    start_for_freqm_U0_U : component start_for_freqm_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_freqm_U0_din,
        if_full_n => start_for_freqm_U0_full_n,
        if_write => mod_sub_entry23_U0_start_write,
        if_dout => start_for_freqm_U0_dout,
        if_empty_n => start_for_freqm_U0_empty_n,
        if_read => freqm_U0_ap_ready);

    start_for_phasm_U0_U : component start_for_phasm_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_phasm_U0_din,
        if_full_n => start_for_phasm_U0_full_n,
        if_write => mod_sub_entry23_U0_start_write,
        if_dout => start_for_phasm_U0_dout,
        if_empty_n => start_for_phasm_U0_empty_n,
        if_read => phasm_U0_ap_ready);





    ap_sync_reg_channel_write_i_fr_V_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_i_fr_V <= ap_const_logic_0;
            else
                if (((freqm_U0_ap_done and freqm_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_i_fr_V <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_i_fr_V <= ap_sync_channel_write_i_fr_V;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_channel_write_q_fr_V_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_channel_write_q_fr_V <= ap_const_logic_0;
            else
                if (((freqm_U0_ap_done and freqm_U0_ap_continue) = ap_const_logic_1)) then 
                    ap_sync_reg_channel_write_q_fr_V <= ap_const_logic_0;
                else 
                    ap_sync_reg_channel_write_q_fr_V <= ap_sync_channel_write_q_fr_V;
                end if; 
            end if;
        end if;
    end process;

    ap_channel_done_flag <= phasm_U0_ap_done;
    ap_channel_done_i_fr_V <= (freqm_U0_ap_done and (ap_sync_reg_channel_write_i_fr_V xor ap_const_logic_1));
    ap_channel_done_q_fr_V <= (freqm_U0_ap_done and (ap_sync_reg_channel_write_q_fr_V xor ap_const_logic_1));
    ap_sync_channel_write_i_fr_V <= ((i_fr_V_full_n and ap_channel_done_i_fr_V) or ap_sync_reg_channel_write_i_fr_V);
    ap_sync_channel_write_q_fr_V <= ((q_fr_V_full_n and ap_channel_done_q_fr_V) or ap_sync_reg_channel_write_q_fr_V);
    ap_sync_continue <= ap_const_logic_0;
    freqm_U0_ap_continue <= (ap_sync_channel_write_q_fr_V and ap_sync_channel_write_i_fr_V);
    freqm_U0_ap_start <= start_for_freqm_U0_empty_n;
    freqm_U0_start_full_n <= ap_const_logic_1;
    freqm_U0_start_write <= ap_const_logic_0;
    iy_V <= o_mux_U0_iy_V;
    iy_V_ap_vld <= o_mux_U0_iy_V_ap_vld;
    mod_sub_entry23_U0_ap_continue <= ap_const_logic_1;
    mod_sub_entry23_U0_ap_start <= ap_const_logic_1;
    mod_sub_entry23_U0_start_full_n <= (start_for_phasm_U0_full_n and start_for_freqm_U0_full_n);
    o_mux_U0_ap_continue <= ap_const_logic_1;
    o_mux_U0_ap_start <= (q_fr_V_empty_n and i_fr_V_empty_n and flag_empty_n);
    o_mux_U0_flag <= flag_dout(0);
    o_mux_U0_start_full_n <= ap_const_logic_1;
    o_mux_U0_start_write <= ap_const_logic_0;
    phasm_U0_ap_continue <= flag_full_n;
    phasm_U0_ap_start <= start_for_phasm_U0_empty_n;
    phasm_U0_start_full_n <= ap_const_logic_1;
    phasm_U0_start_write <= ap_const_logic_0;
    qy_V <= o_mux_U0_qy_V;
    qy_V_ap_vld <= o_mux_U0_qy_V_ap_vld;
    start_for_freqm_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_phasm_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;