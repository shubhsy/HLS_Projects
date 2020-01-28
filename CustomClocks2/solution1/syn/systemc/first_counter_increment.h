// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _first_counter_increment_HH_
#define _first_counter_increment_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct first_counter_increment : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > enable;
    sc_out< sc_lv<4> > out_counter;
    sc_out< sc_logic > out_counter_ap_vld;
    sc_in< sc_lv<4> > first_counter_count_V_i;
    sc_out< sc_lv<4> > first_counter_count_V_o;
    sc_out< sc_logic > first_counter_count_V_o_ap_vld;


    // Module declarations
    first_counter_increment(sc_module_name name);
    SC_HAS_PROCESS(first_counter_increment);

    ~first_counter_increment();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > tmp_read_fu_68_p2;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > v_V_fu_94_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state2();
    void thread_first_counter_count_V_o();
    void thread_first_counter_count_V_o_ap_vld();
    void thread_out_counter();
    void thread_out_counter_ap_vld();
    void thread_tmp_read_fu_68_p2();
    void thread_v_V_fu_94_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
