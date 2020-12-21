// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1.3
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _iq_mult_HH_
#define _iq_mult_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct iq_mult : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > x_V;
    sc_in< sc_logic > x_V_ap_vld;
    sc_in< sc_lv<8> > ref_i_V;
    sc_in< sc_logic > ref_i_V_ap_vld;
    sc_in< sc_lv<8> > ref_q_V;
    sc_in< sc_logic > ref_q_V_ap_vld;
    sc_out< sc_lv<16> > ap_return_0;
    sc_out< sc_lv<16> > ap_return_1;


    // Module declarations
    iq_mult(sc_module_name name);
    SC_HAS_PROCESS(iq_mult);

    ~iq_mult();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > x_V_blk_n;
    sc_signal< sc_logic > ref_i_V_blk_n;
    sc_signal< sc_logic > ref_q_V_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<8> > ret_V_fu_36_p0;
    sc_signal< sc_lv<8> > ret_V_fu_36_p1;
    sc_signal< sc_lv<16> > lhs_V_fu_28_p1;
    sc_signal< sc_lv<8> > ret_V_1_fu_46_p0;
    sc_signal< sc_lv<8> > ret_V_1_fu_46_p1;
    sc_signal< sc_lv<16> > ret_V_fu_36_p2;
    sc_signal< sc_lv<16> > ret_V_1_fu_46_p2;
    sc_signal< sc_lv<16> > ap_return_0_preg;
    sc_signal< sc_lv<16> > ap_return_1_preg;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_lhs_V_fu_28_p1();
    void thread_ref_i_V_blk_n();
    void thread_ref_q_V_blk_n();
    void thread_ret_V_1_fu_46_p0();
    void thread_ret_V_1_fu_46_p1();
    void thread_ret_V_1_fu_46_p2();
    void thread_ret_V_fu_36_p0();
    void thread_ret_V_fu_36_p1();
    void thread_ret_V_fu_36_p2();
    void thread_x_V_blk_n();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
