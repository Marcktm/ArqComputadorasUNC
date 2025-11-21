// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec 16 19:06:27 2021
// Host        : DESKTOP-4OFK9E8 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {G:/My
//               Drive/Facultad/Materias/Arquitectura/Practico/TPs/1/tp_1/tp_1.sim/sim_1/synth/timing/xsim/tb_auto_top_alu_time_synth.v}
// Design      : top_alu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module alu
   (out_c_OBUF,
    reg_a,
    \0 ,
    reg_b,
    \out_c[0] ,
    \out_c[0]_0 ,
    \out_c[1] ,
    \out_c[2] ,
    \out_c[3] ,
    \out_c[4] ,
    \out_c[5] ,
    \out_c[5]_0 ,
    \out_c[5]_1 ,
    \out_c[5]_2 ,
    \out_c[6] ,
    \out_c[6]_0 ,
    \out_c[7] );
  output [7:0]out_c_OBUF;
  input [7:0]reg_a;
  input \0 ;
  input [7:0]reg_b;
  input \out_c[0] ;
  input \out_c[0]_0 ;
  input \out_c[1] ;
  input \out_c[2] ;
  input \out_c[3] ;
  input \out_c[4] ;
  input \out_c[5] ;
  input \out_c[5]_0 ;
  input \out_c[5]_1 ;
  input \out_c[5]_2 ;
  input \out_c[6] ;
  input \out_c[6]_0 ;
  input \out_c[7] ;

  wire \0 ;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire [7:0]data0;
  wire \out_c[0] ;
  wire \out_c[0]_0 ;
  wire \out_c[1] ;
  wire \out_c[2] ;
  wire \out_c[3] ;
  wire \out_c[4] ;
  wire \out_c[5] ;
  wire \out_c[5]_0 ;
  wire \out_c[5]_1 ;
  wire \out_c[5]_2 ;
  wire \out_c[6] ;
  wire \out_c[6]_0 ;
  wire \out_c[7] ;
  wire [7:0]out_c_OBUF;
  wire \out_c_OBUF[0]_inst_i_2_n_0 ;
  wire \out_c_OBUF[1]_inst_i_2_n_0 ;
  wire \out_c_OBUF[2]_inst_i_2_n_0 ;
  wire \out_c_OBUF[3]_inst_i_2_n_0 ;
  wire \out_c_OBUF[4]_inst_i_2_n_0 ;
  wire \out_c_OBUF[7]_inst_i_3_n_0 ;
  wire [7:0]reg_a;
  wire [7:0]reg_b;
  wire [3:3]NLW__carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(reg_a[0]),
        .DI({reg_a[3:1],\0 }),
        .O(data0[3:0]),
        .S({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({NLW__carry__0_CO_UNCONNECTED[3],_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,reg_a[6:4]}),
        .O(data0[7:4]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_1
       (.I0(reg_b[7]),
        .I1(\0 ),
        .I2(reg_a[7]),
        .O(_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_2
       (.I0(reg_b[6]),
        .I1(\0 ),
        .I2(reg_a[6]),
        .O(_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_3
       (.I0(reg_b[5]),
        .I1(\0 ),
        .I2(reg_a[5]),
        .O(_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_4
       (.I0(reg_b[4]),
        .I1(\0 ),
        .I2(reg_a[4]),
        .O(_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_1
       (.I0(reg_b[3]),
        .I1(\0 ),
        .I2(reg_a[3]),
        .O(_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_2
       (.I0(reg_b[2]),
        .I1(\0 ),
        .I2(reg_a[2]),
        .O(_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_3
       (.I0(reg_b[1]),
        .I1(\0 ),
        .I2(reg_a[1]),
        .O(_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    _carry_i_4
       (.I0(reg_b[0]),
        .O(_carry_i_4_n_0));
  MUXF7 \out_c_OBUF[0]_inst_i_1 
       (.I0(\out_c_OBUF[0]_inst_i_2_n_0 ),
        .I1(\out_c[0]_0 ),
        .O(out_c_OBUF[0]),
        .S(\out_c[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \out_c_OBUF[0]_inst_i_2 
       (.I0(reg_a[0]),
        .I1(reg_b[0]),
        .I2(\out_c[5]_1 ),
        .I3(\out_c[5]_2 ),
        .I4(data0[0]),
        .O(\out_c_OBUF[0]_inst_i_2_n_0 ));
  MUXF7 \out_c_OBUF[1]_inst_i_1 
       (.I0(\out_c_OBUF[1]_inst_i_2_n_0 ),
        .I1(\out_c[1] ),
        .O(out_c_OBUF[1]),
        .S(\out_c[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \out_c_OBUF[1]_inst_i_2 
       (.I0(reg_a[1]),
        .I1(reg_b[1]),
        .I2(\out_c[5]_1 ),
        .I3(\out_c[5]_2 ),
        .I4(data0[1]),
        .O(\out_c_OBUF[1]_inst_i_2_n_0 ));
  MUXF7 \out_c_OBUF[2]_inst_i_1 
       (.I0(\out_c_OBUF[2]_inst_i_2_n_0 ),
        .I1(\out_c[2] ),
        .O(out_c_OBUF[2]),
        .S(\out_c[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \out_c_OBUF[2]_inst_i_2 
       (.I0(reg_a[2]),
        .I1(reg_b[2]),
        .I2(\out_c[5]_1 ),
        .I3(\out_c[5]_2 ),
        .I4(data0[2]),
        .O(\out_c_OBUF[2]_inst_i_2_n_0 ));
  MUXF7 \out_c_OBUF[3]_inst_i_1 
       (.I0(\out_c_OBUF[3]_inst_i_2_n_0 ),
        .I1(\out_c[3] ),
        .O(out_c_OBUF[3]),
        .S(\out_c[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \out_c_OBUF[3]_inst_i_2 
       (.I0(reg_a[3]),
        .I1(reg_b[3]),
        .I2(\out_c[5]_1 ),
        .I3(\out_c[5]_2 ),
        .I4(data0[3]),
        .O(\out_c_OBUF[3]_inst_i_2_n_0 ));
  MUXF7 \out_c_OBUF[4]_inst_i_1 
       (.I0(\out_c_OBUF[4]_inst_i_2_n_0 ),
        .I1(\out_c[4] ),
        .O(out_c_OBUF[4]),
        .S(\out_c[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \out_c_OBUF[4]_inst_i_2 
       (.I0(reg_a[4]),
        .I1(reg_b[4]),
        .I2(\out_c[5]_1 ),
        .I3(\out_c[5]_2 ),
        .I4(data0[4]),
        .O(\out_c_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \out_c_OBUF[5]_inst_i_1 
       (.I0(\out_c[5] ),
        .I1(\out_c[0] ),
        .I2(\out_c[5]_0 ),
        .I3(\out_c[5]_1 ),
        .I4(\out_c[5]_2 ),
        .I5(data0[5]),
        .O(out_c_OBUF[5]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \out_c_OBUF[6]_inst_i_1 
       (.I0(\out_c[6] ),
        .I1(\out_c[0] ),
        .I2(\out_c[6]_0 ),
        .I3(\out_c[5]_1 ),
        .I4(\out_c[5]_2 ),
        .I5(data0[6]),
        .O(out_c_OBUF[6]));
  MUXF7 \out_c_OBUF[7]_inst_i_1 
       (.I0(\out_c_OBUF[7]_inst_i_3_n_0 ),
        .I1(\out_c[7] ),
        .O(out_c_OBUF[7]),
        .S(\out_c[0] ));
  LUT5 #(
    .INIT(32'hEF80E080)) 
    \out_c_OBUF[7]_inst_i_3 
       (.I0(reg_a[7]),
        .I1(reg_b[7]),
        .I2(\out_c[5]_1 ),
        .I3(\out_c[5]_2 ),
        .I4(data0[7]),
        .O(\out_c_OBUF[7]_inst_i_3_n_0 ));
endmodule

(* N_BITS = "8" *) (* OP_BITS = "6" *) 
(* NotValidForBitStream *)
module top_alu
   (in_data,
    sel_A,
    sel_B,
    sel_OP,
    i_clock,
    i_reset,
    out_c);
  input [7:0]in_data;
  input sel_A;
  input sel_B;
  input sel_OP;
  input i_clock;
  input i_reset;
  output [7:0]out_c;

  wire \0 ;
  wire [4:0]data4;
  wire [4:0]data5;
  wire i_clock;
  wire i_clock_IBUF;
  wire i_clock_IBUF_BUFG;
  wire i_reset;
  wire i_reset_IBUF;
  wire [7:0]in_data;
  wire [7:0]in_data_IBUF;
  wire [7:0]out_c;
  wire [7:0]out_c_OBUF;
  wire \out_c_OBUF[0]_inst_i_3_n_0 ;
  wire \out_c_OBUF[0]_inst_i_6_n_0 ;
  wire \out_c_OBUF[1]_inst_i_3_n_0 ;
  wire \out_c_OBUF[1]_inst_i_6_n_0 ;
  wire \out_c_OBUF[2]_inst_i_3_n_0 ;
  wire \out_c_OBUF[2]_inst_i_6_n_0 ;
  wire \out_c_OBUF[2]_inst_i_7_n_0 ;
  wire \out_c_OBUF[3]_inst_i_3_n_0 ;
  wire \out_c_OBUF[3]_inst_i_6_n_0 ;
  wire \out_c_OBUF[3]_inst_i_7_n_0 ;
  wire \out_c_OBUF[4]_inst_i_3_n_0 ;
  wire \out_c_OBUF[4]_inst_i_6_n_0 ;
  wire \out_c_OBUF[4]_inst_i_7_n_0 ;
  wire \out_c_OBUF[4]_inst_i_8_n_0 ;
  wire \out_c_OBUF[4]_inst_i_9_n_0 ;
  wire \out_c_OBUF[5]_inst_i_2_n_0 ;
  wire \out_c_OBUF[5]_inst_i_3_n_0 ;
  wire \out_c_OBUF[5]_inst_i_4_n_0 ;
  wire \out_c_OBUF[5]_inst_i_5_n_0 ;
  wire \out_c_OBUF[5]_inst_i_6_n_0 ;
  wire \out_c_OBUF[5]_inst_i_7_n_0 ;
  wire \out_c_OBUF[6]_inst_i_2_n_0 ;
  wire \out_c_OBUF[6]_inst_i_3_n_0 ;
  wire \out_c_OBUF[6]_inst_i_4_n_0 ;
  wire \out_c_OBUF[6]_inst_i_5_n_0 ;
  wire \out_c_OBUF[6]_inst_i_6_n_0 ;
  wire \out_c_OBUF[6]_inst_i_7_n_0 ;
  wire \out_c_OBUF[6]_inst_i_8_n_0 ;
  wire \out_c_OBUF[6]_inst_i_9_n_0 ;
  wire \out_c_OBUF[7]_inst_i_2_n_0 ;
  wire \out_c_OBUF[7]_inst_i_4_n_0 ;
  wire \out_c_OBUF[7]_inst_i_5_n_0 ;
  wire \out_c_OBUF[7]_inst_i_6_n_0 ;
  wire [7:0]reg_a;
  wire \reg_a[7]_i_1_n_0 ;
  wire \reg_a[7]_i_2_n_0 ;
  wire [7:0]reg_b;
  wire \reg_b[7]_i_1_n_0 ;
  wire \reg_b[7]_i_2_n_0 ;
  wire \reg_op[5]_i_1_n_0 ;
  wire \reg_op[5]_i_2_n_0 ;
  wire \reg_op_reg_n_0_[0] ;
  wire \reg_op_reg_n_0_[2] ;
  wire \reg_op_reg_n_0_[3] ;
  wire \reg_op_reg_n_0_[4] ;
  wire \reg_op_reg_n_0_[5] ;
  wire sel_A;
  wire sel_A_IBUF;
  wire sel_B;
  wire sel_B_IBUF;
  wire sel_OP;
  wire sel_OP_IBUF;

initial begin
 $sdf_annotate("tb_auto_top_alu_time_synth.sdf",,,,"tool_control");
end
  BUFG i_clock_IBUF_BUFG_inst
       (.I(i_clock_IBUF),
        .O(i_clock_IBUF_BUFG));
  IBUF i_clock_IBUF_inst
       (.I(i_clock),
        .O(i_clock_IBUF));
  IBUF i_reset_IBUF_inst
       (.I(i_reset),
        .O(i_reset_IBUF));
  IBUF \in_data_IBUF[0]_inst 
       (.I(in_data[0]),
        .O(in_data_IBUF[0]));
  IBUF \in_data_IBUF[1]_inst 
       (.I(in_data[1]),
        .O(in_data_IBUF[1]));
  IBUF \in_data_IBUF[2]_inst 
       (.I(in_data[2]),
        .O(in_data_IBUF[2]));
  IBUF \in_data_IBUF[3]_inst 
       (.I(in_data[3]),
        .O(in_data_IBUF[3]));
  IBUF \in_data_IBUF[4]_inst 
       (.I(in_data[4]),
        .O(in_data_IBUF[4]));
  IBUF \in_data_IBUF[5]_inst 
       (.I(in_data[5]),
        .O(in_data_IBUF[5]));
  IBUF \in_data_IBUF[6]_inst 
       (.I(in_data[6]),
        .O(in_data_IBUF[6]));
  IBUF \in_data_IBUF[7]_inst 
       (.I(in_data[7]),
        .O(in_data_IBUF[7]));
  alu my_alu
       (.\0 (\0 ),
        .\out_c[0] (\out_c_OBUF[7]_inst_i_2_n_0 ),
        .\out_c[0]_0 (\out_c_OBUF[0]_inst_i_3_n_0 ),
        .\out_c[1] (\out_c_OBUF[1]_inst_i_3_n_0 ),
        .\out_c[2] (\out_c_OBUF[2]_inst_i_3_n_0 ),
        .\out_c[3] (\out_c_OBUF[3]_inst_i_3_n_0 ),
        .\out_c[4] (\out_c_OBUF[4]_inst_i_3_n_0 ),
        .\out_c[5] (\out_c_OBUF[5]_inst_i_2_n_0 ),
        .\out_c[5]_0 (\out_c_OBUF[5]_inst_i_3_n_0 ),
        .\out_c[5]_1 (\out_c_OBUF[6]_inst_i_4_n_0 ),
        .\out_c[5]_2 (\out_c_OBUF[6]_inst_i_5_n_0 ),
        .\out_c[6] (\out_c_OBUF[6]_inst_i_2_n_0 ),
        .\out_c[6]_0 (\out_c_OBUF[6]_inst_i_3_n_0 ),
        .\out_c[7] (\out_c_OBUF[7]_inst_i_4_n_0 ),
        .out_c_OBUF(out_c_OBUF),
        .reg_a(reg_a),
        .reg_b(reg_b));
  OBUF \out_c_OBUF[0]_inst 
       (.I(out_c_OBUF[0]),
        .O(out_c[0]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \out_c_OBUF[0]_inst_i_3 
       (.I0(data5[0]),
        .I1(\out_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[0]),
        .I3(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(reg_b[0]),
        .I5(reg_a[0]),
        .O(\out_c_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out_c_OBUF[0]_inst_i_4 
       (.I0(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[0]_inst_i_6_n_0 ),
        .I2(reg_b[0]),
        .I3(\out_c_OBUF[1]_inst_i_6_n_0 ),
        .O(data5[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_c_OBUF[0]_inst_i_5 
       (.I0(\out_c_OBUF[1]_inst_i_6_n_0 ),
        .I1(reg_b[0]),
        .I2(\out_c_OBUF[0]_inst_i_6_n_0 ),
        .I3(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(reg_a[7]),
        .O(data4[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_c_OBUF[0]_inst_i_6 
       (.I0(reg_a[6]),
        .I1(reg_a[2]),
        .I2(reg_b[1]),
        .I3(reg_a[4]),
        .I4(reg_b[2]),
        .I5(reg_a[0]),
        .O(\out_c_OBUF[0]_inst_i_6_n_0 ));
  OBUF \out_c_OBUF[1]_inst 
       (.I(out_c_OBUF[1]),
        .O(out_c[1]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \out_c_OBUF[1]_inst_i_3 
       (.I0(data5[1]),
        .I1(\out_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[1]),
        .I3(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(reg_b[1]),
        .I5(reg_a[1]),
        .O(\out_c_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out_c_OBUF[1]_inst_i_4 
       (.I0(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[1]_inst_i_6_n_0 ),
        .I2(reg_b[0]),
        .I3(\out_c_OBUF[2]_inst_i_6_n_0 ),
        .O(data5[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_c_OBUF[1]_inst_i_5 
       (.I0(\out_c_OBUF[2]_inst_i_7_n_0 ),
        .I1(reg_b[0]),
        .I2(\out_c_OBUF[1]_inst_i_6_n_0 ),
        .I3(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(reg_a[7]),
        .O(data4[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_c_OBUF[1]_inst_i_6 
       (.I0(reg_a[7]),
        .I1(reg_a[3]),
        .I2(reg_b[1]),
        .I3(reg_a[5]),
        .I4(reg_b[2]),
        .I5(reg_a[1]),
        .O(\out_c_OBUF[1]_inst_i_6_n_0 ));
  OBUF \out_c_OBUF[2]_inst 
       (.I(out_c_OBUF[2]),
        .O(out_c[2]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \out_c_OBUF[2]_inst_i_3 
       (.I0(data5[2]),
        .I1(\out_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[2]),
        .I3(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(reg_b[2]),
        .I5(reg_a[2]),
        .O(\out_c_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out_c_OBUF[2]_inst_i_4 
       (.I0(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[2]_inst_i_6_n_0 ),
        .I2(reg_b[0]),
        .I3(\out_c_OBUF[3]_inst_i_6_n_0 ),
        .O(data5[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_c_OBUF[2]_inst_i_5 
       (.I0(\out_c_OBUF[3]_inst_i_7_n_0 ),
        .I1(reg_b[0]),
        .I2(\out_c_OBUF[2]_inst_i_7_n_0 ),
        .I3(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(reg_a[7]),
        .O(data4[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_c_OBUF[2]_inst_i_6 
       (.I0(reg_a[4]),
        .I1(reg_b[1]),
        .I2(reg_a[6]),
        .I3(reg_b[2]),
        .I4(reg_a[2]),
        .O(\out_c_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_c_OBUF[2]_inst_i_7 
       (.I0(reg_a[7]),
        .I1(reg_a[4]),
        .I2(reg_b[1]),
        .I3(reg_a[6]),
        .I4(reg_b[2]),
        .I5(reg_a[2]),
        .O(\out_c_OBUF[2]_inst_i_7_n_0 ));
  OBUF \out_c_OBUF[3]_inst 
       (.I(out_c_OBUF[3]),
        .O(out_c[3]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \out_c_OBUF[3]_inst_i_3 
       (.I0(data5[3]),
        .I1(\out_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[3]),
        .I3(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(reg_b[3]),
        .I5(reg_a[3]),
        .O(\out_c_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out_c_OBUF[3]_inst_i_4 
       (.I0(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[3]_inst_i_6_n_0 ),
        .I2(reg_b[0]),
        .I3(\out_c_OBUF[4]_inst_i_6_n_0 ),
        .O(data5[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_c_OBUF[3]_inst_i_5 
       (.I0(\out_c_OBUF[4]_inst_i_9_n_0 ),
        .I1(reg_b[0]),
        .I2(\out_c_OBUF[3]_inst_i_7_n_0 ),
        .I3(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(reg_a[7]),
        .O(data4[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_c_OBUF[3]_inst_i_6 
       (.I0(reg_a[5]),
        .I1(reg_b[1]),
        .I2(reg_a[7]),
        .I3(reg_b[2]),
        .I4(reg_a[3]),
        .O(\out_c_OBUF[3]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \out_c_OBUF[3]_inst_i_7 
       (.I0(reg_a[5]),
        .I1(reg_b[1]),
        .I2(reg_a[7]),
        .I3(reg_b[2]),
        .I4(reg_a[3]),
        .O(\out_c_OBUF[3]_inst_i_7_n_0 ));
  OBUF \out_c_OBUF[4]_inst 
       (.I(out_c_OBUF[4]),
        .O(out_c[4]));
  LUT6 #(
    .INIT(64'h308830BB30BBFC88)) 
    \out_c_OBUF[4]_inst_i_3 
       (.I0(data5[4]),
        .I1(\out_c_OBUF[6]_inst_i_4_n_0 ),
        .I2(data4[4]),
        .I3(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(reg_b[4]),
        .I5(reg_a[4]),
        .O(\out_c_OBUF[4]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out_c_OBUF[4]_inst_i_4 
       (.I0(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[4]_inst_i_6_n_0 ),
        .I2(reg_b[0]),
        .I3(\out_c_OBUF[4]_inst_i_7_n_0 ),
        .O(data5[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_c_OBUF[4]_inst_i_5 
       (.I0(\out_c_OBUF[4]_inst_i_8_n_0 ),
        .I1(reg_b[0]),
        .I2(\out_c_OBUF[4]_inst_i_9_n_0 ),
        .I3(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(reg_a[7]),
        .O(data4[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_c_OBUF[4]_inst_i_6 
       (.I0(reg_a[6]),
        .I1(reg_b[1]),
        .I2(reg_a[4]),
        .I3(reg_b[2]),
        .O(\out_c_OBUF[4]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_c_OBUF[4]_inst_i_7 
       (.I0(reg_a[7]),
        .I1(reg_b[1]),
        .I2(reg_a[5]),
        .I3(reg_b[2]),
        .O(\out_c_OBUF[4]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \out_c_OBUF[4]_inst_i_8 
       (.I0(reg_b[1]),
        .I1(reg_a[7]),
        .I2(reg_b[2]),
        .I3(reg_a[5]),
        .O(\out_c_OBUF[4]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \out_c_OBUF[4]_inst_i_9 
       (.I0(reg_a[6]),
        .I1(reg_b[1]),
        .I2(reg_a[7]),
        .I3(reg_b[2]),
        .I4(reg_a[4]),
        .O(\out_c_OBUF[4]_inst_i_9_n_0 ));
  OBUF \out_c_OBUF[5]_inst 
       (.I(out_c_OBUF[5]),
        .O(out_c[5]));
  MUXF7 \out_c_OBUF[5]_inst_i_2 
       (.I0(\out_c_OBUF[5]_inst_i_4_n_0 ),
        .I1(\out_c_OBUF[5]_inst_i_5_n_0 ),
        .O(\out_c_OBUF[5]_inst_i_2_n_0 ),
        .S(\out_c_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_c_OBUF[5]_inst_i_3 
       (.I0(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I1(reg_a[5]),
        .I2(reg_b[5]),
        .O(\out_c_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_c_OBUF[5]_inst_i_4 
       (.I0(\out_c_OBUF[5]_inst_i_6_n_0 ),
        .I1(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I2(reg_a[7]),
        .I3(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(reg_b[5]),
        .I5(reg_a[5]),
        .O(\out_c_OBUF[5]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \out_c_OBUF[5]_inst_i_5 
       (.I0(reg_b[5]),
        .I1(reg_a[5]),
        .I2(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I3(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(\out_c_OBUF[5]_inst_i_7_n_0 ),
        .O(\out_c_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \out_c_OBUF[5]_inst_i_6 
       (.I0(reg_a[6]),
        .I1(reg_b[0]),
        .I2(reg_b[1]),
        .I3(reg_a[7]),
        .I4(reg_b[2]),
        .I5(reg_a[5]),
        .O(\out_c_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_c_OBUF[5]_inst_i_7 
       (.I0(reg_a[6]),
        .I1(reg_b[0]),
        .I2(reg_a[7]),
        .I3(reg_b[1]),
        .I4(reg_a[5]),
        .I5(reg_b[2]),
        .O(\out_c_OBUF[5]_inst_i_7_n_0 ));
  OBUF \out_c_OBUF[6]_inst 
       (.I(out_c_OBUF[6]),
        .O(out_c[6]));
  MUXF7 \out_c_OBUF[6]_inst_i_2 
       (.I0(\out_c_OBUF[6]_inst_i_6_n_0 ),
        .I1(\out_c_OBUF[6]_inst_i_7_n_0 ),
        .O(\out_c_OBUF[6]_inst_i_2_n_0 ),
        .S(\out_c_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \out_c_OBUF[6]_inst_i_3 
       (.I0(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I1(reg_a[6]),
        .I2(reg_b[6]),
        .O(\out_c_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008818)) 
    \out_c_OBUF[6]_inst_i_4 
       (.I0(\reg_op_reg_n_0_[5] ),
        .I1(\reg_op_reg_n_0_[2] ),
        .I2(\0 ),
        .I3(\reg_op_reg_n_0_[0] ),
        .I4(\reg_op_reg_n_0_[4] ),
        .I5(\reg_op_reg_n_0_[3] ),
        .O(\out_c_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009484)) 
    \out_c_OBUF[6]_inst_i_5 
       (.I0(\reg_op_reg_n_0_[2] ),
        .I1(\reg_op_reg_n_0_[5] ),
        .I2(\reg_op_reg_n_0_[0] ),
        .I3(\0 ),
        .I4(\reg_op_reg_n_0_[4] ),
        .I5(\reg_op_reg_n_0_[3] ),
        .O(\out_c_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_c_OBUF[6]_inst_i_6 
       (.I0(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .I1(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I2(reg_a[7]),
        .I3(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(reg_b[6]),
        .I5(reg_a[6]),
        .O(\out_c_OBUF[6]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h1F101010)) 
    \out_c_OBUF[6]_inst_i_7 
       (.I0(reg_b[6]),
        .I1(reg_a[6]),
        .I2(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I3(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(\out_c_OBUF[6]_inst_i_9_n_0 ),
        .O(\out_c_OBUF[6]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \out_c_OBUF[6]_inst_i_8 
       (.I0(reg_b[0]),
        .I1(reg_b[1]),
        .I2(reg_a[7]),
        .I3(reg_b[2]),
        .I4(reg_a[6]),
        .O(\out_c_OBUF[6]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_c_OBUF[6]_inst_i_9 
       (.I0(reg_a[7]),
        .I1(reg_b[0]),
        .I2(reg_b[2]),
        .I3(reg_a[6]),
        .I4(reg_b[1]),
        .O(\out_c_OBUF[6]_inst_i_9_n_0 ));
  OBUF \out_c_OBUF[7]_inst 
       (.I(out_c_OBUF[7]),
        .O(out_c[7]));
  LUT5 #(
    .INIT(32'h10000010)) 
    \out_c_OBUF[7]_inst_i_2 
       (.I0(\reg_op_reg_n_0_[4] ),
        .I1(\reg_op_reg_n_0_[3] ),
        .I2(\0 ),
        .I3(\reg_op_reg_n_0_[2] ),
        .I4(\reg_op_reg_n_0_[5] ),
        .O(\out_c_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F800F8F008FF080)) 
    \out_c_OBUF[7]_inst_i_4 
       (.I0(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[7]_inst_i_6_n_0 ),
        .I2(\out_c_OBUF[6]_inst_i_4_n_0 ),
        .I3(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I4(reg_b[7]),
        .I5(reg_a[7]),
        .O(\out_c_OBUF[7]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \out_c_OBUF[7]_inst_i_5 
       (.I0(reg_b[7]),
        .I1(reg_b[4]),
        .I2(reg_b[3]),
        .I3(reg_b[6]),
        .I4(reg_b[5]),
        .O(\out_c_OBUF[7]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \out_c_OBUF[7]_inst_i_6 
       (.I0(reg_b[1]),
        .I1(reg_a[7]),
        .I2(reg_b[2]),
        .I3(reg_b[0]),
        .O(\out_c_OBUF[7]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_a[7]_i_1 
       (.I0(i_reset_IBUF),
        .I1(sel_A_IBUF),
        .O(\reg_a[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_a[7]_i_2 
       (.I0(i_reset_IBUF),
        .I1(sel_A_IBUF),
        .O(\reg_a[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[0] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_a[7]_i_2_n_0 ),
        .D(in_data_IBUF[0]),
        .Q(reg_a[0]),
        .R(\reg_a[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[1] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_a[7]_i_2_n_0 ),
        .D(in_data_IBUF[1]),
        .Q(reg_a[1]),
        .R(\reg_a[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[2] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_a[7]_i_2_n_0 ),
        .D(in_data_IBUF[2]),
        .Q(reg_a[2]),
        .R(\reg_a[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[3] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_a[7]_i_2_n_0 ),
        .D(in_data_IBUF[3]),
        .Q(reg_a[3]),
        .R(\reg_a[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[4] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_a[7]_i_2_n_0 ),
        .D(in_data_IBUF[4]),
        .Q(reg_a[4]),
        .R(\reg_a[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[5] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_a[7]_i_2_n_0 ),
        .D(in_data_IBUF[5]),
        .Q(reg_a[5]),
        .R(\reg_a[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[6] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_a[7]_i_2_n_0 ),
        .D(in_data_IBUF[6]),
        .Q(reg_a[6]),
        .R(\reg_a[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_a_reg[7] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_a[7]_i_2_n_0 ),
        .D(in_data_IBUF[7]),
        .Q(reg_a[7]),
        .R(\reg_a[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_b[7]_i_1 
       (.I0(i_reset_IBUF),
        .I1(sel_B_IBUF),
        .O(\reg_b[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_b[7]_i_2 
       (.I0(i_reset_IBUF),
        .I1(sel_B_IBUF),
        .O(\reg_b[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[0] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_b[7]_i_2_n_0 ),
        .D(in_data_IBUF[0]),
        .Q(reg_b[0]),
        .R(\reg_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[1] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_b[7]_i_2_n_0 ),
        .D(in_data_IBUF[1]),
        .Q(reg_b[1]),
        .R(\reg_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[2] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_b[7]_i_2_n_0 ),
        .D(in_data_IBUF[2]),
        .Q(reg_b[2]),
        .R(\reg_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[3] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_b[7]_i_2_n_0 ),
        .D(in_data_IBUF[3]),
        .Q(reg_b[3]),
        .R(\reg_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[4] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_b[7]_i_2_n_0 ),
        .D(in_data_IBUF[4]),
        .Q(reg_b[4]),
        .R(\reg_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[5] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_b[7]_i_2_n_0 ),
        .D(in_data_IBUF[5]),
        .Q(reg_b[5]),
        .R(\reg_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[6] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_b[7]_i_2_n_0 ),
        .D(in_data_IBUF[6]),
        .Q(reg_b[6]),
        .R(\reg_b[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_b_reg[7] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_b[7]_i_2_n_0 ),
        .D(in_data_IBUF[7]),
        .Q(reg_b[7]),
        .R(\reg_b[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_op[5]_i_1 
       (.I0(i_reset_IBUF),
        .I1(sel_OP_IBUF),
        .O(\reg_op[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_op[5]_i_2 
       (.I0(i_reset_IBUF),
        .I1(sel_OP_IBUF),
        .O(\reg_op[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[0] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[0]),
        .Q(\reg_op_reg_n_0_[0] ),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[1] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[1]),
        .Q(\0 ),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[2] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[2]),
        .Q(\reg_op_reg_n_0_[2] ),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[3] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[3]),
        .Q(\reg_op_reg_n_0_[3] ),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[4] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[4]),
        .Q(\reg_op_reg_n_0_[4] ),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[5] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[5]),
        .Q(\reg_op_reg_n_0_[5] ),
        .R(\reg_op[5]_i_1_n_0 ));
  IBUF sel_A_IBUF_inst
       (.I(sel_A),
        .O(sel_A_IBUF));
  IBUF sel_B_IBUF_inst
       (.I(sel_B),
        .O(sel_B_IBUF));
  IBUF sel_OP_IBUF_inst
       (.I(sel_OP),
        .O(sel_OP_IBUF));
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
