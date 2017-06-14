// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "power.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic power::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic power::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> power::ap_ST_fsm_state1 = "1";
const sc_lv<8> power::ap_ST_fsm_state2 = "10";
const sc_lv<8> power::ap_ST_fsm_state3 = "100";
const sc_lv<8> power::ap_ST_fsm_state4 = "1000";
const sc_lv<8> power::ap_ST_fsm_state5 = "10000";
const sc_lv<8> power::ap_ST_fsm_state6 = "100000";
const sc_lv<8> power::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> power::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> power::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> power::ap_const_lv32_1 = "1";
const sc_lv<1> power::ap_const_lv1_0 = "0";
const sc_lv<32> power::ap_const_lv32_6 = "110";
const sc_lv<64> power::ap_const_lv64_3FF0000000000000 = "11111111110000000000000000000000000000000000000000000000000000";
const sc_lv<6> power::ap_const_lv6_1 = "1";
const sc_lv<32> power::ap_const_lv32_7 = "111";
const bool power::ap_const_boolean_1 = true;

power::power(sc_module_name name) : sc_module(name), mVcdFile(0) {
    sin_taylor_seriesbkb_U1 = new sin_taylor_seriesbkb<1,6,64,64,64>("sin_taylor_seriesbkb_U1");
    sin_taylor_seriesbkb_U1->clk(ap_clk);
    sin_taylor_seriesbkb_U1->reset(ap_rst);
    sin_taylor_seriesbkb_U1->din0(result_int_reg_48);
    sin_taylor_seriesbkb_U1->din1(x);
    sin_taylor_seriesbkb_U1->ce(ap_var_for_const0);
    sin_taylor_seriesbkb_U1->dout(grp_fu_71_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_ap_return);
    sensitive << ( result_int_reg_48 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_exitcond_fu_86_p2);
    sensitive << ( tmp_2_reg_102 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_60 );

    SC_METHOD(thread_i_1_fu_91_p2);
    sensitive << ( i_reg_60 );

    SC_METHOD(thread_tmp_2_fu_80_p2);
    sensitive << ( tmp_cast_fu_76_p1 );

    SC_METHOD(thread_tmp_cast_fu_76_p1);
    sensitive << ( y );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_86_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "00000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "power_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, x, "(port)x");
    sc_trace(mVcdFile, y, "(port)y");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_2_fu_80_p2, "tmp_2_fu_80_p2");
    sc_trace(mVcdFile, tmp_2_reg_102, "tmp_2_reg_102");
    sc_trace(mVcdFile, i_1_fu_91_p2, "i_1_fu_91_p2");
    sc_trace(mVcdFile, i_1_reg_110, "i_1_reg_110");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, exitcond_fu_86_p2, "exitcond_fu_86_p2");
    sc_trace(mVcdFile, grp_fu_71_p2, "grp_fu_71_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, result_int_reg_48, "result_int_reg_48");
    sc_trace(mVcdFile, i_reg_60, "i_reg_60");
    sc_trace(mVcdFile, tmp_cast_fu_76_p1, "tmp_cast_fu_76_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

power::~power() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete sin_taylor_seriesbkb_U1;
}

void power::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void power::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        i_reg_60 = i_1_reg_110.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_60 = ap_const_lv6_1;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        result_int_reg_48 = grp_fu_71_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        result_int_reg_48 = ap_const_lv64_3FF0000000000000;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_fu_86_p2.read(), ap_const_lv1_0))) {
        i_1_reg_110 = i_1_fu_91_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        tmp_2_reg_102 = tmp_2_fu_80_p2.read();
    }
}

void power::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void power::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void power::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void power::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void power::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void power::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void power::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void power::thread_ap_return() {
    ap_return = result_int_reg_48.read();
}

void power::thread_exitcond_fu_86_p2() {
    exitcond_fu_86_p2 = (!i_reg_60.read().is_01() || !tmp_2_reg_102.read().is_01())? sc_lv<1>(): sc_lv<1>(i_reg_60.read() == tmp_2_reg_102.read());
}

void power::thread_i_1_fu_91_p2() {
    i_1_fu_91_p2 = (!i_reg_60.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_reg_60.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void power::thread_tmp_2_fu_80_p2() {
    tmp_2_fu_80_p2 = (!tmp_cast_fu_76_p1.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_cast_fu_76_p1.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void power::thread_tmp_cast_fu_76_p1() {
    tmp_cast_fu_76_p1 = esl_zext<6,5>(y.read());
}

void power::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_fu_86_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXX";
            break;
    }
}

}

