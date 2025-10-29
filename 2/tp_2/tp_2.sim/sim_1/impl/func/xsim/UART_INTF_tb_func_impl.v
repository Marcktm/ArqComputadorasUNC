// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Oct 26 16:42:57 2025
// Host        : DESKTOP-F8FSP4G running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/hamu7/Desktop/tp_2/tp_2.sim/sim_1/impl/func/xsim/UART_INTF_tb_func_impl.v
// Design      : ALU_UART_INTFC
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BaudRate = "9600" *) (* CLK_MHZ = "10000000" *) (* DBIT = "8" *) 
(* ECO_CHECKSUM = "fa5b44c9" *) (* SB_TICK = "16" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module ALU_UART_INTFC
   (clk,
    reset,
    rx,
    tx,
    out_test);
  input clk;
  input reset;
  input rx;
  output tx;
  output [7:0]out_test;

  wire UART_n_1;
  wire UART_n_2;
  wire UART_n_3;
  wire UART_n_4;
  wire UART_n_5;
  wire UART_n_6;
  wire UART_n_7;
  wire UART_n_8;
  wire UART_n_9;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]out_test;
  wire [7:0]out_test_OBUF;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire rx_done_tick;
  wire tx;
  wire tx_OBUF;
  wire tx_start_reg;

  top_UART UART
       (.CLK(clk_IBUF_BUFG),
        .E(rx_done_tick),
        .\FSM_sequential_state_reg_reg[2] (UART_n_1),
        .Q({UART_n_2,UART_n_3,UART_n_4,UART_n_5,UART_n_6,UART_n_7,UART_n_8,UART_n_9}),
        .SR(reset_IBUF),
        .rx_IBUF(rx_IBUF),
        .tx_OBUF(tx_OBUF),
        .tx_start_reg(tx_start_reg));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \out_test_OBUF[0]_inst 
       (.I(out_test_OBUF[0]),
        .O(out_test[0]));
  OBUF \out_test_OBUF[1]_inst 
       (.I(out_test_OBUF[1]),
        .O(out_test[1]));
  OBUF \out_test_OBUF[2]_inst 
       (.I(out_test_OBUF[2]),
        .O(out_test[2]));
  OBUF \out_test_OBUF[3]_inst 
       (.I(out_test_OBUF[3]),
        .O(out_test[3]));
  OBUF \out_test_OBUF[4]_inst 
       (.I(out_test_OBUF[4]),
        .O(out_test[4]));
  OBUF \out_test_OBUF[5]_inst 
       (.I(out_test_OBUF[5]),
        .O(out_test[5]));
  OBUF \out_test_OBUF[6]_inst 
       (.I(out_test_OBUF[6]),
        .O(out_test[6]));
  OBUF \out_test_OBUF[7]_inst 
       (.I(out_test_OBUF[7]),
        .O(out_test[7]));
  FDRE #(
    .INIT(1'b0)) 
    \received_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_done_tick),
        .D(UART_n_9),
        .Q(out_test_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \received_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_done_tick),
        .D(UART_n_8),
        .Q(out_test_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \received_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_done_tick),
        .D(UART_n_7),
        .Q(out_test_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \received_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_done_tick),
        .D(UART_n_6),
        .Q(out_test_OBUF[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \received_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_done_tick),
        .D(UART_n_5),
        .Q(out_test_OBUF[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \received_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_done_tick),
        .D(UART_n_4),
        .Q(out_test_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \received_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_done_tick),
        .D(UART_n_3),
        .Q(out_test_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \received_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_done_tick),
        .D(UART_n_2),
        .Q(out_test_OBUF[7]),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(UART_n_1),
        .Q(tx_start_reg),
        .R(1'b0));
endmodule

module BaudRateGenerator
   (n_next,
    \counter_reg[2]_0 ,
    \counter_reg[10]_0 ,
    \counter_reg[5]_0 ,
    \counter_reg[2]_1 ,
    \counter_reg[0]_0 ,
    \n_reg_reg[2] ,
    \n_reg_reg[2]_0 ,
    state_next__0,
    \FSM_sequential_state_reg_reg[2] ,
    SR,
    CLK);
  output n_next;
  output \counter_reg[2]_0 ;
  output \counter_reg[10]_0 ;
  output \counter_reg[5]_0 ;
  output \counter_reg[2]_1 ;
  output \counter_reg[0]_0 ;
  input \n_reg_reg[2] ;
  input \n_reg_reg[2]_0 ;
  input [0:0]state_next__0;
  input \FSM_sequential_state_reg_reg[2] ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire [0:0]SR;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[10]_i_2_n_0 ;
  wire \counter[10]_i_3_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire [10:0]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[10]_0 ;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[2]_1 ;
  wire \counter_reg[5]_0 ;
  wire n_next;
  wire \n_reg_reg[2] ;
  wire \n_reg_reg[2]_0 ;
  wire [0:0]state_next__0;

  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state_reg[2]_i_10 
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .O(\counter_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_sequential_state_reg[2]_i_3__0 
       (.I0(\counter_reg[5]_0 ),
        .I1(\counter_reg[10]_0 ),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[2]),
        .O(\counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \FSM_sequential_state_reg[2]_i_6 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(\counter_reg[10]_0 ),
        .I4(\counter_reg[5]_0 ),
        .I5(\FSM_sequential_state_reg_reg[2] ),
        .O(\counter_reg[2]_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state_reg[2]_i_8 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\counter_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state_reg[2]_i_9 
       (.I0(counter_reg[10]),
        .I1(counter_reg[9]),
        .I2(counter_reg[8]),
        .I3(counter_reg[7]),
        .O(\counter_reg[10]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[10]_i_1 
       (.I0(SR),
        .I1(\counter_reg[0]_0 ),
        .O(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[10]_i_2 
       (.I0(counter_reg[10]),
        .I1(counter_reg[8]),
        .I2(counter_reg[6]),
        .I3(\counter[10]_i_3_n_0 ),
        .I4(counter_reg[7]),
        .I5(counter_reg[9]),
        .O(\counter[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[10]_i_3 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[2]),
        .I3(counter_reg[0]),
        .I4(counter_reg[1]),
        .I5(counter_reg[3]),
        .O(\counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\counter[2]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .O(\counter[3]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[1]),
        .I3(counter_reg[0]),
        .I4(counter_reg[2]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[2]),
        .I3(counter_reg[0]),
        .I4(counter_reg[1]),
        .I5(counter_reg[3]),
        .O(\counter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[6]_i_1 
       (.I0(counter_reg[6]),
        .I1(\counter[10]_i_3_n_0 ),
        .O(\counter[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[7]_i_1 
       (.I0(counter_reg[7]),
        .I1(\counter[10]_i_3_n_0 ),
        .I2(counter_reg[6]),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[8]_i_1 
       (.I0(counter_reg[8]),
        .I1(counter_reg[6]),
        .I2(\counter[10]_i_3_n_0 ),
        .I3(counter_reg[7]),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[9]_i_1 
       (.I0(counter_reg[9]),
        .I1(counter_reg[7]),
        .I2(\counter[10]_i_3_n_0 ),
        .I3(counter_reg[6]),
        .I4(counter_reg[8]),
        .O(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter_reg[0]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[10]_i_2_n_0 ),
        .Q(counter_reg[10]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter_reg[1]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter_reg[2]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter_reg[3]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter_reg[4]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter_reg[5]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter_reg[6]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter_reg[7]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[8]_i_1_n_0 ),
        .Q(counter_reg[8]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[9]_i_1_n_0 ),
        .Q(counter_reg[9]),
        .R(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \n_reg[2]_i_2 
       (.I0(\counter_reg[2]_0 ),
        .I1(\counter_reg[10]_0 ),
        .I2(\counter_reg[5]_0 ),
        .I3(\n_reg_reg[2] ),
        .I4(\n_reg_reg[2]_0 ),
        .I5(state_next__0),
        .O(n_next));
endmodule

module reciever
   (\FSM_sequential_state_reg_reg[2]_0 ,
    \s_reg_reg[2]_0 ,
    E,
    Q,
    \b_reg_reg[0]_0 ,
    rx_IBUF,
    SR,
    \n_reg_reg[2]_0 ,
    \n_reg_reg[2]_1 ,
    \n_reg_reg[2]_2 ,
    \FSM_sequential_state_reg_reg[2]_1 ,
    CLK);
  output \FSM_sequential_state_reg_reg[2]_0 ;
  output \s_reg_reg[2]_0 ;
  output [0:0]E;
  output [7:0]Q;
  input \b_reg_reg[0]_0 ;
  input rx_IBUF;
  input [0:0]SR;
  input \n_reg_reg[2]_0 ;
  input \n_reg_reg[2]_1 ;
  input \n_reg_reg[2]_2 ;
  input \FSM_sequential_state_reg_reg[2]_1 ;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_7_n_0 ;
  wire \FSM_sequential_state_reg_reg[2]_0 ;
  wire \FSM_sequential_state_reg_reg[2]_1 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [6:0]b_next;
  wire b_next_0;
  wire \b_reg_reg[0]_0 ;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[0]_i_2_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[1]_i_2_n_0 ;
  wire \n_reg[1]_i_3_n_0 ;
  wire \n_reg[1]_i_4_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[2]_i_2__0_n_0 ;
  wire \n_reg[2]_i_3_n_0 ;
  wire \n_reg_reg[2]_0 ;
  wire \n_reg_reg[2]_1 ;
  wire \n_reg_reg[2]_2 ;
  wire rx_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire \s_reg[3]_i_4_n_0 ;
  wire \s_reg_reg[2]_0 ;
  wire [1:1]state_next__0;
  wire [2:0]state_reg;
  wire tx_start_reg_i_2_n_0;

  LUT6 #(
    .INIT(64'h0300030354555454)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[2]),
        .I1(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[2]_1 ),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABA8AAA8A8)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_next__0),
        .I1(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[2]_1 ),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(state_reg[0]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .O(state_next__0));
  LUT6 #(
    .INIT(64'h5755575754555454)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[2]_1 ),
        .I5(state_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(state_reg[1]),
        .I1(rx_IBUF),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \FSM_sequential_state_reg[2]_i_4 
       (.I0(\FSM_sequential_state_reg[2]_i_7_n_0 ),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(\n_reg_reg[2]_2 ),
        .I4(\n_reg_reg[2]_1 ),
        .I5(\n_reg_reg[2]_0 ),
        .O(\FSM_sequential_state_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00FFFF007FFF)) 
    \FSM_sequential_state_reg[2]_i_5 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[2]),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_state_reg[2]_i_7 
       (.I0(s_reg[3]),
        .I1(state_reg[0]),
        .I2(s_reg[2]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(state_reg[2]),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(Q[1]),
        .I1(state_reg[1]),
        .I2(rx_IBUF),
        .O(b_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(Q[2]),
        .I1(state_reg[1]),
        .I2(rx_IBUF),
        .O(b_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(Q[3]),
        .I1(state_reg[1]),
        .I2(rx_IBUF),
        .O(b_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(Q[4]),
        .I1(state_reg[1]),
        .I2(rx_IBUF),
        .O(b_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(Q[5]),
        .I1(state_reg[1]),
        .I2(rx_IBUF),
        .O(b_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(Q[6]),
        .I1(state_reg[1]),
        .I2(rx_IBUF),
        .O(b_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(Q[7]),
        .I1(state_reg[1]),
        .I2(rx_IBUF),
        .O(b_next[6]));
  LUT6 #(
    .INIT(64'h000200020000000F)) 
    \b_reg[7]_i_1 
       (.I0(\b_reg_reg[0]_0 ),
        .I1(\s_reg_reg[2]_0 ),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .I4(rx_IBUF),
        .I5(state_reg[1]),
        .O(b_next_0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(CLK),
        .CE(b_next_0),
        .D(b_next[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(CLK),
        .CE(b_next_0),
        .D(b_next[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(CLK),
        .CE(b_next_0),
        .D(b_next[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(CLK),
        .CE(b_next_0),
        .D(b_next[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(CLK),
        .CE(b_next_0),
        .D(b_next[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(CLK),
        .CE(b_next_0),
        .D(b_next[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(CLK),
        .CE(b_next_0),
        .D(b_next[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(CLK),
        .CE(b_next_0),
        .D(rx_IBUF),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FDFF0F0F0200)) 
    \n_reg[0]_i_1 
       (.I0(\n_reg[1]_i_3_n_0 ),
        .I1(state_reg[0]),
        .I2(\n_reg[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg_reg[2]_1 ),
        .I4(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I5(n_reg[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \n_reg[0]_i_2 
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .O(\n_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \n_reg[1]_i_1 
       (.I0(\n_reg[1]_i_2_n_0 ),
        .I1(\n_reg[1]_i_3_n_0 ),
        .I2(\n_reg[1]_i_4_n_0 ),
        .I3(\FSM_sequential_state_reg_reg[2]_1 ),
        .I4(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I5(n_reg[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0028)) 
    \n_reg[1]_i_2 
       (.I0(state_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[1]),
        .I3(state_reg[2]),
        .O(\n_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \n_reg[1]_i_3 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .O(\n_reg[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \n_reg[1]_i_4 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .O(\n_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h200220022F02FF00)) 
    \n_reg[2]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .I2(\n_reg[2]_i_2__0_n_0 ),
        .I3(n_reg[2]),
        .I4(\n_reg[2]_i_3_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \n_reg[2]_i_2__0 
       (.I0(n_reg[0]),
        .I1(n_reg[1]),
        .O(\n_reg[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \n_reg[2]_i_3 
       (.I0(state_reg[0]),
        .I1(\n_reg[0]_i_2_n_0 ),
        .I2(\s_reg_reg[2]_0 ),
        .I3(\n_reg_reg[2]_0 ),
        .I4(\n_reg_reg[2]_1 ),
        .I5(\n_reg_reg[2]_2 ),
        .O(\n_reg[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \received_data[7]_i_1 
       (.I0(rx_IBUF),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(\s_reg_reg[2]_0 ),
        .I5(\b_reg_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0154)) 
    \s_reg[0]_i_1 
       (.I0(s_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .O(\s_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00565600)) 
    \s_reg[1]_i_1 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .O(\s_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0056565656000000)) 
    \s_reg[2]_i_1 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .I5(s_reg[2]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00CC00CC08C008CF)) 
    \s_reg[3]_i_1 
       (.I0(\s_reg_reg[2]_0 ),
        .I1(\b_reg_reg[0]_0 ),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .I4(rx_IBUF),
        .I5(state_reg[1]),
        .O(s_next));
  LUT5 #(
    .INIT(32'h56000052)) 
    \s_reg[3]_i_2 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(s_reg[3]),
        .I4(\s_reg[3]_i_4_n_0 ),
        .O(\s_reg[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[1]),
        .I2(s_reg[0]),
        .I3(s_reg[3]),
        .O(\s_reg_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s_reg[3]_i_4 
       (.I0(s_reg[0]),
        .I1(s_reg[1]),
        .I2(s_reg[2]),
        .O(\s_reg[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(CLK),
        .CE(s_next),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(CLK),
        .CE(s_next),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(CLK),
        .CE(s_next),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(CLK),
        .CE(s_next),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    tx_start_reg_i_1
       (.I0(\b_reg_reg[0]_0 ),
        .I1(\s_reg_reg[2]_0 ),
        .I2(state_reg[2]),
        .I3(tx_start_reg_i_2_n_0),
        .I4(rx_IBUF),
        .I5(SR),
        .O(\FSM_sequential_state_reg_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    tx_start_reg_i_2
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .O(tx_start_reg_i_2_n_0));
endmodule

module top_UART
   (tx_OBUF,
    \FSM_sequential_state_reg_reg[2] ,
    Q,
    E,
    SR,
    CLK,
    rx_IBUF,
    tx_start_reg);
  output tx_OBUF;
  output \FSM_sequential_state_reg_reg[2] ;
  output [7:0]Q;
  output [0:0]E;
  input [0:0]SR;
  input CLK;
  input rx_IBUF;
  input tx_start_reg;

  wire BRG_n_1;
  wire BRG_n_2;
  wire BRG_n_3;
  wire BRG_n_4;
  wire BRG_n_5;
  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire [7:0]Q;
  wire RX_n_1;
  wire [0:0]SR;
  wire TX_n_2;
  wire TX_n_3;
  wire n_next;
  wire rx_IBUF;
  wire [1:1]state_next__0;
  wire tx_OBUF;
  wire tx_start_reg;

  BaudRateGenerator BRG
       (.CLK(CLK),
        .\FSM_sequential_state_reg_reg[2] (RX_n_1),
        .SR(SR),
        .\counter_reg[0]_0 (BRG_n_5),
        .\counter_reg[10]_0 (BRG_n_2),
        .\counter_reg[2]_0 (BRG_n_1),
        .\counter_reg[2]_1 (BRG_n_4),
        .\counter_reg[5]_0 (BRG_n_3),
        .n_next(n_next),
        .\n_reg_reg[2] (TX_n_3),
        .\n_reg_reg[2]_0 (TX_n_2),
        .state_next__0(state_next__0));
  reciever RX
       (.CLK(CLK),
        .E(E),
        .\FSM_sequential_state_reg_reg[2]_0 (\FSM_sequential_state_reg_reg[2] ),
        .\FSM_sequential_state_reg_reg[2]_1 (BRG_n_4),
        .Q(Q),
        .SR(SR),
        .\b_reg_reg[0]_0 (BRG_n_5),
        .\n_reg_reg[2]_0 (BRG_n_3),
        .\n_reg_reg[2]_1 (BRG_n_2),
        .\n_reg_reg[2]_2 (BRG_n_1),
        .rx_IBUF(rx_IBUF),
        .\s_reg_reg[2]_0 (RX_n_1));
  transmitter TX
       (.CLK(CLK),
        .\FSM_sequential_state_reg_reg[0]_0 (TX_n_3),
        .\FSM_sequential_state_reg_reg[0]_1 (BRG_n_5),
        .SR(SR),
        .n_next(n_next),
        .\s_reg_reg[2]_0 (TX_n_2),
        .state_next__0(state_next__0),
        .tx_OBUF(tx_OBUF),
        .tx_start_reg(tx_start_reg));
endmodule

module transmitter
   (tx_OBUF,
    state_next__0,
    \s_reg_reg[2]_0 ,
    \FSM_sequential_state_reg_reg[0]_0 ,
    SR,
    CLK,
    tx_start_reg,
    \FSM_sequential_state_reg_reg[0]_1 ,
    n_next);
  output tx_OBUF;
  output [0:0]state_next__0;
  output \s_reg_reg[2]_0 ;
  output \FSM_sequential_state_reg_reg[0]_0 ;
  input [0:0]SR;
  input CLK;
  input tx_start_reg;
  input \FSM_sequential_state_reg_reg[0]_1 ;
  input n_next;

  wire CLK;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire \FSM_sequential_state_reg_reg[0]_1 ;
  wire [0:0]SR;
  wire n_next;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_0 ;
  wire \s_reg[1]_i_1__0_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire \s_reg[3]_i_4__0_n_0 ;
  wire \s_reg_reg[2]_0 ;
  wire [0:0]state_next__0;
  wire [2:0]state_reg;
  wire tx_OBUF;
  wire tx_next;
  wire tx_reg_i_2_n_0;
  wire tx_start_reg;

  LUT6 #(
    .INIT(64'hFFBBFFBB004F0040)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(tx_start_reg),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF0B4F0F0)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF40FB00)) 
    \FSM_sequential_state_reg[2]_i_1__0 
       (.I0(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_1 ),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007F00)) 
    \FSM_sequential_state_reg[2]_i_2__0 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .I5(\s_reg_reg[2]_0 ),
        .O(\FSM_sequential_state_reg[2]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(state_reg[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,start:001,data:010,parity:011,stop:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[2]_i_1__0_n_0 ),
        .Q(state_reg[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0F40)) 
    \n_reg[0]_i_1 
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .I2(n_next),
        .I3(n_reg[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h02FF0800)) 
    \n_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[0]),
        .I2(state_reg[2]),
        .I3(n_next),
        .I4(n_reg[1]),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002AFFFF00800000)) 
    \n_reg[2]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[1]),
        .I2(n_reg[0]),
        .I3(state_reg[2]),
        .I4(n_next),
        .I5(n_reg[2]),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \n_reg[2]_i_3__0 
       (.I0(state_reg[0]),
        .I1(n_reg[2]),
        .I2(n_reg[0]),
        .I3(n_reg[1]),
        .O(\FSM_sequential_state_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \n_reg[2]_i_4 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .O(state_next__0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0154)) 
    \s_reg[0]_i_1__0 
       (.I0(s_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .O(\s_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00565600)) 
    \s_reg[1]_i_1__0 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0056565656000000)) 
    \s_reg[2]_i_1__0 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .I5(s_reg[2]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000C0F0F0F0AA)) 
    \s_reg[3]_i_1__0 
       (.I0(tx_start_reg),
        .I1(\s_reg_reg[2]_0 ),
        .I2(\FSM_sequential_state_reg_reg[0]_1 ),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(s_next));
  LUT5 #(
    .INIT(32'h15554000)) 
    \s_reg[3]_i_2__0 
       (.I0(\s_reg[3]_i_4__0_n_0 ),
        .I1(s_reg[2]),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .I4(s_reg[3]),
        .O(\s_reg[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_reg[3]_i_3__0 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\s_reg_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \s_reg[3]_i_4__0 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .O(\s_reg[3]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(CLK),
        .CE(s_next),
        .D(\s_reg[0]_i_1__0_n_0 ),
        .Q(s_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(CLK),
        .CE(s_next),
        .D(\s_reg[1]_i_1__0_n_0 ),
        .Q(s_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(CLK),
        .CE(s_next),
        .D(\s_reg[2]_i_1__0_n_0 ),
        .Q(s_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(CLK),
        .CE(s_next),
        .D(\s_reg[3]_i_2__0_n_0 ),
        .Q(s_reg[3]),
        .R(SR));
  LUT3 #(
    .INIT(8'h1F)) 
    tx_reg_i_1
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .O(tx_next));
  LUT2 #(
    .INIT(4'h1)) 
    tx_reg_i_2
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .O(tx_reg_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(CLK),
        .CE(tx_next),
        .D(tx_reg_i_2_n_0),
        .Q(tx_OBUF),
        .S(SR));
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
