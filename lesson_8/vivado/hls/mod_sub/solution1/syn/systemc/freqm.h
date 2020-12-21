// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1.3
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _freqm_HH_
#define _freqm_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct freqm : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > ix_V_dout;
    sc_in< sc_logic > ix_V_empty_n;
    sc_out< sc_logic > ix_V_read;
    sc_in< sc_lv<32> > qx_V_dout;
    sc_in< sc_logic > qx_V_empty_n;
    sc_out< sc_logic > qx_V_read;
    sc_in< sc_lv<8> > i_mod_V_dout;
    sc_in< sc_logic > i_mod_V_empty_n;
    sc_out< sc_logic > i_mod_V_read;
    sc_in< sc_lv<8> > q_mod_V_dout;
    sc_in< sc_logic > q_mod_V_empty_n;
    sc_out< sc_logic > q_mod_V_read;
    sc_out< sc_lv<32> > ix_V_out_din;
    sc_in< sc_logic > ix_V_out_full_n;
    sc_out< sc_logic > ix_V_out_write;
    sc_out< sc_lv<32> > qx_V_out_din;
    sc_in< sc_logic > qx_V_out_full_n;
    sc_out< sc_logic > qx_V_out_write;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;


    // Module declarations
    freqm(sc_module_name name);
    SC_HAS_PROCESS(freqm);

    ~freqm();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ix_V_blk_n;
    sc_signal< sc_logic > qx_V_blk_n;
    sc_signal< sc_logic > i_mod_V_blk_n;
    sc_signal< sc_logic > q_mod_V_blk_n;
    sc_signal< sc_logic > ix_V_out_blk_n;
    sc_signal< sc_logic > qx_V_out_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > mul_ln68_fu_144_p0;
    sc_signal< sc_lv<8> > mul_ln68_fu_144_p1;
    sc_signal< sc_lv<32> > sext_ln68_fu_140_p1;
    sc_signal< sc_lv<32> > mul_ln68_1_fu_154_p0;
    sc_signal< sc_lv<8> > mul_ln68_1_fu_154_p1;
    sc_signal< sc_lv<32> > sext_ln68_1_fu_150_p1;
    sc_signal< sc_lv<32> > mul_ln68_fu_144_p2;
    sc_signal< sc_lv<32> > mul_ln68_1_fu_154_p2;
    sc_signal< sc_lv<32> > mul_ln68_2_fu_166_p0;
    sc_signal< sc_lv<8> > mul_ln68_2_fu_166_p1;
    sc_signal< sc_lv<32> > mul_ln68_3_fu_172_p0;
    sc_signal< sc_lv<8> > mul_ln68_3_fu_172_p1;
    sc_signal< sc_lv<32> > mul_ln68_2_fu_166_p2;
    sc_signal< sc_lv<32> > mul_ln68_3_fu_172_p2;
    sc_signal< sc_lv<32> > sub_ln68_fu_160_p2;
    sc_signal< sc_lv<32> > add_ln68_fu_178_p2;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln68_fu_178_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_i_mod_V_blk_n();
    void thread_i_mod_V_read();
    void thread_ix_V_blk_n();
    void thread_ix_V_out_blk_n();
    void thread_ix_V_out_din();
    void thread_ix_V_out_write();
    void thread_ix_V_read();
    void thread_mul_ln68_1_fu_154_p0();
    void thread_mul_ln68_1_fu_154_p1();
    void thread_mul_ln68_1_fu_154_p2();
    void thread_mul_ln68_2_fu_166_p0();
    void thread_mul_ln68_2_fu_166_p1();
    void thread_mul_ln68_2_fu_166_p2();
    void thread_mul_ln68_3_fu_172_p0();
    void thread_mul_ln68_3_fu_172_p1();
    void thread_mul_ln68_3_fu_172_p2();
    void thread_mul_ln68_fu_144_p0();
    void thread_mul_ln68_fu_144_p1();
    void thread_mul_ln68_fu_144_p2();
    void thread_q_mod_V_blk_n();
    void thread_q_mod_V_read();
    void thread_qx_V_blk_n();
    void thread_qx_V_out_blk_n();
    void thread_qx_V_out_din();
    void thread_qx_V_out_write();
    void thread_qx_V_read();
    void thread_sext_ln68_1_fu_150_p1();
    void thread_sext_ln68_fu_140_p1();
    void thread_sub_ln68_fu_160_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif