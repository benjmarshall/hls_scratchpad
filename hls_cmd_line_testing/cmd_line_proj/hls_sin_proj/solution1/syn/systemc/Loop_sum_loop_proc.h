// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_sum_loop_proc_HH_
#define _Loop_sum_loop_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fact.h"
#include "power.h"
#include "sin_taylor_seriesdEe.h"
#include "sin_taylor_serieseOg.h"

namespace ap_rtl {

struct Loop_sum_loop_proc : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > x;
    sc_out< sc_lv<64> > ap_return_0;
    sc_out< sc_lv<64> > ap_return_1;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Loop_sum_loop_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_sum_loop_proc);

    ~Loop_sum_loop_proc();

    sc_trace_file* mVcdFile;

    fact* grp_fact_fu_70;
    fact* grp_fact_fu_76;
    power* grp_power_fu_81;
    power* grp_power_fu_88;
    sin_taylor_seriesdEe<1,5,64,64,64>* sin_taylor_seriesdEe_U7;
    sin_taylor_seriesdEe<1,5,64,64,64>* sin_taylor_seriesdEe_U8;
    sin_taylor_serieseOg<1,31,64,64,64>* sin_taylor_serieseOg_U9;
    sin_taylor_serieseOg<1,31,64,64,64>* sin_taylor_serieseOg_U10;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<38> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<5> > tmp_5_i_fu_122_p2;
    sc_signal< sc_lv<5> > tmp_5_i_reg_157;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_i_fu_116_p2;
    sc_signal< sc_lv<5> > i_fu_130_p2;
    sc_signal< sc_lv<5> > i_reg_163;
    sc_signal< sc_lv<64> > grp_power_fu_81_ap_return;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_power_fu_81_ap_done;
    sc_signal< sc_logic > grp_fact_fu_70_ap_done;
    sc_signal< sc_logic > grp_power_fu_88_ap_done;
    sc_signal< sc_logic > grp_fact_fu_76_ap_done;
    sc_signal< bool > ap_block_state3_on_subcall_done;
    sc_signal< sc_lv<64> > grp_fact_fu_70_ap_return;
    sc_signal< sc_lv<64> > grp_power_fu_88_ap_return;
    sc_signal< sc_lv<64> > grp_fact_fu_76_ap_return;
    sc_signal< sc_lv<64> > grp_fu_104_p2;
    sc_signal< sc_lv<64> > tmp_3_i_reg_188;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<64> > grp_fu_110_p2;
    sc_signal< sc_lv<64> > tmp_8_i_reg_193;
    sc_signal< sc_lv<64> > grp_fu_94_p2;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_lv<64> > grp_fu_99_p2;
    sc_signal< sc_logic > grp_fact_fu_70_ap_start;
    sc_signal< sc_logic > grp_fact_fu_70_ap_idle;
    sc_signal< sc_logic > grp_fact_fu_70_ap_ready;
    sc_signal< sc_logic > grp_fact_fu_76_ap_start;
    sc_signal< sc_logic > grp_fact_fu_76_ap_idle;
    sc_signal< sc_logic > grp_fact_fu_76_ap_ready;
    sc_signal< sc_logic > grp_power_fu_81_ap_start;
    sc_signal< sc_logic > grp_power_fu_81_ap_idle;
    sc_signal< sc_logic > grp_power_fu_81_ap_ready;
    sc_signal< sc_logic > grp_power_fu_88_ap_start;
    sc_signal< sc_logic > grp_power_fu_88_ap_idle;
    sc_signal< sc_logic > grp_power_fu_88_ap_ready;
    sc_signal< sc_lv<64> > sum_positive_0_loc_l_reg_34;
    sc_signal< sc_lv<64> > sum_negative_0_loc_l_reg_46;
    sc_signal< sc_lv<5> > i_0_i_i_reg_58;
    sc_signal< sc_logic > ap_reg_grp_fact_fu_70_ap_start;
    sc_signal< sc_logic > ap_reg_grp_fact_fu_76_ap_start;
    sc_signal< sc_logic > ap_reg_grp_power_fu_81_ap_start;
    sc_signal< sc_logic > ap_reg_grp_power_fu_88_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > grp_fu_104_ce;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_logic > grp_fu_110_ce;
    sc_signal< sc_lv<38> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<38> ap_ST_fsm_state1;
    static const sc_lv<38> ap_ST_fsm_state2;
    static const sc_lv<38> ap_ST_fsm_state3;
    static const sc_lv<38> ap_ST_fsm_state4;
    static const sc_lv<38> ap_ST_fsm_state5;
    static const sc_lv<38> ap_ST_fsm_state6;
    static const sc_lv<38> ap_ST_fsm_state7;
    static const sc_lv<38> ap_ST_fsm_state8;
    static const sc_lv<38> ap_ST_fsm_state9;
    static const sc_lv<38> ap_ST_fsm_state10;
    static const sc_lv<38> ap_ST_fsm_state11;
    static const sc_lv<38> ap_ST_fsm_state12;
    static const sc_lv<38> ap_ST_fsm_state13;
    static const sc_lv<38> ap_ST_fsm_state14;
    static const sc_lv<38> ap_ST_fsm_state15;
    static const sc_lv<38> ap_ST_fsm_state16;
    static const sc_lv<38> ap_ST_fsm_state17;
    static const sc_lv<38> ap_ST_fsm_state18;
    static const sc_lv<38> ap_ST_fsm_state19;
    static const sc_lv<38> ap_ST_fsm_state20;
    static const sc_lv<38> ap_ST_fsm_state21;
    static const sc_lv<38> ap_ST_fsm_state22;
    static const sc_lv<38> ap_ST_fsm_state23;
    static const sc_lv<38> ap_ST_fsm_state24;
    static const sc_lv<38> ap_ST_fsm_state25;
    static const sc_lv<38> ap_ST_fsm_state26;
    static const sc_lv<38> ap_ST_fsm_state27;
    static const sc_lv<38> ap_ST_fsm_state28;
    static const sc_lv<38> ap_ST_fsm_state29;
    static const sc_lv<38> ap_ST_fsm_state30;
    static const sc_lv<38> ap_ST_fsm_state31;
    static const sc_lv<38> ap_ST_fsm_state32;
    static const sc_lv<38> ap_ST_fsm_state33;
    static const sc_lv<38> ap_ST_fsm_state34;
    static const sc_lv<38> ap_ST_fsm_state35;
    static const sc_lv<38> ap_ST_fsm_state36;
    static const sc_lv<38> ap_ST_fsm_state37;
    static const sc_lv<38> ap_ST_fsm_state38;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<5> ap_const_lv5_15;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<1> ap_const_lv1_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state38();
    void thread_ap_block_state1();
    void thread_ap_block_state3_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_grp_fact_fu_70_ap_start();
    void thread_grp_fact_fu_76_ap_start();
    void thread_grp_fu_104_ce();
    void thread_grp_fu_110_ce();
    void thread_grp_power_fu_81_ap_start();
    void thread_grp_power_fu_88_ap_start();
    void thread_i_fu_130_p2();
    void thread_tmp_5_i_fu_122_p2();
    void thread_tmp_i_fu_116_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
