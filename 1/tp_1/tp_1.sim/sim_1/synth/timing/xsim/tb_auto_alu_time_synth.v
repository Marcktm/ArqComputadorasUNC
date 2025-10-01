// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Oct  1 14:45:28 2021
// Host        : DESKTOP-4OFK9E8 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {G:/My
//               Drive/Facultad/Materias/Arquitectura/Practico/TPs/1/tp_1/tp_1.sim/sim_1/synth/timing/xsim/tb_auto_alu_time_synth.v}
// Design      : alu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* N_BITS = "8" *) (* OP_BITS = "6" *) 
(* NotValidForBitStream *)
module alu
   (in_a,
    in_b,
    in_op,
    op_c);
  input [7:0]in_a;
  input [7:0]in_b;
  input [5:0]in_op;
  output [7:0]op_c;

  wire [7:0]data0;
  wire [4:0]data4;
  wire [4:0]data5;
  wire [7:0]in_a;
  wire [7:0]in_a_IBUF;
  wire [7:0]in_b;
  wire [7:0]in_b_IBUF;
  wire [5:0]in_op;
  wire [5:0]in_op_IBUF;
  wire [7:0]op_c;
  wire [7:0]op_c_OBUF;
  wire \op_c_OBUF[0]_inst_i_2_n_0 ;
  wire \op_c_OBUF[0]_inst_i_3_n_0 ;
  wire \op_c_OBUF[0]_inst_i_6_n_0 ;
  wire \op_c_OBUF[1]_inst_i_2_n_0 ;
  wire \op_c_OBUF[1]_inst_i_3_n_0 ;
  wire \op_c_OBUF[1]_inst_i_6_n_0 ;
  wire \op_c_OBUF[2]_inst_i_2_n_0 ;
  wire \op_c_OBUF[2]_inst_i_3_n_0 ;
  wire \op_c_OBUF[2]_inst_i_6_n_0 ;
  wire \op_c_OBUF[2]_inst_i_7_n_0 ;
  wire \op_c_OBUF[3]_inst_i_2_n_0 ;
  wire \op_c_OBUF[3]_inst_i_3_n_0 ;
  wire \op_c_OBUF[3]_inst_i_6_n_0 ;
  wire \op_c_OBUF[3]_inst_i_7_n_0 ;
  wire \op_c_OBUF[4]_inst_i_2_n_0 ;
  wire \op_c_OBUF[4]_inst_i_3_n_0 ;
  wire \op_c_OBUF[4]_inst_i_6_n_0 ;
  wire \op_c_OBUF[4]_inst_i_7_n_0 ;
  wire \op_c_OBUF[4]_inst_i_8_n_0 ;
  wire \op_c_OBUF[4]_inst_i_9_n_0 ;
  wire \op_c_OBUF[5]_inst_i_2_n_0 ;
  wire \op_c_OBUF[5]_inst_i_3_n_0 ;
  wire \op_c_OBUF[5]_inst_i_4_n_0 ;
  wire \op_c_OBUF[5]_inst_i_5_n_0 ;
  wire \op_c_OBUF[5]_inst_i_6_n_0 ;
  wire \op_c_OBUF[5]_inst_i_7_n_0 ;
  wire \op_c_OBUF[6]_inst_i_10_n_0 ;
  wire \op_c_OBUF[6]_inst_i_11_n_0 ;
  wire \op_c_OBUF[6]_inst_i_12_n_0 ;
  wire \op_c_OBUF[6]_inst_i_13_n_0 ;
  wire \op_c_OBUF[6]_inst_i_14_n_0 ;
  wire \op_c_OBUF[6]_inst_i_15_n_0 ;
  wire \op_c_OBUF[6]_inst_i_16_n_0 ;
  wire \op_c_OBUF[6]_inst_i_17_n_0 ;
  wire \op_c_OBUF[6]_inst_i_18_n_0 ;
  wire \op_c_OBUF[6]_inst_i_19_n_0 ;
  wire \op_c_OBUF[6]_inst_i_2_n_0 ;
  wire \op_c_OBUF[6]_inst_i_3_n_0 ;
  wire \op_c_OBUF[6]_inst_i_4_n_0 ;
  wire \op_c_OBUF[6]_inst_i_5_n_0 ;
  wire \op_c_OBUF[6]_inst_i_6_n_1 ;
  wire \op_c_OBUF[6]_inst_i_6_n_2 ;
  wire \op_c_OBUF[6]_inst_i_6_n_3 ;
  wire \op_c_OBUF[6]_inst_i_7_n_0 ;
  wire \op_c_OBUF[6]_inst_i_8_n_0 ;
  wire \op_c_OBUF[6]_inst_i_9_n_0 ;
  wire \op_c_OBUF[6]_inst_i_9_n_1 ;
  wire \op_c_OBUF[6]_inst_i_9_n_2 ;
  wire \op_c_OBUF[6]_inst_i_9_n_3 ;
  wire \op_c_OBUF[7]_inst_i_2_n_0 ;
  wire \op_c_OBUF[7]_inst_i_3_n_0 ;
  wire \op_c_OBUF[7]_inst_i_4_n_0 ;
  wire \op_c_OBUF[7]_inst_i_5_n_0 ;
  wire \op_c_OBUF[7]_inst_i_6_n_0 ;
  wire [3:3]\NLW_op_c_OBUF[6]_inst_i_6_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_auto_alu_time_synth.sdf",,,,"tool_control");
end
  IBUF \in_a_IBUF[0]_inst 
       (.I(in_a[0]),
        .O(in_a_IBUF[0]));
  IBUF \in_a_IBUF[1]_inst 
       (.I(in_a[1]),
        .O(in_a_IBUF[1]));
  IBUF \in_a_IBUF[2]_inst 
       (.I(in_a[2]),
        .O(in_a_IBUF[2]));
  IBUF \in_a_IBUF[3]_inst 
       (.I(in_a[3]),
        .O(in_a_IBUF[3]));
  IBUF \in_a_IBUF[4]_inst 
       (.I(in_a[4]),
        .O(in_a_IBUF[4]));
  IBUF \in_a_IBUF[5]_inst 
       (.I(in_a[5]),
        .O(in_a_IBUF[5]));
  IBUF \in_a_IBUF[6]_inst 
       (.I(in_a[6]),
        .O(in_a_IBUF[6]));
  IBUF \in_a_IBUF[7]_inst 
       (.I(in_a[7]),
        .O(in_a_IBUF[7]));
  IBUF \in_b_IBUF[0]_inst 
       (.I(in_b[0]),
        .O(in_b_IBUF[0]));
  IBUF \in_b_IBUF[1]_inst 
       (.I(in_b[1]),
        .O(in_b_IBUF[1]));
  IBUF \in_b_IBUF[2]_inst 
       (.I(in_b[2]),
        .O(in_b_IBUF[2]));
  IBUF \in_b_IBUF[3]_inst 
       (.I(in_b[3]),
        .O(in_b_IBUF[3]));
  IBUF \in_b_IBUF[4]_inst 
       (.I(in_b[4]),
        .O(in_b_IBUF[4]));
  IBUF \in_b_IBUF[5]_inst 
       (.I(in_b[5]),
        .O(in_b_IBUF[5]));
  IBUF \in_b_IBUF[6]_inst 
       (.I(in_b[6]),
        .O(in_b_IBUF[6]));
  IBUF \in_b_IBUF[7]_inst 
       (.I(in_b[7]),
        .O(in_b_IBUF[7]));
  IBUF \in_op_IBUF[0]_inst 
       (.I(in_op[0]),
        .O(in_op_IBUF[0]));
  IBUF \in_op_IBUF[1]_inst 
       (.I(in_op[1]),
        .O(in_op_IBUF[1]));
  IBUF \in_op_IBUF[2]_inst 
       (.I(in_op[2]),
        .O(in_op_IBUF[2]));
  IBUF \in_op_IBUF[3]_inst 
       (.I(in_op[3]),
        .O(in_op_IBUF[3]));
  IBUF \in_op_IBUF[4]_inst 
       (.I(in_op[4]),
        .O(in_op_IBUF[4]));
  IBUF \in_op_IBUF[5]_inst 
       (.I(in_op[5]),
        .O(in_op_IBUF[5]));
  OBUF \op_c_OBUF[0]_inst 
       (.I(op_c_OBUF[0]),
        .O(op_c[0]));
  MUXF7 \op_c_OBUF[0]_inst_i_1 
       (.I0(\op_c_OBUF[0]_inst_i_2_n_0 ),
        .I1(\op_c_OBUF[0]_inst_i_3_n_0 ),
        .O(op_c_OBUF[0]),
        .S(\op_c_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \op_c_OBUF[0]_inst_i_2 
       (.I0(in_a_IBUF[0]),
        .I1(in_b_IBUF[0]),
        .I2(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(data0[0]),
        .O(\op_c_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \op_c_OBUF[0]_inst_i_3 
       (.I0(data5[0]),
        .I1(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[0]),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(in_b_IBUF[0]),
        .I5(in_a_IBUF[0]),
        .O(\op_c_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \op_c_OBUF[0]_inst_i_4 
       (.I0(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\op_c_OBUF[0]_inst_i_6_n_0 ),
        .I2(in_b_IBUF[0]),
        .I3(\op_c_OBUF[1]_inst_i_6_n_0 ),
        .O(data5[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \op_c_OBUF[0]_inst_i_5 
       (.I0(\op_c_OBUF[1]_inst_i_6_n_0 ),
        .I1(in_b_IBUF[0]),
        .I2(\op_c_OBUF[0]_inst_i_6_n_0 ),
        .I3(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(in_a_IBUF[7]),
        .O(data4[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op_c_OBUF[0]_inst_i_6 
       (.I0(in_a_IBUF[6]),
        .I1(in_a_IBUF[2]),
        .I2(in_b_IBUF[1]),
        .I3(in_a_IBUF[4]),
        .I4(in_b_IBUF[2]),
        .I5(in_a_IBUF[0]),
        .O(\op_c_OBUF[0]_inst_i_6_n_0 ));
  OBUF \op_c_OBUF[1]_inst 
       (.I(op_c_OBUF[1]),
        .O(op_c[1]));
  MUXF7 \op_c_OBUF[1]_inst_i_1 
       (.I0(\op_c_OBUF[1]_inst_i_2_n_0 ),
        .I1(\op_c_OBUF[1]_inst_i_3_n_0 ),
        .O(op_c_OBUF[1]),
        .S(\op_c_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \op_c_OBUF[1]_inst_i_2 
       (.I0(in_a_IBUF[1]),
        .I1(in_b_IBUF[1]),
        .I2(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(data0[1]),
        .O(\op_c_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \op_c_OBUF[1]_inst_i_3 
       (.I0(data5[1]),
        .I1(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[1]),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(in_b_IBUF[1]),
        .I5(in_a_IBUF[1]),
        .O(\op_c_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \op_c_OBUF[1]_inst_i_4 
       (.I0(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\op_c_OBUF[1]_inst_i_6_n_0 ),
        .I2(in_b_IBUF[0]),
        .I3(\op_c_OBUF[2]_inst_i_6_n_0 ),
        .O(data5[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \op_c_OBUF[1]_inst_i_5 
       (.I0(\op_c_OBUF[2]_inst_i_7_n_0 ),
        .I1(in_b_IBUF[0]),
        .I2(\op_c_OBUF[1]_inst_i_6_n_0 ),
        .I3(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(in_a_IBUF[7]),
        .O(data4[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op_c_OBUF[1]_inst_i_6 
       (.I0(in_a_IBUF[7]),
        .I1(in_a_IBUF[3]),
        .I2(in_b_IBUF[1]),
        .I3(in_a_IBUF[5]),
        .I4(in_b_IBUF[2]),
        .I5(in_a_IBUF[1]),
        .O(\op_c_OBUF[1]_inst_i_6_n_0 ));
  OBUF \op_c_OBUF[2]_inst 
       (.I(op_c_OBUF[2]),
        .O(op_c[2]));
  MUXF7 \op_c_OBUF[2]_inst_i_1 
       (.I0(\op_c_OBUF[2]_inst_i_2_n_0 ),
        .I1(\op_c_OBUF[2]_inst_i_3_n_0 ),
        .O(op_c_OBUF[2]),
        .S(\op_c_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \op_c_OBUF[2]_inst_i_2 
       (.I0(in_a_IBUF[2]),
        .I1(in_b_IBUF[2]),
        .I2(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(data0[2]),
        .O(\op_c_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \op_c_OBUF[2]_inst_i_3 
       (.I0(data5[2]),
        .I1(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[2]),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(in_b_IBUF[2]),
        .I5(in_a_IBUF[2]),
        .O(\op_c_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \op_c_OBUF[2]_inst_i_4 
       (.I0(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\op_c_OBUF[2]_inst_i_6_n_0 ),
        .I2(in_b_IBUF[0]),
        .I3(\op_c_OBUF[3]_inst_i_6_n_0 ),
        .O(data5[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \op_c_OBUF[2]_inst_i_5 
       (.I0(\op_c_OBUF[3]_inst_i_7_n_0 ),
        .I1(in_b_IBUF[0]),
        .I2(\op_c_OBUF[2]_inst_i_7_n_0 ),
        .I3(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(in_a_IBUF[7]),
        .O(data4[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \op_c_OBUF[2]_inst_i_6 
       (.I0(in_a_IBUF[4]),
        .I1(in_b_IBUF[1]),
        .I2(in_a_IBUF[6]),
        .I3(in_b_IBUF[2]),
        .I4(in_a_IBUF[2]),
        .O(\op_c_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op_c_OBUF[2]_inst_i_7 
       (.I0(in_a_IBUF[7]),
        .I1(in_a_IBUF[4]),
        .I2(in_b_IBUF[1]),
        .I3(in_a_IBUF[6]),
        .I4(in_b_IBUF[2]),
        .I5(in_a_IBUF[2]),
        .O(\op_c_OBUF[2]_inst_i_7_n_0 ));
  OBUF \op_c_OBUF[3]_inst 
       (.I(op_c_OBUF[3]),
        .O(op_c[3]));
  MUXF7 \op_c_OBUF[3]_inst_i_1 
       (.I0(\op_c_OBUF[3]_inst_i_2_n_0 ),
        .I1(\op_c_OBUF[3]_inst_i_3_n_0 ),
        .O(op_c_OBUF[3]),
        .S(\op_c_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \op_c_OBUF[3]_inst_i_2 
       (.I0(in_a_IBUF[3]),
        .I1(in_b_IBUF[3]),
        .I2(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(data0[3]),
        .O(\op_c_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \op_c_OBUF[3]_inst_i_3 
       (.I0(data5[3]),
        .I1(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[3]),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(in_b_IBUF[3]),
        .I5(in_a_IBUF[3]),
        .O(\op_c_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \op_c_OBUF[3]_inst_i_4 
       (.I0(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\op_c_OBUF[3]_inst_i_6_n_0 ),
        .I2(in_b_IBUF[0]),
        .I3(\op_c_OBUF[4]_inst_i_6_n_0 ),
        .O(data5[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \op_c_OBUF[3]_inst_i_5 
       (.I0(\op_c_OBUF[4]_inst_i_9_n_0 ),
        .I1(in_b_IBUF[0]),
        .I2(\op_c_OBUF[3]_inst_i_7_n_0 ),
        .I3(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(in_a_IBUF[7]),
        .O(data4[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \op_c_OBUF[3]_inst_i_6 
       (.I0(in_a_IBUF[5]),
        .I1(in_b_IBUF[1]),
        .I2(in_a_IBUF[7]),
        .I3(in_b_IBUF[2]),
        .I4(in_a_IBUF[3]),
        .O(\op_c_OBUF[3]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \op_c_OBUF[3]_inst_i_7 
       (.I0(in_a_IBUF[5]),
        .I1(in_b_IBUF[1]),
        .I2(in_a_IBUF[7]),
        .I3(in_b_IBUF[2]),
        .I4(in_a_IBUF[3]),
        .O(\op_c_OBUF[3]_inst_i_7_n_0 ));
  OBUF \op_c_OBUF[4]_inst 
       (.I(op_c_OBUF[4]),
        .O(op_c[4]));
  MUXF7 \op_c_OBUF[4]_inst_i_1 
       (.I0(\op_c_OBUF[4]_inst_i_2_n_0 ),
        .I1(\op_c_OBUF[4]_inst_i_3_n_0 ),
        .O(op_c_OBUF[4]),
        .S(\op_c_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \op_c_OBUF[4]_inst_i_2 
       (.I0(in_a_IBUF[4]),
        .I1(in_b_IBUF[4]),
        .I2(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(data0[4]),
        .O(\op_c_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \op_c_OBUF[4]_inst_i_3 
       (.I0(data5[4]),
        .I1(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[4]),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(in_b_IBUF[4]),
        .I5(in_a_IBUF[4]),
        .O(\op_c_OBUF[4]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \op_c_OBUF[4]_inst_i_4 
       (.I0(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\op_c_OBUF[4]_inst_i_6_n_0 ),
        .I2(in_b_IBUF[0]),
        .I3(\op_c_OBUF[4]_inst_i_7_n_0 ),
        .O(data5[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \op_c_OBUF[4]_inst_i_5 
       (.I0(\op_c_OBUF[4]_inst_i_8_n_0 ),
        .I1(in_b_IBUF[0]),
        .I2(\op_c_OBUF[4]_inst_i_9_n_0 ),
        .I3(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(in_a_IBUF[7]),
        .O(data4[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \op_c_OBUF[4]_inst_i_6 
       (.I0(in_a_IBUF[6]),
        .I1(in_b_IBUF[1]),
        .I2(in_a_IBUF[4]),
        .I3(in_b_IBUF[2]),
        .O(\op_c_OBUF[4]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \op_c_OBUF[4]_inst_i_7 
       (.I0(in_a_IBUF[7]),
        .I1(in_b_IBUF[1]),
        .I2(in_a_IBUF[5]),
        .I3(in_b_IBUF[2]),
        .O(\op_c_OBUF[4]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \op_c_OBUF[4]_inst_i_8 
       (.I0(in_b_IBUF[1]),
        .I1(in_a_IBUF[7]),
        .I2(in_b_IBUF[2]),
        .I3(in_a_IBUF[5]),
        .O(\op_c_OBUF[4]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \op_c_OBUF[4]_inst_i_9 
       (.I0(in_a_IBUF[6]),
        .I1(in_b_IBUF[1]),
        .I2(in_a_IBUF[7]),
        .I3(in_b_IBUF[2]),
        .I4(in_a_IBUF[4]),
        .O(\op_c_OBUF[4]_inst_i_9_n_0 ));
  OBUF \op_c_OBUF[5]_inst 
       (.I(op_c_OBUF[5]),
        .O(op_c[5]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \op_c_OBUF[5]_inst_i_1 
       (.I0(\op_c_OBUF[5]_inst_i_2_n_0 ),
        .I1(\op_c_OBUF[7]_inst_i_2_n_0 ),
        .I2(\op_c_OBUF[5]_inst_i_3_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I4(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I5(data0[5]),
        .O(op_c_OBUF[5]));
  MUXF7 \op_c_OBUF[5]_inst_i_2 
       (.I0(\op_c_OBUF[5]_inst_i_4_n_0 ),
        .I1(\op_c_OBUF[5]_inst_i_5_n_0 ),
        .O(\op_c_OBUF[5]_inst_i_2_n_0 ),
        .S(\op_c_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \op_c_OBUF[5]_inst_i_3 
       (.I0(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I1(in_a_IBUF[5]),
        .I2(in_b_IBUF[5]),
        .O(\op_c_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \op_c_OBUF[5]_inst_i_4 
       (.I0(\op_c_OBUF[5]_inst_i_6_n_0 ),
        .I1(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I2(in_a_IBUF[7]),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(in_b_IBUF[5]),
        .I5(in_a_IBUF[5]),
        .O(\op_c_OBUF[5]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \op_c_OBUF[5]_inst_i_5 
       (.I0(in_b_IBUF[5]),
        .I1(in_a_IBUF[5]),
        .I2(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I3(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(\op_c_OBUF[5]_inst_i_7_n_0 ),
        .O(\op_c_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \op_c_OBUF[5]_inst_i_6 
       (.I0(in_a_IBUF[6]),
        .I1(in_b_IBUF[0]),
        .I2(in_b_IBUF[1]),
        .I3(in_a_IBUF[7]),
        .I4(in_b_IBUF[2]),
        .I5(in_a_IBUF[5]),
        .O(\op_c_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \op_c_OBUF[5]_inst_i_7 
       (.I0(in_a_IBUF[6]),
        .I1(in_b_IBUF[0]),
        .I2(in_a_IBUF[7]),
        .I3(in_b_IBUF[1]),
        .I4(in_a_IBUF[5]),
        .I5(in_b_IBUF[2]),
        .O(\op_c_OBUF[5]_inst_i_7_n_0 ));
  OBUF \op_c_OBUF[6]_inst 
       (.I(op_c_OBUF[6]),
        .O(op_c[6]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \op_c_OBUF[6]_inst_i_1 
       (.I0(\op_c_OBUF[6]_inst_i_2_n_0 ),
        .I1(\op_c_OBUF[7]_inst_i_2_n_0 ),
        .I2(\op_c_OBUF[6]_inst_i_3_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I4(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I5(data0[6]),
        .O(op_c_OBUF[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \op_c_OBUF[6]_inst_i_10 
       (.I0(in_b_IBUF[7]),
        .I1(in_op_IBUF[1]),
        .I2(in_a_IBUF[7]),
        .O(\op_c_OBUF[6]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \op_c_OBUF[6]_inst_i_11 
       (.I0(in_b_IBUF[6]),
        .I1(in_op_IBUF[1]),
        .I2(in_a_IBUF[6]),
        .O(\op_c_OBUF[6]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \op_c_OBUF[6]_inst_i_12 
       (.I0(in_b_IBUF[5]),
        .I1(in_op_IBUF[1]),
        .I2(in_a_IBUF[5]),
        .O(\op_c_OBUF[6]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \op_c_OBUF[6]_inst_i_13 
       (.I0(in_b_IBUF[4]),
        .I1(in_op_IBUF[1]),
        .I2(in_a_IBUF[4]),
        .O(\op_c_OBUF[6]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \op_c_OBUF[6]_inst_i_14 
       (.I0(in_b_IBUF[0]),
        .I1(in_b_IBUF[1]),
        .I2(in_a_IBUF[7]),
        .I3(in_b_IBUF[2]),
        .I4(in_a_IBUF[6]),
        .O(\op_c_OBUF[6]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \op_c_OBUF[6]_inst_i_15 
       (.I0(in_a_IBUF[7]),
        .I1(in_b_IBUF[0]),
        .I2(in_b_IBUF[2]),
        .I3(in_a_IBUF[6]),
        .I4(in_b_IBUF[1]),
        .O(\op_c_OBUF[6]_inst_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \op_c_OBUF[6]_inst_i_16 
       (.I0(in_b_IBUF[3]),
        .I1(in_op_IBUF[1]),
        .I2(in_a_IBUF[3]),
        .O(\op_c_OBUF[6]_inst_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \op_c_OBUF[6]_inst_i_17 
       (.I0(in_b_IBUF[2]),
        .I1(in_op_IBUF[1]),
        .I2(in_a_IBUF[2]),
        .O(\op_c_OBUF[6]_inst_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \op_c_OBUF[6]_inst_i_18 
       (.I0(in_b_IBUF[1]),
        .I1(in_op_IBUF[1]),
        .I2(in_a_IBUF[1]),
        .O(\op_c_OBUF[6]_inst_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \op_c_OBUF[6]_inst_i_19 
       (.I0(in_b_IBUF[0]),
        .O(\op_c_OBUF[6]_inst_i_19_n_0 ));
  MUXF7 \op_c_OBUF[6]_inst_i_2 
       (.I0(\op_c_OBUF[6]_inst_i_7_n_0 ),
        .I1(\op_c_OBUF[6]_inst_i_8_n_0 ),
        .O(\op_c_OBUF[6]_inst_i_2_n_0 ),
        .S(\op_c_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \op_c_OBUF[6]_inst_i_3 
       (.I0(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I1(in_a_IBUF[6]),
        .I2(in_b_IBUF[6]),
        .O(\op_c_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008818)) 
    \op_c_OBUF[6]_inst_i_4 
       (.I0(in_op_IBUF[5]),
        .I1(in_op_IBUF[2]),
        .I2(in_op_IBUF[1]),
        .I3(in_op_IBUF[0]),
        .I4(in_op_IBUF[4]),
        .I5(in_op_IBUF[3]),
        .O(\op_c_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009484)) 
    \op_c_OBUF[6]_inst_i_5 
       (.I0(in_op_IBUF[2]),
        .I1(in_op_IBUF[5]),
        .I2(in_op_IBUF[0]),
        .I3(in_op_IBUF[1]),
        .I4(in_op_IBUF[4]),
        .I5(in_op_IBUF[3]),
        .O(\op_c_OBUF[6]_inst_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \op_c_OBUF[6]_inst_i_6 
       (.CI(\op_c_OBUF[6]_inst_i_9_n_0 ),
        .CO({\NLW_op_c_OBUF[6]_inst_i_6_CO_UNCONNECTED [3],\op_c_OBUF[6]_inst_i_6_n_1 ,\op_c_OBUF[6]_inst_i_6_n_2 ,\op_c_OBUF[6]_inst_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in_a_IBUF[6:4]}),
        .O(data0[7:4]),
        .S({\op_c_OBUF[6]_inst_i_10_n_0 ,\op_c_OBUF[6]_inst_i_11_n_0 ,\op_c_OBUF[6]_inst_i_12_n_0 ,\op_c_OBUF[6]_inst_i_13_n_0 }));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \op_c_OBUF[6]_inst_i_7 
       (.I0(\op_c_OBUF[6]_inst_i_14_n_0 ),
        .I1(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I2(in_a_IBUF[7]),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(in_b_IBUF[6]),
        .I5(in_a_IBUF[6]),
        .O(\op_c_OBUF[6]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \op_c_OBUF[6]_inst_i_8 
       (.I0(in_b_IBUF[6]),
        .I1(in_a_IBUF[6]),
        .I2(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I3(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(\op_c_OBUF[6]_inst_i_15_n_0 ),
        .O(\op_c_OBUF[6]_inst_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \op_c_OBUF[6]_inst_i_9 
       (.CI(1'b0),
        .CO({\op_c_OBUF[6]_inst_i_9_n_0 ,\op_c_OBUF[6]_inst_i_9_n_1 ,\op_c_OBUF[6]_inst_i_9_n_2 ,\op_c_OBUF[6]_inst_i_9_n_3 }),
        .CYINIT(in_a_IBUF[0]),
        .DI({in_a_IBUF[3:1],in_op_IBUF[1]}),
        .O(data0[3:0]),
        .S({\op_c_OBUF[6]_inst_i_16_n_0 ,\op_c_OBUF[6]_inst_i_17_n_0 ,\op_c_OBUF[6]_inst_i_18_n_0 ,\op_c_OBUF[6]_inst_i_19_n_0 }));
  OBUF \op_c_OBUF[7]_inst 
       (.I(op_c_OBUF[7]),
        .O(op_c[7]));
  MUXF7 \op_c_OBUF[7]_inst_i_1 
       (.I0(\op_c_OBUF[7]_inst_i_3_n_0 ),
        .I1(\op_c_OBUF[7]_inst_i_4_n_0 ),
        .O(op_c_OBUF[7]),
        .S(\op_c_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10000010)) 
    \op_c_OBUF[7]_inst_i_2 
       (.I0(in_op_IBUF[4]),
        .I1(in_op_IBUF[3]),
        .I2(in_op_IBUF[1]),
        .I3(in_op_IBUF[2]),
        .I4(in_op_IBUF[5]),
        .O(\op_c_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \op_c_OBUF[7]_inst_i_3 
       (.I0(in_a_IBUF[7]),
        .I1(in_b_IBUF[7]),
        .I2(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(data0[7]),
        .O(\op_c_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F800F8F008FF080)) 
    \op_c_OBUF[7]_inst_i_4 
       (.I0(\op_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\op_c_OBUF[7]_inst_i_6_n_0 ),
        .I2(\op_c_OBUF[6]_inst_i_4_n_0 ),
        .I3(\op_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(in_b_IBUF[7]),
        .I5(in_a_IBUF[7]),
        .O(\op_c_OBUF[7]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \op_c_OBUF[7]_inst_i_5 
       (.I0(in_b_IBUF[7]),
        .I1(in_b_IBUF[4]),
        .I2(in_b_IBUF[3]),
        .I3(in_b_IBUF[6]),
        .I4(in_b_IBUF[5]),
        .O(\op_c_OBUF[7]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \op_c_OBUF[7]_inst_i_6 
       (.I0(in_b_IBUF[1]),
        .I1(in_a_IBUF[7]),
        .I2(in_b_IBUF[2]),
        .I3(in_b_IBUF[0]),
        .O(\op_c_OBUF[7]_inst_i_6_n_0 ));
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
