-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1.3
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mod_sub_entry23 is
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
end;


architecture behav of mod_sub_entry23 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal ix_V_blk_n : STD_LOGIC;
    signal qx_V_blk_n : STD_LOGIC;
    signal i_mod_V_blk_n : STD_LOGIC;
    signal q_mod_V_blk_n : STD_LOGIC;
    signal period_V_blk_n : STD_LOGIC;
    signal mux_V_blk_n : STD_LOGIC;
    signal ix_V_out_blk_n : STD_LOGIC;
    signal qx_V_out_blk_n : STD_LOGIC;
    signal i_mod_V_out_blk_n : STD_LOGIC;
    signal q_mod_V_out_blk_n : STD_LOGIC;
    signal period_V_out_blk_n : STD_LOGIC;
    signal mux_V_out_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




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
                elsif ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
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
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
                ap_block_state1 <= ((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        if ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    i_mod_V_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, i_mod_V_ap_vld)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            i_mod_V_blk_n <= i_mod_V_ap_vld;
        else 
            i_mod_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    i_mod_V_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, i_mod_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            i_mod_V_out_blk_n <= i_mod_V_out_full_n;
        else 
            i_mod_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    i_mod_V_out_din <= i_mod_V;

    i_mod_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        if ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            i_mod_V_out_write <= ap_const_logic_1;
        else 
            i_mod_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        if ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ix_V_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ix_V_blk_n <= ix_V_ap_vld;
        else 
            ix_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    ix_V_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ix_V_out_blk_n <= ix_V_out_full_n;
        else 
            ix_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    ix_V_out_din <= ix_V;

    ix_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        if ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ix_V_out_write <= ap_const_logic_1;
        else 
            ix_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    mux_V_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, mux_V_ap_vld)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mux_V_blk_n <= mux_V_ap_vld;
        else 
            mux_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    mux_V_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, mux_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mux_V_out_blk_n <= mux_V_out_full_n;
        else 
            mux_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    mux_V_out_din <= mux_V;

    mux_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        if ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mux_V_out_write <= ap_const_logic_1;
        else 
            mux_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    period_V_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, period_V_ap_vld)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            period_V_blk_n <= period_V_ap_vld;
        else 
            period_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    period_V_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, period_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            period_V_out_blk_n <= period_V_out_full_n;
        else 
            period_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    period_V_out_din <= period_V;

    period_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        if ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            period_V_out_write <= ap_const_logic_1;
        else 
            period_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    q_mod_V_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, q_mod_V_ap_vld)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            q_mod_V_blk_n <= q_mod_V_ap_vld;
        else 
            q_mod_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    q_mod_V_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, q_mod_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            q_mod_V_out_blk_n <= q_mod_V_out_full_n;
        else 
            q_mod_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    q_mod_V_out_din <= q_mod_V;

    q_mod_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        if ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            q_mod_V_out_write <= ap_const_logic_1;
        else 
            q_mod_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    qx_V_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, qx_V_ap_vld)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            qx_V_blk_n <= qx_V_ap_vld;
        else 
            qx_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    qx_V_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, qx_V_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            qx_V_out_blk_n <= qx_V_out_full_n;
        else 
            qx_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    qx_V_out_din <= qx_V;

    qx_V_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, ix_V_ap_vld, qx_V_ap_vld, i_mod_V_ap_vld, q_mod_V_ap_vld, period_V_ap_vld, mux_V_ap_vld, ix_V_out_full_n, qx_V_out_full_n, i_mod_V_out_full_n, q_mod_V_out_full_n, period_V_out_full_n, mux_V_out_full_n)
    begin
        if ((not(((mux_V_out_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (period_V_out_full_n = ap_const_logic_0) or (q_mod_V_out_full_n = ap_const_logic_0) or (i_mod_V_out_full_n = ap_const_logic_0) or (qx_V_out_full_n = ap_const_logic_0) or (ix_V_out_full_n = ap_const_logic_0) or (mux_V_ap_vld = ap_const_logic_0) or (period_V_ap_vld = ap_const_logic_0) or (q_mod_V_ap_vld = ap_const_logic_0) or (i_mod_V_ap_vld = ap_const_logic_0) or (qx_V_ap_vld = ap_const_logic_0) or (ix_V_ap_vld = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            qx_V_out_write <= ap_const_logic_1;
        else 
            qx_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
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
