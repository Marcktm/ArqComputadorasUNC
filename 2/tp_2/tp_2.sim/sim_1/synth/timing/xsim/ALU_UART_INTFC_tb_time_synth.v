// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Nov 25 17:01:58 2021
// Host        : DESKTOP-4OFK9E8 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/s/Desktop/tp_2/tp_2.sim/sim_1/synth/timing/xsim/ALU_UART_INTFC_tb_time_synth.v
// Design      : ALU_UART_INTFC
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ALU
   (data0,
    Q,
    UART_i_25,
    S,
    UART_i_17);
  output [7:0]data0;
  input [6:0]Q;
  input [0:0]UART_i_25;
  input [3:0]S;
  input [3:0]UART_i_17;

  wire [6:0]Q;
  wire [3:0]S;
  wire [3:0]UART_i_17;
  wire [0:0]UART_i_25;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire [7:0]data0;
  wire [3:3]NLW__carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],UART_i_25}),
        .O(data0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({NLW__carry__0_CO_UNCONNECTED[3],_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(data0[7:4]),
        .S(UART_i_17));
endmodule

(* BaudRate = "19200" *) (* CLK_MHZ = "10000000" *) (* DBIT = "8" *) 
(* SB_TICK = "16" *) 
(* NotValidForBitStream *)
module ALU_UART_INTFC
   (clk,
    reset,
    rx,
    tx);
  input clk;
  input reset;
  input rx;
  output tx;

  wire \0 ;
  wire [7:0]alu_result;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data0;
  wire inter_n_1;
  wire inter_n_13;
  wire inter_n_14;
  wire inter_n_15;
  wire inter_n_16;
  wire inter_n_2;
  wire inter_n_3;
  wire inter_n_4;
  wire [6:0]op1;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire [7:0]rx_data_out;
  wire rx_done_tick;
  wire tx;
  wire tx_OBUF;
  wire tx_done_tick;
  wire tx_start;
  wire NLW_UART_parity_out_UNCONNECTED;

initial begin
 $sdf_annotate("ALU_UART_INTFC_tb_time_synth.sdf",,,,"tool_control");
end
  (* IMPORTED_FROM = "C:/Users/s/Desktop/tp_2/tp_2.runs/top_UART_synth_1/top_UART.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  top_UART UART
       (.clk(clk_IBUF_BUFG),
        .parity_out(NLW_UART_parity_out_UNCONNECTED),
        .reset(reset_IBUF),
        .rx(rx_IBUF),
        .rx_data_out(rx_data_out),
        .rx_done_tick(rx_done_tick),
        .tx(tx_OBUF),
        .tx_data_in(alu_result),
        .tx_done_tick(tx_done_tick),
        .tx_start(tx_start));
  ALU alu
       (.Q(op1),
        .S({inter_n_13,inter_n_14,inter_n_15,inter_n_16}),
        .UART_i_17({inter_n_1,inter_n_2,inter_n_3,inter_n_4}),
        .UART_i_25(\0 ),
        .data0(data0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  interfazUART inter
       (.CLK(clk_IBUF_BUFG),
        .D(rx_data_out),
        .Q(\0 ),
        .S({inter_n_13,inter_n_14,inter_n_15,inter_n_16}),
        .data0(data0),
        .\op1_reg_reg[6]_0 (op1),
        .\op2_reg_reg[7]_0 ({inter_n_1,inter_n_2,inter_n_3,inter_n_4}),
        .reset_IBUF(reset_IBUF),
        .rx_done_tick(rx_done_tick),
        .tx_data_in(alu_result),
        .tx_start(tx_start));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
endmodule

module interfazUART
   (tx_start,
    \op2_reg_reg[7]_0 ,
    Q,
    \op1_reg_reg[6]_0 ,
    S,
    tx_data_in,
    CLK,
    rx_done_tick,
    reset_IBUF,
    D,
    data0);
  output tx_start;
  output [3:0]\op2_reg_reg[7]_0 ;
  output [0:0]Q;
  output [6:0]\op1_reg_reg[6]_0 ;
  output [3:0]S;
  output [7:0]tx_data_in;
  input CLK;
  input rx_done_tick;
  input reset_IBUF;
  input [7:0]D;
  input [7:0]data0;

  wire CLK;
  wire [7:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire [0:0]Q;
  wire [3:0]S;
  wire UART_i_10_n_0;
  wire UART_i_11_n_0;
  wire UART_i_12_n_0;
  wire UART_i_13_n_0;
  wire UART_i_14_n_0;
  wire UART_i_15_n_0;
  wire UART_i_16_n_0;
  wire UART_i_17_n_0;
  wire UART_i_18_n_0;
  wire UART_i_19_n_0;
  wire UART_i_20_n_0;
  wire UART_i_21_n_0;
  wire UART_i_22_n_0;
  wire UART_i_23_n_0;
  wire UART_i_24_n_0;
  wire UART_i_25_n_0;
  wire UART_i_26_n_0;
  wire UART_i_27_n_0;
  wire UART_i_28_n_0;
  wire UART_i_29_n_0;
  wire UART_i_32_n_0;
  wire UART_i_41_n_0;
  wire UART_i_42_n_0;
  wire UART_i_43_n_0;
  wire UART_i_44_n_0;
  wire UART_i_45_n_0;
  wire UART_i_46_n_0;
  wire UART_i_47_n_0;
  wire UART_i_48_n_0;
  wire UART_i_49_n_0;
  wire UART_i_50_n_0;
  wire UART_i_51_n_0;
  wire UART_i_52_n_0;
  wire UART_i_53_n_0;
  wire UART_i_54_n_0;
  wire UART_i_9_n_0;
  wire [7:0]data0;
  wire [6:1]data5;
  wire [6:1]data6;
  wire flag_op1;
  wire flag_op2;
  wire flag_op_code;
  wire [7:7]op1;
  wire [6:0]\op1_reg_reg[6]_0 ;
  wire [7:0]op2;
  wire [3:0]\op2_reg_reg[7]_0 ;
  wire \op_code_reg_reg_n_0_[0] ;
  wire \op_code_reg_reg_n_0_[2] ;
  wire \op_code_reg_reg_n_0_[3] ;
  wire \op_code_reg_reg_n_0_[4] ;
  wire \op_code_reg_reg_n_0_[5] ;
  wire \op_code_reg_reg_n_0_[6] ;
  wire \op_code_reg_reg_n_0_[7] ;
  wire reset_IBUF;
  wire rx_done_tick;
  wire [2:0]state;
  wire [7:0]tx_data_in;
  wire tx_start;
  wire tx_start_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(state[0]),
        .I1(rx_done_tick),
        .I2(state[2]),
        .I3(reset_IBUF),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state[1]),
        .I1(rx_done_tick),
        .I2(state[0]),
        .I3(reset_IBUF),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(state[2]),
        .I1(rx_done_tick),
        .I2(state[1]),
        .I3(reset_IBUF),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "OP1:001,OP2:010,OP3:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "OP1:001,OP2:010,OP3:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "OP1:001,OP2:010,OP3:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF00FFB8)) 
    UART_i_1
       (.I0(UART_i_9_n_0),
        .I1(UART_i_10_n_0),
        .I2(UART_i_11_n_0),
        .I3(\op_code_reg_reg_n_0_[7] ),
        .I4(\op_code_reg_reg_n_0_[6] ),
        .O(tx_data_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000010)) 
    UART_i_10
       (.I0(\op_code_reg_reg_n_0_[4] ),
        .I1(\op_code_reg_reg_n_0_[3] ),
        .I2(Q),
        .I3(\op_code_reg_reg_n_0_[2] ),
        .I4(\op_code_reg_reg_n_0_[5] ),
        .O(UART_i_10_n_0));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    UART_i_11
       (.I0(op1),
        .I1(op2[7]),
        .I2(UART_i_28_n_0),
        .I3(data0[7]),
        .I4(UART_i_29_n_0),
        .I5(\op_code_reg_reg_n_0_[7] ),
        .O(UART_i_11_n_0));
  LUT6 #(
    .INIT(64'hA0C0A0CFA0CFAFC0)) 
    UART_i_12
       (.I0(data6[6]),
        .I1(data5[6]),
        .I2(UART_i_28_n_0),
        .I3(UART_i_29_n_0),
        .I4(op2[6]),
        .I5(\op1_reg_reg[6]_0 [6]),
        .O(UART_i_12_n_0));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    UART_i_13
       (.I0(\op1_reg_reg[6]_0 [6]),
        .I1(op2[6]),
        .I2(UART_i_28_n_0),
        .I3(data0[6]),
        .I4(UART_i_29_n_0),
        .I5(\op_code_reg_reg_n_0_[6] ),
        .O(UART_i_13_n_0));
  LUT5 #(
    .INIT(32'h888B8BB8)) 
    UART_i_14
       (.I0(UART_i_32_n_0),
        .I1(UART_i_28_n_0),
        .I2(UART_i_29_n_0),
        .I3(op2[5]),
        .I4(\op1_reg_reg[6]_0 [5]),
        .O(UART_i_14_n_0));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    UART_i_15
       (.I0(\op1_reg_reg[6]_0 [5]),
        .I1(op2[5]),
        .I2(UART_i_28_n_0),
        .I3(data0[5]),
        .I4(UART_i_29_n_0),
        .I5(\op_code_reg_reg_n_0_[5] ),
        .O(UART_i_15_n_0));
  LUT6 #(
    .INIT(64'hA0C0A0CFA0CFAFC0)) 
    UART_i_16
       (.I0(data6[4]),
        .I1(data5[4]),
        .I2(UART_i_28_n_0),
        .I3(UART_i_29_n_0),
        .I4(op2[4]),
        .I5(\op1_reg_reg[6]_0 [4]),
        .O(UART_i_16_n_0));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    UART_i_17
       (.I0(\op1_reg_reg[6]_0 [4]),
        .I1(op2[4]),
        .I2(UART_i_28_n_0),
        .I3(data0[4]),
        .I4(UART_i_29_n_0),
        .I5(\op_code_reg_reg_n_0_[4] ),
        .O(UART_i_17_n_0));
  LUT6 #(
    .INIT(64'hA0C0A0CFA0CFAFC0)) 
    UART_i_18
       (.I0(data6[3]),
        .I1(data5[3]),
        .I2(UART_i_28_n_0),
        .I3(UART_i_29_n_0),
        .I4(op2[3]),
        .I5(\op1_reg_reg[6]_0 [3]),
        .O(UART_i_18_n_0));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    UART_i_19
       (.I0(\op1_reg_reg[6]_0 [3]),
        .I1(op2[3]),
        .I2(UART_i_28_n_0),
        .I3(data0[3]),
        .I4(UART_i_29_n_0),
        .I5(\op_code_reg_reg_n_0_[3] ),
        .O(UART_i_19_n_0));
  LUT5 #(
    .INIT(32'hFFFF00B8)) 
    UART_i_2
       (.I0(UART_i_12_n_0),
        .I1(UART_i_10_n_0),
        .I2(UART_i_13_n_0),
        .I3(\op_code_reg_reg_n_0_[7] ),
        .I4(\op_code_reg_reg_n_0_[6] ),
        .O(tx_data_in[6]));
  LUT6 #(
    .INIT(64'hA0C0A0CFA0CFAFC0)) 
    UART_i_20
       (.I0(data6[2]),
        .I1(data5[2]),
        .I2(UART_i_28_n_0),
        .I3(UART_i_29_n_0),
        .I4(op2[2]),
        .I5(\op1_reg_reg[6]_0 [2]),
        .O(UART_i_20_n_0));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    UART_i_21
       (.I0(\op1_reg_reg[6]_0 [2]),
        .I1(op2[2]),
        .I2(UART_i_28_n_0),
        .I3(data0[2]),
        .I4(UART_i_29_n_0),
        .I5(\op_code_reg_reg_n_0_[2] ),
        .O(UART_i_21_n_0));
  LUT6 #(
    .INIT(64'hA0C0A0CFA0CFAFC0)) 
    UART_i_22
       (.I0(data6[1]),
        .I1(data5[1]),
        .I2(UART_i_28_n_0),
        .I3(UART_i_29_n_0),
        .I4(op2[1]),
        .I5(\op1_reg_reg[6]_0 [1]),
        .O(UART_i_22_n_0));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    UART_i_23
       (.I0(\op1_reg_reg[6]_0 [1]),
        .I1(op2[1]),
        .I2(UART_i_28_n_0),
        .I3(data0[1]),
        .I4(UART_i_29_n_0),
        .I5(Q),
        .O(UART_i_23_n_0));
  LUT6 #(
    .INIT(64'hC5C0FFFFC5C00000)) 
    UART_i_24
       (.I0(UART_i_29_n_0),
        .I1(UART_i_41_n_0),
        .I2(UART_i_26_n_0),
        .I3(op1),
        .I4(UART_i_28_n_0),
        .I5(UART_i_42_n_0),
        .O(UART_i_24_n_0));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    UART_i_25
       (.I0(\op1_reg_reg[6]_0 [0]),
        .I1(op2[0]),
        .I2(UART_i_28_n_0),
        .I3(data0[0]),
        .I4(UART_i_29_n_0),
        .I5(\op_code_reg_reg_n_0_[0] ),
        .O(UART_i_25_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    UART_i_26
       (.I0(op2[7]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[6]),
        .I4(op2[5]),
        .O(UART_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    UART_i_27
       (.I0(op2[1]),
        .I1(op1),
        .I2(op2[2]),
        .I3(op2[0]),
        .O(UART_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000018)) 
    UART_i_28
       (.I0(\op_code_reg_reg_n_0_[5] ),
        .I1(\op_code_reg_reg_n_0_[2] ),
        .I2(Q),
        .I3(\op_code_reg_reg_n_0_[4] ),
        .I4(\op_code_reg_reg_n_0_[3] ),
        .O(UART_i_28_n_0));
  LUT6 #(
    .INIT(64'h0300000300000002)) 
    UART_i_29
       (.I0(Q),
        .I1(\op_code_reg_reg_n_0_[3] ),
        .I2(\op_code_reg_reg_n_0_[4] ),
        .I3(\op_code_reg_reg_n_0_[2] ),
        .I4(\op_code_reg_reg_n_0_[0] ),
        .I5(\op_code_reg_reg_n_0_[5] ),
        .O(UART_i_29_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACFC0)) 
    UART_i_3
       (.I0(\op_code_reg_reg_n_0_[5] ),
        .I1(UART_i_14_n_0),
        .I2(UART_i_10_n_0),
        .I3(UART_i_15_n_0),
        .I4(\op_code_reg_reg_n_0_[7] ),
        .I5(\op_code_reg_reg_n_0_[6] ),
        .O(tx_data_in[5]));
  LUT6 #(
    .INIT(64'h0022002000000020)) 
    UART_i_30
       (.I0(UART_i_26_n_0),
        .I1(op2[1]),
        .I2(\op1_reg_reg[6]_0 [6]),
        .I3(op2[2]),
        .I4(op2[0]),
        .I5(op1),
        .O(data6[6]));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    UART_i_31
       (.I0(op2[0]),
        .I1(op2[1]),
        .I2(op2[2]),
        .I3(\op1_reg_reg[6]_0 [6]),
        .I4(UART_i_26_n_0),
        .I5(op1),
        .O(data5[6]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    UART_i_32
       (.I0(UART_i_43_n_0),
        .I1(UART_i_29_n_0),
        .I2(UART_i_44_n_0),
        .I3(UART_i_26_n_0),
        .I4(op1),
        .O(UART_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    UART_i_33
       (.I0(UART_i_26_n_0),
        .I1(UART_i_45_n_0),
        .I2(op2[0]),
        .I3(UART_i_46_n_0),
        .O(data6[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    UART_i_34
       (.I0(UART_i_47_n_0),
        .I1(op2[0]),
        .I2(UART_i_48_n_0),
        .I3(UART_i_26_n_0),
        .I4(op1),
        .O(data5[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    UART_i_35
       (.I0(UART_i_26_n_0),
        .I1(UART_i_49_n_0),
        .I2(op2[0]),
        .I3(UART_i_45_n_0),
        .O(data6[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    UART_i_36
       (.I0(UART_i_48_n_0),
        .I1(op2[0]),
        .I2(UART_i_50_n_0),
        .I3(UART_i_26_n_0),
        .I4(op1),
        .O(data5[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    UART_i_37
       (.I0(UART_i_26_n_0),
        .I1(UART_i_51_n_0),
        .I2(op2[0]),
        .I3(UART_i_49_n_0),
        .O(data6[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    UART_i_38
       (.I0(UART_i_50_n_0),
        .I1(op2[0]),
        .I2(UART_i_52_n_0),
        .I3(UART_i_26_n_0),
        .I4(op1),
        .O(data5[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    UART_i_39
       (.I0(UART_i_26_n_0),
        .I1(UART_i_53_n_0),
        .I2(op2[0]),
        .I3(UART_i_51_n_0),
        .O(data6[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACFC0)) 
    UART_i_4
       (.I0(\op_code_reg_reg_n_0_[4] ),
        .I1(UART_i_16_n_0),
        .I2(UART_i_10_n_0),
        .I3(UART_i_17_n_0),
        .I4(\op_code_reg_reg_n_0_[7] ),
        .I5(\op_code_reg_reg_n_0_[6] ),
        .O(tx_data_in[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    UART_i_40
       (.I0(UART_i_52_n_0),
        .I1(op2[0]),
        .I2(UART_i_53_n_0),
        .I3(UART_i_26_n_0),
        .I4(op1),
        .O(data5[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    UART_i_41
       (.I0(UART_i_53_n_0),
        .I1(op2[0]),
        .I2(UART_i_54_n_0),
        .O(UART_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h16)) 
    UART_i_42
       (.I0(UART_i_29_n_0),
        .I1(op2[0]),
        .I2(\op1_reg_reg[6]_0 [0]),
        .O(UART_i_42_n_0));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    UART_i_43
       (.I0(\op1_reg_reg[6]_0 [6]),
        .I1(op2[0]),
        .I2(op1),
        .I3(op2[1]),
        .I4(\op1_reg_reg[6]_0 [5]),
        .I5(op2[2]),
        .O(UART_i_43_n_0));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    UART_i_44
       (.I0(\op1_reg_reg[6]_0 [6]),
        .I1(op2[0]),
        .I2(op2[1]),
        .I3(op1),
        .I4(op2[2]),
        .I5(\op1_reg_reg[6]_0 [5]),
        .O(UART_i_44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    UART_i_45
       (.I0(\op1_reg_reg[6]_0 [6]),
        .I1(op2[1]),
        .I2(\op1_reg_reg[6]_0 [4]),
        .I3(op2[2]),
        .O(UART_i_45_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    UART_i_46
       (.I0(op1),
        .I1(op2[1]),
        .I2(\op1_reg_reg[6]_0 [5]),
        .I3(op2[2]),
        .O(UART_i_46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    UART_i_47
       (.I0(op2[1]),
        .I1(op1),
        .I2(op2[2]),
        .I3(\op1_reg_reg[6]_0 [5]),
        .O(UART_i_47_n_0));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    UART_i_48
       (.I0(\op1_reg_reg[6]_0 [6]),
        .I1(op2[1]),
        .I2(op1),
        .I3(op2[2]),
        .I4(\op1_reg_reg[6]_0 [4]),
        .O(UART_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    UART_i_49
       (.I0(\op1_reg_reg[6]_0 [5]),
        .I1(op2[1]),
        .I2(op1),
        .I3(op2[2]),
        .I4(\op1_reg_reg[6]_0 [3]),
        .O(UART_i_49_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACFC0)) 
    UART_i_5
       (.I0(\op_code_reg_reg_n_0_[3] ),
        .I1(UART_i_18_n_0),
        .I2(UART_i_10_n_0),
        .I3(UART_i_19_n_0),
        .I4(\op_code_reg_reg_n_0_[7] ),
        .I5(\op_code_reg_reg_n_0_[6] ),
        .O(tx_data_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    UART_i_50
       (.I0(\op1_reg_reg[6]_0 [5]),
        .I1(op2[1]),
        .I2(op1),
        .I3(op2[2]),
        .I4(\op1_reg_reg[6]_0 [3]),
        .O(UART_i_50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    UART_i_51
       (.I0(\op1_reg_reg[6]_0 [4]),
        .I1(op2[1]),
        .I2(\op1_reg_reg[6]_0 [6]),
        .I3(op2[2]),
        .I4(\op1_reg_reg[6]_0 [2]),
        .O(UART_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    UART_i_52
       (.I0(op1),
        .I1(\op1_reg_reg[6]_0 [4]),
        .I2(op2[1]),
        .I3(\op1_reg_reg[6]_0 [6]),
        .I4(op2[2]),
        .I5(\op1_reg_reg[6]_0 [2]),
        .O(UART_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    UART_i_53
       (.I0(op1),
        .I1(\op1_reg_reg[6]_0 [3]),
        .I2(op2[1]),
        .I3(\op1_reg_reg[6]_0 [5]),
        .I4(op2[2]),
        .I5(\op1_reg_reg[6]_0 [1]),
        .O(UART_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    UART_i_54
       (.I0(\op1_reg_reg[6]_0 [6]),
        .I1(\op1_reg_reg[6]_0 [2]),
        .I2(op2[1]),
        .I3(\op1_reg_reg[6]_0 [4]),
        .I4(op2[2]),
        .I5(\op1_reg_reg[6]_0 [0]),
        .O(UART_i_54_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACFC0)) 
    UART_i_6
       (.I0(\op_code_reg_reg_n_0_[2] ),
        .I1(UART_i_20_n_0),
        .I2(UART_i_10_n_0),
        .I3(UART_i_21_n_0),
        .I4(\op_code_reg_reg_n_0_[7] ),
        .I5(\op_code_reg_reg_n_0_[6] ),
        .O(tx_data_in[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACFC0)) 
    UART_i_7
       (.I0(Q),
        .I1(UART_i_22_n_0),
        .I2(UART_i_10_n_0),
        .I3(UART_i_23_n_0),
        .I4(\op_code_reg_reg_n_0_[7] ),
        .I5(\op_code_reg_reg_n_0_[6] ),
        .O(tx_data_in[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAACFC0)) 
    UART_i_8
       (.I0(\op_code_reg_reg_n_0_[0] ),
        .I1(UART_i_24_n_0),
        .I2(UART_i_10_n_0),
        .I3(UART_i_25_n_0),
        .I4(\op_code_reg_reg_n_0_[7] ),
        .I5(\op_code_reg_reg_n_0_[6] ),
        .O(tx_data_in[0]));
  LUT6 #(
    .INIT(64'h80F080FF800F8F00)) 
    UART_i_9
       (.I0(UART_i_26_n_0),
        .I1(UART_i_27_n_0),
        .I2(UART_i_28_n_0),
        .I3(UART_i_29_n_0),
        .I4(op2[7]),
        .I5(op1),
        .O(UART_i_9_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_1
       (.I0(op2[7]),
        .I1(Q),
        .I2(op1),
        .O(\op2_reg_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_2
       (.I0(op2[6]),
        .I1(Q),
        .I2(\op1_reg_reg[6]_0 [6]),
        .O(\op2_reg_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_3
       (.I0(op2[5]),
        .I1(Q),
        .I2(\op1_reg_reg[6]_0 [5]),
        .O(\op2_reg_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_4
       (.I0(op2[4]),
        .I1(Q),
        .I2(\op1_reg_reg[6]_0 [4]),
        .O(\op2_reg_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_1
       (.I0(op2[3]),
        .I1(Q),
        .I2(\op1_reg_reg[6]_0 [3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_2
       (.I0(op2[2]),
        .I1(Q),
        .I2(\op1_reg_reg[6]_0 [2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_3
       (.I0(op2[1]),
        .I1(Q),
        .I2(\op1_reg_reg[6]_0 [1]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    _carry_i_4
       (.I0(op2[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \op1_reg[7]_i_1 
       (.I0(state[0]),
        .I1(rx_done_tick),
        .O(flag_op1));
  FDRE #(
    .INIT(1'b0)) 
    \op1_reg_reg[0] 
       (.C(CLK),
        .CE(flag_op1),
        .D(D[0]),
        .Q(\op1_reg_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op1_reg_reg[1] 
       (.C(CLK),
        .CE(flag_op1),
        .D(D[1]),
        .Q(\op1_reg_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op1_reg_reg[2] 
       (.C(CLK),
        .CE(flag_op1),
        .D(D[2]),
        .Q(\op1_reg_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op1_reg_reg[3] 
       (.C(CLK),
        .CE(flag_op1),
        .D(D[3]),
        .Q(\op1_reg_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op1_reg_reg[4] 
       (.C(CLK),
        .CE(flag_op1),
        .D(D[4]),
        .Q(\op1_reg_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op1_reg_reg[5] 
       (.C(CLK),
        .CE(flag_op1),
        .D(D[5]),
        .Q(\op1_reg_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op1_reg_reg[6] 
       (.C(CLK),
        .CE(flag_op1),
        .D(D[6]),
        .Q(\op1_reg_reg[6]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op1_reg_reg[7] 
       (.C(CLK),
        .CE(flag_op1),
        .D(D[7]),
        .Q(op1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \op2_reg[7]_i_1 
       (.I0(state[1]),
        .I1(rx_done_tick),
        .O(flag_op2));
  FDRE #(
    .INIT(1'b0)) 
    \op2_reg_reg[0] 
       (.C(CLK),
        .CE(flag_op2),
        .D(D[0]),
        .Q(op2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op2_reg_reg[1] 
       (.C(CLK),
        .CE(flag_op2),
        .D(D[1]),
        .Q(op2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op2_reg_reg[2] 
       (.C(CLK),
        .CE(flag_op2),
        .D(D[2]),
        .Q(op2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op2_reg_reg[3] 
       (.C(CLK),
        .CE(flag_op2),
        .D(D[3]),
        .Q(op2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op2_reg_reg[4] 
       (.C(CLK),
        .CE(flag_op2),
        .D(D[4]),
        .Q(op2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op2_reg_reg[5] 
       (.C(CLK),
        .CE(flag_op2),
        .D(D[5]),
        .Q(op2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op2_reg_reg[6] 
       (.C(CLK),
        .CE(flag_op2),
        .D(D[6]),
        .Q(op2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op2_reg_reg[7] 
       (.C(CLK),
        .CE(flag_op2),
        .D(D[7]),
        .Q(op2[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \op_code_reg[7]_i_1 
       (.I0(state[2]),
        .I1(rx_done_tick),
        .O(flag_op_code));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[0] 
       (.C(CLK),
        .CE(flag_op_code),
        .D(D[0]),
        .Q(\op_code_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[1] 
       (.C(CLK),
        .CE(flag_op_code),
        .D(D[1]),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[2] 
       (.C(CLK),
        .CE(flag_op_code),
        .D(D[2]),
        .Q(\op_code_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[3] 
       (.C(CLK),
        .CE(flag_op_code),
        .D(D[3]),
        .Q(\op_code_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[4] 
       (.C(CLK),
        .CE(flag_op_code),
        .D(D[4]),
        .Q(\op_code_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[5] 
       (.C(CLK),
        .CE(flag_op_code),
        .D(D[5]),
        .Q(\op_code_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[6] 
       (.C(CLK),
        .CE(flag_op_code),
        .D(D[6]),
        .Q(\op_code_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg_reg[7] 
       (.C(CLK),
        .CE(flag_op_code),
        .D(D[7]),
        .Q(\op_code_reg_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    tx_start_i_1
       (.I0(rx_done_tick),
        .I1(state[2]),
        .I2(reset_IBUF),
        .O(tx_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_start_i_1_n_0),
        .Q(tx_start),
        .R(1'b0));
endmodule

(* BaudRate = "19200" *) (* CLK_MHZ = "10000000" *) (* DBIT = "8" *) 
(* SB_TICK = "16" *) 
module top_UART
   (clk,
    reset,
    rx,
    tx,
    rx_done_tick,
    tx_done_tick,
    rx_data_out,
    tx_data_in,
    tx_start,
    parity_out);
  input clk;
  input reset;
  input rx;
  output tx;
  output rx_done_tick;
  output tx_done_tick;
  output [7:0]rx_data_out;
  input [7:0]tx_data_in;
  input tx_start;
  output parity_out;

  wire BRG_n_0;
  wire BRG_n_1;
  wire BRG_n_2;
  wire clk;
  wire parity_out;
  wire reset;
  wire rx;
  wire [7:0]rx_data_out;
  wire rx_done_tick;
  wire tx;
  wire [7:0]tx_data_in;
  wire tx_done_tick;
  wire tx_start;

  top_UART_BaudRateGenerator BRG
       (.clk(clk),
        .\counter_reg[3]_0 (BRG_n_1),
        .\counter_reg[4]_0 (BRG_n_0),
        .\counter_reg[9]_0 (BRG_n_2),
        .reset(reset));
  top_UART_reciever RX
       (.clk(clk),
        .\n_reg_reg[0]_0 (BRG_n_0),
        .parity_out(parity_out),
        .parity_reg_reg_0(BRG_n_2),
        .parity_reg_reg_1(BRG_n_1),
        .reset(reset),
        .rx(rx),
        .rx_data_out(rx_data_out),
        .rx_done_tick(rx_done_tick));
  top_UART_transmitter TX
       (.clk(clk),
        .\n_reg_reg[1]_0 (BRG_n_1),
        .\n_reg_reg[1]_1 (BRG_n_2),
        .reset(reset),
        .\s_reg_reg[0]_0 (BRG_n_0),
        .tx(tx),
        .tx_data_in(tx_data_in),
        .tx_done_tick(tx_done_tick),
        .tx_start(tx_start));
endmodule

(* ORIG_REF_NAME = "BaudRateGenerator" *) 
module top_UART_BaudRateGenerator
   (\counter_reg[4]_0 ,
    \counter_reg[3]_0 ,
    \counter_reg[9]_0 ,
    reset,
    clk);
  output \counter_reg[4]_0 ;
  output \counter_reg[3]_0 ;
  output \counter_reg[9]_0 ;
  input reset;
  input clk;

  wire clk;
  wire [10:0]counter;
  wire \counter[10]_i_2_n_0 ;
  wire [10:0]counter_0;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[4]_0 ;
  wire \counter_reg[9]_0 ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \counter[10]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[10]),
        .I2(counter[7]),
        .I3(counter[8]),
        .I4(counter[9]),
        .I5(\counter[10]_i_2_n_0 ),
        .O(counter_0[10]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter[10]_i_2 
       (.I0(\counter_reg[3]_0 ),
        .I1(counter[5]),
        .I2(counter[6]),
        .O(\counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter[1]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \counter[2]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \counter[3]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[2]),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \counter[4]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[4]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[3]),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \counter[5]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[5]),
        .I2(\counter_reg[3]_0 ),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    \counter[6]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[6]),
        .I2(counter[5]),
        .I3(\counter_reg[3]_0 ),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter[6]_i_2 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[4]),
        .O(\counter_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter[7]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[7]),
        .I2(\counter[10]_i_2_n_0 ),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \counter[8]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[8]),
        .I2(\counter[10]_i_2_n_0 ),
        .I3(counter[7]),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \counter[9]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[9]),
        .I2(counter[8]),
        .I3(counter[7]),
        .I4(\counter[10]_i_2_n_0 ),
        .O(counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    rx_done_tick_INST_0_i_2
       (.I0(\counter_reg[9]_0 ),
        .I1(counter[4]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[3]),
        .O(\counter_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rx_done_tick_INST_0_i_4
       (.I0(counter[9]),
        .I1(counter[10]),
        .I2(counter[7]),
        .I3(counter[8]),
        .I4(counter[6]),
        .I5(counter[5]),
        .O(\counter_reg[9]_0 ));
endmodule

(* ORIG_REF_NAME = "reciever" *) 
module top_UART_reciever
   (parity_out,
    rx_done_tick,
    rx_data_out,
    reset,
    clk,
    rx,
    \n_reg_reg[0]_0 ,
    parity_reg_reg_0,
    parity_reg_reg_1);
  output parity_out;
  output rx_done_tick;
  output [7:0]rx_data_out;
  input reset;
  input clk;
  input rx;
  input \n_reg_reg[0]_0 ;
  input parity_reg_reg_0;
  input parity_reg_reg_1;

  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_6_n_0 ;
  wire [6:0]b_next;
  wire b_next_0;
  wire \b_reg[7]_i_2_n_0 ;
  wire clk;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[0]_i_2_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[2]_i_2_n_0 ;
  wire \n_reg[2]_i_3_n_0 ;
  wire \n_reg[2]_i_4_n_0 ;
  wire \n_reg_reg[0]_0 ;
  wire parity_out;
  wire parity_reg_i_1_n_0;
  wire parity_reg_i_2_n_0;
  wire parity_reg_reg_0;
  wire parity_reg_reg_1;
  wire reset;
  wire rx;
  wire [7:0]rx_data_out;
  wire rx_done_tick;
  wire rx_done_tick_INST_0_i_1_n_0;
  wire rx_done_tick_INST_0_i_3_n_0;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[2]_i_2_n_0 ;
  wire \s_reg[2]_i_3_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire [2:0]sel0;
  wire [2:0]state_reg;

  LUT6 #(
    .INIT(64'h00550055AA6AAAAA)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h005A005AF070F0F0)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg[0]),
        .I1(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A0FA80FF00)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(state_reg[0]),
        .I1(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_state_reg[2]_i_2__0 
       (.I0(state_reg[0]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\FSM_sequential_state_reg[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(s_reg[3]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[2]),
        .I4(parity_reg_reg_1),
        .I5(parity_reg_reg_0),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \FSM_sequential_state_reg[2]_i_4 
       (.I0(\FSM_sequential_state_reg[2]_i_5_n_0 ),
        .I1(parity_reg_reg_0),
        .I2(parity_reg_reg_1),
        .I3(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I4(rx_done_tick_INST_0_i_3_n_0),
        .O(\FSM_sequential_state_reg[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state_reg[2]_i_5 
       (.I0(rx),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state_reg[2]_i_6 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[3]),
        .I3(state_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(state_reg[2]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(rx_data_out[1]),
        .I1(state_reg[1]),
        .I2(rx),
        .O(b_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(rx_data_out[2]),
        .I1(state_reg[1]),
        .I2(rx),
        .O(b_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(rx_data_out[3]),
        .I1(state_reg[1]),
        .I2(rx),
        .O(b_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(rx_data_out[4]),
        .I1(state_reg[1]),
        .I2(rx),
        .O(b_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(rx_data_out[5]),
        .I1(state_reg[1]),
        .I2(rx),
        .O(b_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(rx_data_out[6]),
        .I1(state_reg[1]),
        .I2(rx),
        .O(b_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(rx_data_out[7]),
        .I1(state_reg[1]),
        .I2(rx),
        .O(b_next[6]));
  LUT6 #(
    .INIT(64'h000001000000010F)) 
    \b_reg[7]_i_1 
       (.I0(\n_reg_reg[0]_0 ),
        .I1(\b_reg[7]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[2]),
        .I5(rx),
        .O(b_next_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \b_reg[7]_i_2 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\b_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk),
        .CE(b_next_0),
        .D(b_next[0]),
        .Q(rx_data_out[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk),
        .CE(b_next_0),
        .D(b_next[1]),
        .Q(rx_data_out[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk),
        .CE(b_next_0),
        .D(b_next[2]),
        .Q(rx_data_out[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk),
        .CE(b_next_0),
        .D(b_next[3]),
        .Q(rx_data_out[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk),
        .CE(b_next_0),
        .D(b_next[4]),
        .Q(rx_data_out[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk),
        .CE(b_next_0),
        .D(b_next[5]),
        .Q(rx_data_out[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk),
        .CE(b_next_0),
        .D(b_next[6]),
        .Q(rx_data_out[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk),
        .CE(b_next_0),
        .D(rx),
        .Q(rx_data_out[7]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFF00FFEF00F00010)) 
    \n_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I1(\b_reg[7]_i_2_n_0 ),
        .I2(\n_reg[2]_i_2_n_0 ),
        .I3(\n_reg_reg[0]_0 ),
        .I4(\n_reg[0]_i_2_n_0 ),
        .I5(sel0[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \n_reg[0]_i_2 
       (.I0(state_reg[2]),
        .I1(s_reg[3]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(rx_done_tick_INST_0_i_3_n_0),
        .O(\n_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222F2FF88880800)) 
    \n_reg[1]_i_1 
       (.I0(\n_reg[2]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I3(parity_reg_i_2_n_0),
        .I4(\n_reg[2]_i_4_n_0 ),
        .I5(sel0[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA00AA00AE0F2F0F0)) 
    \n_reg[2]_i_1 
       (.I0(\n_reg[2]_i_2_n_0 ),
        .I1(state_reg[0]),
        .I2(sel0[2]),
        .I3(\n_reg[2]_i_3_n_0 ),
        .I4(parity_reg_i_2_n_0),
        .I5(\n_reg[2]_i_4_n_0 ),
        .O(\n_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \n_reg[2]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .O(\n_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \n_reg[2]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\n_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \n_reg[2]_i_4 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .I3(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I4(parity_reg_reg_1),
        .I5(parity_reg_reg_0),
        .O(\n_reg[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    parity_reg_i_1
       (.I0(rx),
        .I1(parity_reg_i_2_n_0),
        .I2(state_reg[0]),
        .I3(parity_out),
        .O(parity_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    parity_reg_i_2
       (.I0(parity_reg_reg_0),
        .I1(parity_reg_reg_1),
        .I2(rx_done_tick_INST_0_i_3_n_0),
        .I3(s_reg[3]),
        .I4(state_reg[2]),
        .I5(state_reg[1]),
        .O(parity_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    parity_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(parity_reg_i_1_n_0),
        .Q(parity_out),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    rx_done_tick_INST_0
       (.I0(rx),
        .I1(state_reg[2]),
        .I2(rx_done_tick_INST_0_i_1_n_0),
        .I3(\n_reg_reg[0]_0 ),
        .I4(rx_done_tick_INST_0_i_3_n_0),
        .I5(s_reg[3]),
        .O(rx_done_tick));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_done_tick_INST_0_i_1
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .O(rx_done_tick_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    rx_done_tick_INST_0_i_3
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .O(rx_done_tick_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0303033A)) 
    \s_reg[0]_i_1 
       (.I0(rx),
        .I1(s_reg[0]),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6060606060FF6060)) 
    \s_reg[1]_i_1 
       (.I0(s_reg[0]),
        .I1(s_reg[1]),
        .I2(\s_reg[2]_i_2_n_0 ),
        .I3(rx_done_tick_INST_0_i_1_n_0),
        .I4(rx),
        .I5(state_reg[2]),
        .O(\s_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF7800)) 
    \s_reg[2]_i_1 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .I3(\s_reg[2]_i_2_n_0 ),
        .I4(\s_reg[2]_i_3_n_0 ),
        .O(\s_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h23322C3C)) 
    \s_reg[2]_i_2 
       (.I0(rx_done_tick_INST_0_i_3_n_0),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(s_reg[3]),
        .I4(state_reg[0]),
        .O(\s_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_reg[2]_i_3 
       (.I0(state_reg[2]),
        .I1(rx),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\s_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000CF00FF5555)) 
    \s_reg[3]_i_1__0 
       (.I0(rx),
        .I1(rx_done_tick_INST_0_i_3_n_0),
        .I2(s_reg[3]),
        .I3(\n_reg_reg[0]_0 ),
        .I4(rx_done_tick_INST_0_i_1_n_0),
        .I5(state_reg[2]),
        .O(s_next));
  LUT6 #(
    .INIT(64'h00090009998F9980)) 
    \s_reg[3]_i_2 
       (.I0(rx_done_tick_INST_0_i_3_n_0),
        .I1(s_reg[3]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(rx),
        .I5(state_reg[2]),
        .O(\s_reg[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk),
        .CE(s_next),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk),
        .CE(s_next),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk),
        .CE(s_next),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk),
        .CE(s_next),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "transmitter" *) 
module top_UART_transmitter
   (tx,
    tx_done_tick,
    reset,
    clk,
    \n_reg_reg[1]_0 ,
    \n_reg_reg[1]_1 ,
    tx_start,
    \s_reg_reg[0]_0 ,
    tx_data_in);
  output tx;
  output tx_done_tick;
  input reset;
  input clk;
  input \n_reg_reg[1]_0 ;
  input \n_reg_reg[1]_1 ;
  input tx_start;
  input \s_reg_reg[0]_0 ;
  input [7:0]tx_data_in;

  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_0 ;
  wire b_next;
  wire [0:0]b_reg;
  wire \b_reg[0]_i_1__0_n_0 ;
  wire \b_reg[1]_i_1__0_n_0 ;
  wire \b_reg[2]_i_1__0_n_0 ;
  wire \b_reg[3]_i_1__0_n_0 ;
  wire \b_reg[4]_i_1__0_n_0 ;
  wire \b_reg[5]_i_1__0_n_0 ;
  wire \b_reg[6]_i_1__0_n_0 ;
  wire \b_reg[7]_i_2__0_n_0 ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire clk;
  wire n_next;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[1]_i_3_n_0 ;
  wire \n_reg[1]_i_4_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[2]_i_2__0_n_0 ;
  wire \n_reg_reg[1]_0 ;
  wire \n_reg_reg[1]_1 ;
  wire reset;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_0 ;
  wire \s_reg[1]_i_1__0_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire \s_reg[3]_i_3_n_0 ;
  wire \s_reg[3]_i_4_n_0 ;
  wire \s_reg_reg[0]_0 ;
  wire [2:0]sel0;
  wire [2:0]state_reg;
  wire tx;
  wire [7:0]tx_data_in;
  wire tx_done_tick;
  wire tx_done_tick_INST_0_i_1_n_0;
  wire tx_reg_i_1_n_0;
  wire tx_reg_i_2_n_0;
  wire tx_reg_i_3_n_0;
  wire tx_start;

  LUT6 #(
    .INIT(64'hCC02CCCECC32CCCE)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(tx_start),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I5(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hC6CC)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE8F0)) 
    \FSM_sequential_state_reg[2]_i_1__0 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(s_reg[3]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[2]),
        .I4(\n_reg_reg[1]_0 ),
        .I5(\n_reg_reg[1]_1 ),
        .O(\FSM_sequential_state_reg[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(state_reg[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[2]_i_1__0_n_0 ),
        .Q(state_reg[2]),
        .R(reset));
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[0]_i_1__0 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(tx_data_in[0]),
        .I2(state_reg[1]),
        .O(\b_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[1]_i_1__0 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(tx_data_in[1]),
        .I2(state_reg[1]),
        .O(\b_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[2]_i_1__0 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(tx_data_in[2]),
        .I2(state_reg[1]),
        .O(\b_reg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[3]_i_1__0 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(tx_data_in[3]),
        .I2(state_reg[1]),
        .O(\b_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[4]_i_1__0 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(tx_data_in[4]),
        .I2(state_reg[1]),
        .O(\b_reg[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[5]_i_1__0 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(tx_data_in[5]),
        .I2(state_reg[1]),
        .O(\b_reg[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_reg[6]_i_1__0 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(tx_data_in[6]),
        .I2(state_reg[1]),
        .O(\b_reg[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000C0A)) 
    \b_reg[7]_i_1__0 
       (.I0(tx_start),
        .I1(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(b_next));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \b_reg[7]_i_2__0 
       (.I0(state_reg[1]),
        .I1(tx_data_in[7]),
        .O(\b_reg[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(clk),
        .CE(b_next),
        .D(\b_reg[0]_i_1__0_n_0 ),
        .Q(b_reg),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(clk),
        .CE(b_next),
        .D(\b_reg[1]_i_1__0_n_0 ),
        .Q(\b_reg_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(clk),
        .CE(b_next),
        .D(\b_reg[2]_i_1__0_n_0 ),
        .Q(\b_reg_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(clk),
        .CE(b_next),
        .D(\b_reg[3]_i_1__0_n_0 ),
        .Q(\b_reg_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(clk),
        .CE(b_next),
        .D(\b_reg[4]_i_1__0_n_0 ),
        .Q(\b_reg_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(clk),
        .CE(b_next),
        .D(\b_reg[5]_i_1__0_n_0 ),
        .Q(\b_reg_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(clk),
        .CE(b_next),
        .D(\b_reg[6]_i_1__0_n_0 ),
        .Q(\b_reg_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(clk),
        .CE(b_next),
        .D(\b_reg[7]_i_2__0_n_0 ),
        .Q(\b_reg_reg_n_0_[7] ),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFD7FFF700200000)) 
    \n_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I5(sel0[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h04FF4000)) 
    \n_reg[1]_i_1 
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .I2(sel0[0]),
        .I3(n_next),
        .I4(sel0[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F00000008)) 
    \n_reg[1]_i_2 
       (.I0(\n_reg[1]_i_3_n_0 ),
        .I1(state_reg[0]),
        .I2(\s_reg[3]_i_3_n_0 ),
        .I3(\n_reg_reg[1]_0 ),
        .I4(\n_reg_reg[1]_1 ),
        .I5(\n_reg[1]_i_4_n_0 ),
        .O(n_next));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \n_reg[1]_i_3 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .O(\n_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004040404040404)) 
    \n_reg[1]_i_4 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\n_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF70000FFF70020)) 
    \n_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(sel0[2]),
        .I5(\n_reg[2]_i_2__0_n_0 ),
        .O(\n_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \n_reg[2]_i_2__0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\n_reg[2]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h010E)) 
    \s_reg[0]_i_1__0 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(s_reg[0]),
        .I3(state_reg[2]),
        .O(\s_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \s_reg[1]_i_1__0 
       (.I0(state_reg[2]),
        .I1(\s_reg[3]_i_4_n_0 ),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .O(\s_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h06606060)) 
    \s_reg[2]_i_1__0 
       (.I0(state_reg[2]),
        .I1(\s_reg[3]_i_4_n_0 ),
        .I2(s_reg[2]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0F0F0FCC)) 
    \s_reg[3]_i_1 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(tx_start),
        .I2(\s_reg_reg[0]_0 ),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(s_next));
  LUT6 #(
    .INIT(64'h0660606060606060)) 
    \s_reg[3]_i_2__0 
       (.I0(state_reg[2]),
        .I1(\s_reg[3]_i_4_n_0 ),
        .I2(s_reg[3]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .I5(s_reg[2]),
        .O(\s_reg[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\s_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_reg[3]_i_4 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .O(\s_reg[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(clk),
        .CE(s_next),
        .D(\s_reg[0]_i_1__0_n_0 ),
        .Q(s_reg[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(clk),
        .CE(s_next),
        .D(\s_reg[1]_i_1__0_n_0 ),
        .Q(s_reg[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(clk),
        .CE(s_next),
        .D(\s_reg[2]_i_1__0_n_0 ),
        .Q(s_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(clk),
        .CE(s_next),
        .D(\s_reg[3]_i_2__0_n_0 ),
        .Q(s_reg[3]),
        .R(reset));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    tx_done_tick_INST_0
       (.I0(tx_done_tick_INST_0_i_1_n_0),
        .I1(\s_reg_reg[0]_0 ),
        .I2(s_reg[2]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .I5(s_reg[3]),
        .O(tx_done_tick));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    tx_done_tick_INST_0_i_1
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .O(tx_done_tick_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFA0EF000FA0EF)) 
    tx_reg_i_1
       (.I0(tx_reg_i_2_n_0),
        .I1(b_reg),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[2]),
        .I5(tx),
        .O(tx_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    tx_reg_i_2
       (.I0(state_reg[0]),
        .I1(tx_reg_i_3_n_0),
        .I2(tx_data_in[6]),
        .I3(tx_data_in[7]),
        .I4(tx_data_in[4]),
        .I5(tx_data_in[5]),
        .O(tx_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tx_reg_i_3
       (.I0(tx_data_in[2]),
        .I1(tx_data_in[3]),
        .I2(tx_data_in[0]),
        .I3(tx_data_in[1]),
        .O(tx_reg_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_reg_i_1_n_0),
        .Q(tx),
        .S(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
