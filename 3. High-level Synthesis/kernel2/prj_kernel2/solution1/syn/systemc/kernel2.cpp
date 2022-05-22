// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "kernel2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic kernel2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic kernel2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<9> kernel2::ap_ST_fsm_state1 = "1";
const sc_lv<9> kernel2::ap_ST_fsm_state2 = "10";
const sc_lv<9> kernel2::ap_ST_fsm_state3 = "100";
const sc_lv<9> kernel2::ap_ST_fsm_pp0_stage0 = "1000";
const sc_lv<9> kernel2::ap_ST_fsm_pp0_stage1 = "10000";
const sc_lv<9> kernel2::ap_ST_fsm_pp0_stage2 = "100000";
const sc_lv<9> kernel2::ap_ST_fsm_pp0_stage3 = "1000000";
const sc_lv<9> kernel2::ap_ST_fsm_pp0_stage4 = "10000000";
const sc_lv<9> kernel2::ap_ST_fsm_state11 = "100000000";
const sc_lv<32> kernel2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> kernel2::ap_const_lv1_1 = "1";
const sc_lv<32> kernel2::ap_const_lv32_3 = "11";
const sc_lv<32> kernel2::ap_const_lv32_1 = "1";
const sc_lv<32> kernel2::ap_const_lv32_2 = "10";
const sc_lv<32> kernel2::ap_const_lv32_7 = "111";
const sc_lv<1> kernel2::ap_const_lv1_0 = "0";
const sc_lv<11> kernel2::ap_const_lv11_3 = "11";
const sc_lv<64> kernel2::ap_const_lv64_2 = "10";
const sc_lv<64> kernel2::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<64> kernel2::ap_const_lv64_1 = "1";
const sc_lv<32> kernel2::ap_const_lv32_4 = "100";
const sc_lv<11> kernel2::ap_const_lv11_400 = "10000000000";
const sc_lv<11> kernel2::ap_const_lv11_1 = "1";
const sc_lv<32> kernel2::ap_const_lv32_8 = "1000";

kernel2::kernel2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    kernel2_mul_32s_3bkb_U1 = new kernel2_mul_32s_3bkb<1,6,32,32,32>("kernel2_mul_32s_3bkb_U1");
    kernel2_mul_32s_3bkb_U1->clk(ap_clk);
    kernel2_mul_32s_3bkb_U1->reset(ap_rst);
    kernel2_mul_32s_3bkb_U1->din0(reg0_1_phi_fu_85_p4);
    kernel2_mul_32s_3bkb_U1->din1(reg_phi_fu_118_p4);
    kernel2_mul_32s_3bkb_U1->ce(ap_var_for_const0);
    kernel2_mul_32s_3bkb_U1->dout(grp_fu_132_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_array_r_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_array_r_address1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_1_fu_150_p1 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );

    SC_METHOD(thread_array_r_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_array_r_ce1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );

    SC_METHOD(thread_array_r_d1);
    sensitive << ( result_reg_194 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );

    SC_METHOD(thread_array_r_we1);
    sensitive << ( ap_pipeline_reg_pp0_iter1_exitcond_reg_185 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );

    SC_METHOD(thread_exitcond_fu_126_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( i_phi_fu_107_p4 );

    SC_METHOD(thread_i_1_fu_138_p2);
    sensitive << ( i_reg_103 );

    SC_METHOD(thread_i_phi_fu_107_p4);
    sensitive << ( i_reg_103 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( exitcond_reg_185 );
    sensitive << ( i_1_reg_189 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_reg0_1_phi_fu_85_p4);
    sensitive << ( reg0_1_reg_82 );
    sensitive << ( reg1_1_reg_92 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( exitcond_reg_185 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_reg_phi_fu_118_p4);
    sensitive << ( reg0_1_reg_82 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( reg_reg_115 );
    sensitive << ( exitcond_reg_185 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_result_fu_144_p2);
    sensitive << ( reg1_1_reg_92 );
    sensitive << ( grp_fu_132_p2 );

    SC_METHOD(thread_tmp_1_fu_150_p1);
    sensitive << ( ap_pipeline_reg_pp0_iter1_i_reg_103 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_126_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "000000001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "kernel2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, array_r_address0, "(port)array_r_address0");
    sc_trace(mVcdFile, array_r_ce0, "(port)array_r_ce0");
    sc_trace(mVcdFile, array_r_q0, "(port)array_r_q0");
    sc_trace(mVcdFile, array_r_address1, "(port)array_r_address1");
    sc_trace(mVcdFile, array_r_ce1, "(port)array_r_ce1");
    sc_trace(mVcdFile, array_r_we1, "(port)array_r_we1");
    sc_trace(mVcdFile, array_r_d1, "(port)array_r_d1");
    sc_trace(mVcdFile, array_r_q1, "(port)array_r_q1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, reg0_1_reg_82, "reg0_1_reg_82");
    sc_trace(mVcdFile, reg1_1_reg_92, "reg1_1_reg_92");
    sc_trace(mVcdFile, i_reg_103, "i_reg_103");
    sc_trace(mVcdFile, ap_pipeline_reg_pp0_iter1_i_reg_103, "ap_pipeline_reg_pp0_iter1_i_reg_103");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, reg_reg_115, "reg_reg_115");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, reg2_reg_165, "reg2_reg_165");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, exitcond_fu_126_p2, "exitcond_fu_126_p2");
    sc_trace(mVcdFile, exitcond_reg_185, "exitcond_reg_185");
    sc_trace(mVcdFile, ap_pipeline_reg_pp0_iter1_exitcond_reg_185, "ap_pipeline_reg_pp0_iter1_exitcond_reg_185");
    sc_trace(mVcdFile, i_1_fu_138_p2, "i_1_fu_138_p2");
    sc_trace(mVcdFile, i_1_reg_189, "i_1_reg_189");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage4, "ap_CS_fsm_pp0_stage4");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, result_fu_144_p2, "result_fu_144_p2");
    sc_trace(mVcdFile, result_reg_194, "result_reg_194");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, reg0_1_phi_fu_85_p4, "reg0_1_phi_fu_85_p4");
    sc_trace(mVcdFile, i_phi_fu_107_p4, "i_phi_fu_107_p4");
    sc_trace(mVcdFile, reg_phi_fu_118_p4, "reg_phi_fu_118_p4");
    sc_trace(mVcdFile, tmp_1_fu_150_p1, "tmp_1_fu_150_p1");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage1, "ap_CS_fsm_pp0_stage1");
    sc_trace(mVcdFile, grp_fu_132_p2, "grp_fu_132_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("kernel2.hdltvin.dat");
    mHdltvoutHandle.open("kernel2.hdltvout.dat");
}

kernel2::~kernel2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete kernel2_mul_32s_3bkb_U1;
}

void kernel2::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void kernel2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
             !esl_seteq<1,1,1>(exitcond_fu_126_p2.read(), ap_const_lv1_0))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage4.read()) && 
             esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read())) || 
                    (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage4.read()) && 
                     !esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0)))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        i_reg_103 = i_1_reg_189.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()))) {
        i_reg_103 = ap_const_lv11_3;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        reg0_1_reg_82 = reg1_1_reg_92.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()))) {
        reg0_1_reg_82 = array_r_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        reg1_1_reg_92 = result_fu_144_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()))) {
        reg1_1_reg_92 = reg2_reg_165.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        reg_reg_115 = reg0_1_reg_82.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state3.read()))) {
        reg_reg_115 = array_r_q1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()))) {
        ap_pipeline_reg_pp0_iter1_exitcond_reg_185 = exitcond_reg_185.read();
        ap_pipeline_reg_pp0_iter1_i_reg_103 = i_reg_103.read();
        exitcond_reg_185 = exitcond_fu_126_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage4.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0))) {
        i_1_reg_189 = i_1_fu_138_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()))) {
        reg2_reg_165 = array_r_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        result_reg_194 = result_fu_144_p2.read();
    }
}

void kernel2::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read().range(3, 3);
}

void kernel2::thread_ap_CS_fsm_pp0_stage1() {
    ap_CS_fsm_pp0_stage1 = ap_CS_fsm.read().range(4, 4);
}

void kernel2::thread_ap_CS_fsm_pp0_stage4() {
    ap_CS_fsm_pp0_stage4 = ap_CS_fsm.read().range(7, 7);
}

void kernel2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read().range(0, 0);
}

void kernel2::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read().range(8, 8);
}

void kernel2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read().range(1, 1);
}

void kernel2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read().range(2, 2);
}

void kernel2::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state11.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void kernel2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void kernel2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state11.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void kernel2::thread_array_r_address0() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()))) {
        array_r_address0 =  (sc_lv<10>) (ap_const_lv64_1);
    } else if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1))) {
        array_r_address0 =  (sc_lv<10>) (ap_const_lv64_2);
    } else {
        array_r_address0 = "XXXXXXXXXX";
    }
}

void kernel2::thread_array_r_address1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage1.read()))) {
        array_r_address1 =  (sc_lv<10>) (tmp_1_fu_150_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()))) {
        array_r_address1 =  (sc_lv<10>) (ap_const_lv64_0);
    } else {
        array_r_address1 = "XXXXXXXXXX";
    }
}

void kernel2::thread_array_r_ce0() {
    if (((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && 
          !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read())))) {
        array_r_ce0 = ap_const_logic_1;
    } else {
        array_r_ce0 = ap_const_logic_0;
    }
}

void kernel2::thread_array_r_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage1.read())))) {
        array_r_ce1 = ap_const_logic_1;
    } else {
        array_r_ce1 = ap_const_logic_0;
    }
}

void kernel2::thread_array_r_d1() {
    array_r_d1 = result_reg_194.read();
}

void kernel2::thread_array_r_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_pipeline_reg_pp0_iter1_exitcond_reg_185.read(), ap_const_lv1_0)))) {
        array_r_we1 = ap_const_logic_1;
    } else {
        array_r_we1 = ap_const_logic_0;
    }
}

void kernel2::thread_exitcond_fu_126_p2() {
    exitcond_fu_126_p2 = (!i_phi_fu_107_p4.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(i_phi_fu_107_p4.read() == ap_const_lv11_400);
}

void kernel2::thread_i_1_fu_138_p2() {
    i_1_fu_138_p2 = (!i_reg_103.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(i_reg_103.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void kernel2::thread_i_phi_fu_107_p4() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        i_phi_fu_107_p4 = i_1_reg_189.read();
    } else {
        i_phi_fu_107_p4 = i_reg_103.read();
    }
}

void kernel2::thread_reg0_1_phi_fu_85_p4() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        reg0_1_phi_fu_85_p4 = reg1_1_reg_92.read();
    } else {
        reg0_1_phi_fu_85_p4 = reg0_1_reg_82.read();
    }
}

void kernel2::thread_reg_phi_fu_118_p4() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_185.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        reg_phi_fu_118_p4 = reg0_1_reg_82.read();
    } else {
        reg_phi_fu_118_p4 = reg_reg_115.read();
    }
}

void kernel2::thread_result_fu_144_p2() {
    result_fu_144_p2 = (!grp_fu_132_p2.read().is_01() || !reg1_1_reg_92.read().is_01())? sc_lv<32>(): (sc_biguint<32>(grp_fu_132_p2.read()) + sc_biguint<32>(reg1_1_reg_92.read()));
}

void kernel2::thread_tmp_1_fu_150_p1() {
    tmp_1_fu_150_p1 = esl_zext<64,11>(ap_pipeline_reg_pp0_iter1_i_reg_103.read());
}

void kernel2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            break;
        case 8 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && !esl_seteq<1,1,1>(exitcond_fu_126_p2.read(), ap_const_lv1_0) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state11;
            }
            break;
        case 16 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage1.read()) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state11;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<9>) ("XXXXXXXXX");
            break;
    }
}

void kernel2::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_address0\" :  \"" << array_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_ce0\" :  \"" << array_r_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"array_r_q0\" :  \"" << array_r_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_address1\" :  \"" << array_r_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_ce1\" :  \"" << array_r_ce1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_we1\" :  \"" << array_r_we1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"array_r_d1\" :  \"" << array_r_d1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"array_r_q1\" :  \"" << array_r_q1.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
