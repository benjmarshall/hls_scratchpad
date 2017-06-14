// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_sum_loop_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        x,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 38'd1;
parameter    ap_ST_fsm_state2 = 38'd2;
parameter    ap_ST_fsm_state3 = 38'd4;
parameter    ap_ST_fsm_state4 = 38'd8;
parameter    ap_ST_fsm_state5 = 38'd16;
parameter    ap_ST_fsm_state6 = 38'd32;
parameter    ap_ST_fsm_state7 = 38'd64;
parameter    ap_ST_fsm_state8 = 38'd128;
parameter    ap_ST_fsm_state9 = 38'd256;
parameter    ap_ST_fsm_state10 = 38'd512;
parameter    ap_ST_fsm_state11 = 38'd1024;
parameter    ap_ST_fsm_state12 = 38'd2048;
parameter    ap_ST_fsm_state13 = 38'd4096;
parameter    ap_ST_fsm_state14 = 38'd8192;
parameter    ap_ST_fsm_state15 = 38'd16384;
parameter    ap_ST_fsm_state16 = 38'd32768;
parameter    ap_ST_fsm_state17 = 38'd65536;
parameter    ap_ST_fsm_state18 = 38'd131072;
parameter    ap_ST_fsm_state19 = 38'd262144;
parameter    ap_ST_fsm_state20 = 38'd524288;
parameter    ap_ST_fsm_state21 = 38'd1048576;
parameter    ap_ST_fsm_state22 = 38'd2097152;
parameter    ap_ST_fsm_state23 = 38'd4194304;
parameter    ap_ST_fsm_state24 = 38'd8388608;
parameter    ap_ST_fsm_state25 = 38'd16777216;
parameter    ap_ST_fsm_state26 = 38'd33554432;
parameter    ap_ST_fsm_state27 = 38'd67108864;
parameter    ap_ST_fsm_state28 = 38'd134217728;
parameter    ap_ST_fsm_state29 = 38'd268435456;
parameter    ap_ST_fsm_state30 = 38'd536870912;
parameter    ap_ST_fsm_state31 = 38'd1073741824;
parameter    ap_ST_fsm_state32 = 38'd2147483648;
parameter    ap_ST_fsm_state33 = 38'd4294967296;
parameter    ap_ST_fsm_state34 = 38'd8589934592;
parameter    ap_ST_fsm_state35 = 38'd17179869184;
parameter    ap_ST_fsm_state36 = 38'd34359738368;
parameter    ap_ST_fsm_state37 = 38'd68719476736;
parameter    ap_ST_fsm_state38 = 38'd137438953472;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] x;
output  [63:0] ap_return_0;
output  [63:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [37:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [4:0] tmp_5_i_fu_122_p2;
reg   [4:0] tmp_5_i_reg_157;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_i_fu_116_p2;
wire   [4:0] i_fu_130_p2;
reg   [4:0] i_reg_163;
wire   [63:0] grp_power_fu_81_ap_return;
wire    ap_CS_fsm_state3;
wire    grp_power_fu_81_ap_done;
wire    grp_fact_fu_70_ap_done;
wire    grp_power_fu_88_ap_done;
wire    grp_fact_fu_76_ap_done;
reg    ap_block_state3_on_subcall_done;
wire   [63:0] grp_fact_fu_70_ap_return;
wire   [63:0] grp_power_fu_88_ap_return;
wire   [63:0] grp_fact_fu_76_ap_return;
wire   [63:0] grp_fu_104_p2;
reg   [63:0] tmp_3_i_reg_188;
wire    ap_CS_fsm_state33;
wire   [63:0] grp_fu_110_p2;
reg   [63:0] tmp_8_i_reg_193;
wire   [63:0] grp_fu_94_p2;
wire    ap_CS_fsm_state38;
wire   [63:0] grp_fu_99_p2;
wire    grp_fact_fu_70_ap_start;
wire    grp_fact_fu_70_ap_idle;
wire    grp_fact_fu_70_ap_ready;
wire    grp_fact_fu_76_ap_start;
wire    grp_fact_fu_76_ap_idle;
wire    grp_fact_fu_76_ap_ready;
wire    grp_power_fu_81_ap_start;
wire    grp_power_fu_81_ap_idle;
wire    grp_power_fu_81_ap_ready;
wire    grp_power_fu_88_ap_start;
wire    grp_power_fu_88_ap_idle;
wire    grp_power_fu_88_ap_ready;
reg   [63:0] sum_positive_0_loc_l_reg_34;
reg   [63:0] sum_negative_0_loc_l_reg_46;
reg   [4:0] i_0_i_i_reg_58;
reg    ap_reg_grp_fact_fu_70_ap_start;
reg    ap_reg_grp_fact_fu_76_ap_start;
reg    ap_reg_grp_power_fu_81_ap_start;
reg    ap_reg_grp_power_fu_88_ap_start;
wire    ap_CS_fsm_state34;
reg    grp_fu_104_ce;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    grp_fu_110_ce;
reg   [37:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 38'd1;
#0 ap_reg_grp_fact_fu_70_ap_start = 1'b0;
#0 ap_reg_grp_fact_fu_76_ap_start = 1'b0;
#0 ap_reg_grp_power_fu_81_ap_start = 1'b0;
#0 ap_reg_grp_power_fu_88_ap_start = 1'b0;
end

fact grp_fact_fu_70(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fact_fu_70_ap_start),
    .ap_done(grp_fact_fu_70_ap_done),
    .ap_idle(grp_fact_fu_70_ap_idle),
    .ap_ready(grp_fact_fu_70_ap_ready),
    .x(i_0_i_i_reg_58),
    .ap_return(grp_fact_fu_70_ap_return)
);

fact grp_fact_fu_76(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fact_fu_76_ap_start),
    .ap_done(grp_fact_fu_76_ap_done),
    .ap_idle(grp_fact_fu_76_ap_idle),
    .ap_ready(grp_fact_fu_76_ap_ready),
    .x(tmp_5_i_reg_157),
    .ap_return(grp_fact_fu_76_ap_return)
);

power grp_power_fu_81(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_power_fu_81_ap_start),
    .ap_done(grp_power_fu_81_ap_done),
    .ap_idle(grp_power_fu_81_ap_idle),
    .ap_ready(grp_power_fu_81_ap_ready),
    .x(x),
    .y(i_0_i_i_reg_58),
    .ap_return(grp_power_fu_81_ap_return)
);

power grp_power_fu_88(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_power_fu_88_ap_start),
    .ap_done(grp_power_fu_88_ap_done),
    .ap_idle(grp_power_fu_88_ap_idle),
    .ap_ready(grp_power_fu_88_ap_ready),
    .x(x),
    .y(tmp_5_i_reg_157),
    .ap_return(grp_power_fu_88_ap_return)
);

sin_taylor_seriesdEe #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
sin_taylor_seriesdEe_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_positive_0_loc_l_reg_34),
    .din1(tmp_3_i_reg_188),
    .ce(1'b1),
    .dout(grp_fu_94_p2)
);

sin_taylor_seriesdEe #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
sin_taylor_seriesdEe_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_negative_0_loc_l_reg_46),
    .din1(tmp_8_i_reg_193),
    .ce(1'b1),
    .dout(grp_fu_99_p2)
);

sin_taylor_serieseOg #(
    .ID( 1 ),
    .NUM_STAGE( 31 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
sin_taylor_serieseOg_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_power_fu_81_ap_return),
    .din1(grp_fact_fu_70_ap_return),
    .ce(grp_fu_104_ce),
    .dout(grp_fu_104_p2)
);

sin_taylor_serieseOg #(
    .ID( 1 ),
    .NUM_STAGE( 31 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
sin_taylor_serieseOg_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_power_fu_88_ap_return),
    .din1(grp_fact_fu_76_ap_return),
    .ce(grp_fu_110_ce),
    .dout(grp_fu_110_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_fact_fu_70_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd1))) begin
            ap_reg_grp_fact_fu_70_ap_start <= 1'b1;
        end else if ((1'b1 == grp_fact_fu_70_ap_ready)) begin
            ap_reg_grp_fact_fu_70_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_fact_fu_76_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd1))) begin
            ap_reg_grp_fact_fu_76_ap_start <= 1'b1;
        end else if ((1'b1 == grp_fact_fu_76_ap_ready)) begin
            ap_reg_grp_fact_fu_76_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_power_fu_81_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd1))) begin
            ap_reg_grp_power_fu_81_ap_start <= 1'b1;
        end else if ((1'b1 == grp_power_fu_81_ap_ready)) begin
            ap_reg_grp_power_fu_81_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_power_fu_88_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd1))) begin
            ap_reg_grp_power_fu_88_ap_start <= 1'b1;
        end else if ((1'b1 == grp_power_fu_88_ap_ready)) begin
            ap_reg_grp_power_fu_88_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        i_0_i_i_reg_58 <= i_reg_163;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        i_0_i_i_reg_58 <= 5'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        sum_negative_0_loc_l_reg_46 <= grp_fu_99_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        sum_negative_0_loc_l_reg_46 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        sum_positive_0_loc_l_reg_34 <= grp_fu_94_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        sum_positive_0_loc_l_reg_34 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd1))) begin
        i_reg_163 <= i_fu_130_p2;
        tmp_5_i_reg_157 <= tmp_5_i_fu_122_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        tmp_3_i_reg_188 <= grp_fu_104_p2;
        tmp_8_i_reg_193 <= grp_fu_110_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state34) | ((1'b1 == ap_CS_fsm_state3) & (1'b1 == ap_block_state3_on_subcall_done)) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state37))) begin
        grp_fu_104_ce = 1'b0;
    end else begin
        grp_fu_104_ce = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state34) | ((1'b1 == ap_CS_fsm_state3) & (1'b1 == ap_block_state3_on_subcall_done)) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state37))) begin
        grp_fu_110_ce = 1'b0;
    end else begin
        grp_fu_110_ce = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_i_fu_116_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (ap_block_state3_on_subcall_done == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];

assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];

assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];

assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];

assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];

assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3_on_subcall_done = ((1'b0 == grp_power_fu_81_ap_done) | (1'b0 == grp_fact_fu_70_ap_done) | (1'b0 == grp_power_fu_88_ap_done) | (1'b0 == grp_fact_fu_76_ap_done));
end

assign ap_return_0 = sum_positive_0_loc_l_reg_34;

assign ap_return_1 = sum_negative_0_loc_l_reg_46;

assign grp_fact_fu_70_ap_start = ap_reg_grp_fact_fu_70_ap_start;

assign grp_fact_fu_76_ap_start = ap_reg_grp_fact_fu_76_ap_start;

assign grp_power_fu_81_ap_start = ap_reg_grp_power_fu_81_ap_start;

assign grp_power_fu_88_ap_start = ap_reg_grp_power_fu_88_ap_start;

assign i_fu_130_p2 = (i_0_i_i_reg_58 + 5'd4);

assign tmp_5_i_fu_122_p2 = (i_0_i_i_reg_58 + 5'd2);

assign tmp_i_fu_116_p2 = ((i_0_i_i_reg_58 < 5'd21) ? 1'b1 : 1'b0);

endmodule //Loop_sum_loop_proc