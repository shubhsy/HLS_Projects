// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="first_counter,hls_ip_2018_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.797000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=10,HLS_SYN_LUT=21,HLS_VERSION=2018_3}" *)

module first_counter (
        clock,
        reset,
        enable,
        out_counter
);


input   clock;
input   reset;
input   enable;
output  [3:0] out_counter;

reg[3:0] out_counter;

wire   [3:0] grp_first_counter_increment_fu_50_out_counter;
wire    grp_first_counter_increment_fu_50_out_counter_ap_vld;
wire   [3:0] grp_first_counter_increment_fu_50_first_counter_count_V_o;
wire    grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld;
wire   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
reg   [3:0] first_counter_count_V;

first_counter_increment grp_first_counter_increment_fu_50(
    .ap_clk(clock),
    .ap_rst(reset),
    .enable(enable),
    .out_counter(grp_first_counter_increment_fu_50_out_counter),
    .out_counter_ap_vld(grp_first_counter_increment_fu_50_out_counter_ap_vld),
    .first_counter_count_V_i(first_counter_count_V),
    .first_counter_count_V_o(grp_first_counter_increment_fu_50_first_counter_count_V_o),
    .first_counter_count_V_o_ap_vld(grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld)
);

always @ (posedge clock) begin
    if ((grp_first_counter_increment_fu_50_first_counter_count_V_o_ap_vld == 1'b1)) begin
        first_counter_count_V <= grp_first_counter_increment_fu_50_first_counter_count_V_o;
    end
end

always @ (posedge clock) begin
    if ((grp_first_counter_increment_fu_50_out_counter_ap_vld == 1'b1)) begin
        out_counter <= grp_first_counter_increment_fu_50_out_counter;
    end
end

assign ap_CS_fsm = 2'd0;

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

endmodule //first_counter