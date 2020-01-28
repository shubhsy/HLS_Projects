// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "first_counter.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic first_counter::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<32> first_counter::ap_const_lv32_1 = "1";
const sc_lv<2> first_counter::ap_const_lv2_0 = "00";
const sc_logic first_counter::ap_const_logic_0 = sc_dt::Log_0;
const bool first_counter::ap_const_boolean_1 = true;

first_counter::first_counter(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_first_counter_increment_fu_50 = new first_counter_increment("grp_first_counter_increment_fu_50");
    grp_first_counter_increment_fu_50->ap_clk(clock);
    grp_first_counter_increment_fu_50->ap_rst(reset);
    grp_first_counter_increment_fu_50->enable(enable);
    grp_first_counter_increment_fu_50->out_counter(grp_first_counter_increment_fu_50_out_counter);
    grp_first_counter_increment_fu_50->out_counter_ap_vld(grp_first_counter_increment_fu_50_out_counter_ap_vld);
    grp_first_counter_increment_fu_50->first_counter_count_V_i(first_counter_count_V);
    grp_first_counter_increment_fu_50->first_counter_count_V_o(grp_first_counter_increment_fu_50_first_counter_count_V_o);
    grp_first_counter_increment_fu_50->first_counter_count_V_o_ap_vld(grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld);

    SC_METHOD(thread_first_counter_count_V);
    dont_initialize();
    sensitive << ( clock.pos() );

    SC_METHOD(thread_out_counter);
    dont_initialize();
    sensitive << ( clock.pos() );

    SC_METHOD(thread_ap_CS_fsm);

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "first_counter_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, clock, "(port)clock");
    sc_trace(mVcdFile, reset, "(port)reset");
    sc_trace(mVcdFile, enable, "(port)enable");
    sc_trace(mVcdFile, out_counter, "(port)out_counter");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, grp_first_counter_increment_fu_50_out_counter, "grp_first_counter_increment_fu_50_out_counter");
    sc_trace(mVcdFile, grp_first_counter_increment_fu_50_out_counter_ap_vld, "grp_first_counter_increment_fu_50_out_counter_ap_vld");
    sc_trace(mVcdFile, grp_first_counter_increment_fu_50_first_counter_count_V_o, "grp_first_counter_increment_fu_50_first_counter_count_V_o");
    sc_trace(mVcdFile, grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld, "grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, first_counter_count_V, "first_counter_count_V");
#endif

    }
}

first_counter::~first_counter() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_first_counter_increment_fu_50;
}

void first_counter::thread_first_counter_count_V() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld.read())) {
        first_counter_count_V = grp_first_counter_increment_fu_50_first_counter_count_V_o.read();
    }
}

void first_counter::thread_out_counter() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, grp_first_counter_increment_fu_50_out_counter_ap_vld.read())) {
        out_counter = grp_first_counter_increment_fu_50_out_counter.read();
    }
}

void first_counter::thread_ap_CS_fsm() {
    ap_CS_fsm = ap_const_lv2_0;
}

void first_counter::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

}
