// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Oct  1 13:37:35 2025
// Host        : marcktm running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/marcktm/ArqComputadorasUNC/1/tp_1/tp_1.sim/sim_1/synth/func/xsim/tb_auto_alu_func_synth.v
// Design      : top_alu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module alu
   (out_c_OBUF,
    reg_b,
    reg_a,
    reg_op);
  output [7:0]out_c_OBUF;
  input [7:0]reg_b;
  input [7:0]reg_a;
  input [5:0]reg_op;

  wire [7:0]data0;
  wire [7:0]data1;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire op_c0_carry__0_i_1_n_0;
  wire op_c0_carry__0_i_2_n_0;
  wire op_c0_carry__0_i_3_n_0;
  wire op_c0_carry__0_i_4_n_0;
  wire op_c0_carry__0_n_1;
  wire op_c0_carry__0_n_2;
  wire op_c0_carry__0_n_3;
  wire op_c0_carry_i_1_n_0;
  wire op_c0_carry_i_2_n_0;
  wire op_c0_carry_i_3_n_0;
  wire op_c0_carry_i_4_n_0;
  wire op_c0_carry_n_0;
  wire op_c0_carry_n_1;
  wire op_c0_carry_n_2;
  wire op_c0_carry_n_3;
  wire \op_c0_inferred__0/i__carry__0_n_1 ;
  wire \op_c0_inferred__0/i__carry__0_n_2 ;
  wire \op_c0_inferred__0/i__carry__0_n_3 ;
  wire \op_c0_inferred__0/i__carry_n_0 ;
  wire \op_c0_inferred__0/i__carry_n_1 ;
  wire \op_c0_inferred__0/i__carry_n_2 ;
  wire \op_c0_inferred__0/i__carry_n_3 ;
  wire [7:0]out_c_OBUF;
  wire \out_c_OBUF[0]_inst_i_2_n_0 ;
  wire \out_c_OBUF[0]_inst_i_3_n_0 ;
  wire \out_c_OBUF[0]_inst_i_4_n_0 ;
  wire \out_c_OBUF[0]_inst_i_5_n_0 ;
  wire \out_c_OBUF[0]_inst_i_6_n_0 ;
  wire \out_c_OBUF[0]_inst_i_7_n_0 ;
  wire \out_c_OBUF[1]_inst_i_2_n_0 ;
  wire \out_c_OBUF[1]_inst_i_3_n_0 ;
  wire \out_c_OBUF[1]_inst_i_4_n_0 ;
  wire \out_c_OBUF[1]_inst_i_5_n_0 ;
  wire \out_c_OBUF[2]_inst_i_2_n_0 ;
  wire \out_c_OBUF[2]_inst_i_3_n_0 ;
  wire \out_c_OBUF[2]_inst_i_4_n_0 ;
  wire \out_c_OBUF[2]_inst_i_5_n_0 ;
  wire \out_c_OBUF[2]_inst_i_6_n_0 ;
  wire \out_c_OBUF[3]_inst_i_2_n_0 ;
  wire \out_c_OBUF[3]_inst_i_3_n_0 ;
  wire \out_c_OBUF[3]_inst_i_4_n_0 ;
  wire \out_c_OBUF[3]_inst_i_5_n_0 ;
  wire \out_c_OBUF[3]_inst_i_6_n_0 ;
  wire \out_c_OBUF[4]_inst_i_2_n_0 ;
  wire \out_c_OBUF[4]_inst_i_3_n_0 ;
  wire \out_c_OBUF[4]_inst_i_4_n_0 ;
  wire \out_c_OBUF[4]_inst_i_5_n_0 ;
  wire \out_c_OBUF[4]_inst_i_6_n_0 ;
  wire \out_c_OBUF[5]_inst_i_2_n_0 ;
  wire \out_c_OBUF[5]_inst_i_3_n_0 ;
  wire \out_c_OBUF[5]_inst_i_4_n_0 ;
  wire \out_c_OBUF[5]_inst_i_5_n_0 ;
  wire \out_c_OBUF[6]_inst_i_2_n_0 ;
  wire \out_c_OBUF[6]_inst_i_3_n_0 ;
  wire \out_c_OBUF[6]_inst_i_4_n_0 ;
  wire \out_c_OBUF[6]_inst_i_5_n_0 ;
  wire \out_c_OBUF[6]_inst_i_6_n_0 ;
  wire \out_c_OBUF[6]_inst_i_7_n_0 ;
  wire \out_c_OBUF[6]_inst_i_8_n_0 ;
  wire \out_c_OBUF[6]_inst_i_9_n_0 ;
  wire \out_c_OBUF[7]_inst_i_2_n_0 ;
  wire \out_c_OBUF[7]_inst_i_3_n_0 ;
  wire \out_c_OBUF[7]_inst_i_4_n_0 ;
  wire \out_c_OBUF[7]_inst_i_5_n_0 ;
  wire \out_c_OBUF[7]_inst_i_6_n_0 ;
  wire \out_c_OBUF[7]_inst_i_7_n_0 ;
  wire \out_c_OBUF[7]_inst_i_8_n_0 ;
  wire [7:0]reg_a;
  wire [7:0]reg_b;
  wire [5:0]reg_op;
  wire [3:3]NLW_op_c0_carry__0_CO_UNCONNECTED;
  wire [3:3]\NLW_op_c0_inferred__0/i__carry__0_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(reg_b[7]),
        .I1(reg_a[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(reg_b[6]),
        .I1(reg_a[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(reg_b[5]),
        .I1(reg_a[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(reg_b[4]),
        .I1(reg_a[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(reg_b[3]),
        .I1(reg_a[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(reg_b[2]),
        .I1(reg_a[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(reg_b[1]),
        .I1(reg_a[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(reg_b[0]),
        .I1(reg_a[0]),
        .O(i__carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 op_c0_carry
       (.CI(1'b0),
        .CO({op_c0_carry_n_0,op_c0_carry_n_1,op_c0_carry_n_2,op_c0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(reg_a[3:0]),
        .O(data0[3:0]),
        .S({op_c0_carry_i_1_n_0,op_c0_carry_i_2_n_0,op_c0_carry_i_3_n_0,op_c0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 op_c0_carry__0
       (.CI(op_c0_carry_n_0),
        .CO({NLW_op_c0_carry__0_CO_UNCONNECTED[3],op_c0_carry__0_n_1,op_c0_carry__0_n_2,op_c0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,reg_a[6:4]}),
        .O(data0[7:4]),
        .S({op_c0_carry__0_i_1_n_0,op_c0_carry__0_i_2_n_0,op_c0_carry__0_i_3_n_0,op_c0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    op_c0_carry__0_i_1
       (.I0(reg_a[7]),
        .I1(reg_b[7]),
        .O(op_c0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    op_c0_carry__0_i_2
       (.I0(reg_a[6]),
        .I1(reg_b[6]),
        .O(op_c0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    op_c0_carry__0_i_3
       (.I0(reg_a[5]),
        .I1(reg_b[5]),
        .O(op_c0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    op_c0_carry__0_i_4
       (.I0(reg_a[4]),
        .I1(reg_b[4]),
        .O(op_c0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    op_c0_carry_i_1
       (.I0(reg_a[3]),
        .I1(reg_b[3]),
        .O(op_c0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    op_c0_carry_i_2
       (.I0(reg_a[2]),
        .I1(reg_b[2]),
        .O(op_c0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    op_c0_carry_i_3
       (.I0(reg_a[1]),
        .I1(reg_b[1]),
        .O(op_c0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    op_c0_carry_i_4
       (.I0(reg_a[0]),
        .I1(reg_b[0]),
        .O(op_c0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \op_c0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\op_c0_inferred__0/i__carry_n_0 ,\op_c0_inferred__0/i__carry_n_1 ,\op_c0_inferred__0/i__carry_n_2 ,\op_c0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(reg_a[3:0]),
        .O(data1[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \op_c0_inferred__0/i__carry__0 
       (.CI(\op_c0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_op_c0_inferred__0/i__carry__0_CO_UNCONNECTED [3],\op_c0_inferred__0/i__carry__0_n_1 ,\op_c0_inferred__0/i__carry__0_n_2 ,\op_c0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,reg_a[6:4]}),
        .O(data1[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \out_c_OBUF[0]_inst_i_1 
       (.I0(\out_c_OBUF[0]_inst_i_2_n_0 ),
        .I1(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I2(\out_c_OBUF[0]_inst_i_3_n_0 ),
        .I3(\out_c_OBUF[0]_inst_i_4_n_0 ),
        .I4(\out_c_OBUF[0]_inst_i_5_n_0 ),
        .I5(\out_c_OBUF[7]_inst_i_6_n_0 ),
        .O(out_c_OBUF[0]));
  LUT4 #(
    .INIT(16'h0008)) 
    \out_c_OBUF[0]_inst_i_2 
       (.I0(reg_a[7]),
        .I1(reg_op[0]),
        .I2(reg_op[2]),
        .I3(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .O(\out_c_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808000000)) 
    \out_c_OBUF[0]_inst_i_3 
       (.I0(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .I1(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I2(reg_op[2]),
        .I3(\out_c_OBUF[1]_inst_i_5_n_0 ),
        .I4(reg_b[0]),
        .I5(\out_c_OBUF[0]_inst_i_6_n_0 ),
        .O(\out_c_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h120FE0001200E000)) 
    \out_c_OBUF[0]_inst_i_4 
       (.I0(reg_b[0]),
        .I1(reg_a[0]),
        .I2(reg_op[0]),
        .I3(reg_op[2]),
        .I4(reg_op[1]),
        .I5(data1[0]),
        .O(\out_c_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0C0E000200C20002)) 
    \out_c_OBUF[0]_inst_i_5 
       (.I0(data0[0]),
        .I1(reg_op[2]),
        .I2(reg_op[1]),
        .I3(reg_op[0]),
        .I4(reg_a[0]),
        .I5(reg_b[0]),
        .O(\out_c_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E2E2)) 
    \out_c_OBUF[0]_inst_i_6 
       (.I0(reg_a[0]),
        .I1(reg_b[2]),
        .I2(reg_a[4]),
        .I3(\out_c_OBUF[0]_inst_i_7_n_0 ),
        .I4(reg_b[1]),
        .I5(reg_b[0]),
        .O(\out_c_OBUF[0]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_c_OBUF[0]_inst_i_7 
       (.I0(reg_a[6]),
        .I1(reg_b[2]),
        .I2(reg_a[2]),
        .O(\out_c_OBUF[0]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFE0E0E0)) 
    \out_c_OBUF[1]_inst_i_1 
       (.I0(\out_c_OBUF[1]_inst_i_2_n_0 ),
        .I1(\out_c_OBUF[1]_inst_i_3_n_0 ),
        .I2(\out_c_OBUF[7]_inst_i_6_n_0 ),
        .I3(\out_c_OBUF[1]_inst_i_4_n_0 ),
        .I4(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .O(out_c_OBUF[1]));
  LUT6 #(
    .INIT(64'h120FE0001200E000)) 
    \out_c_OBUF[1]_inst_i_2 
       (.I0(reg_b[1]),
        .I1(reg_a[1]),
        .I2(reg_op[0]),
        .I3(reg_op[2]),
        .I4(reg_op[1]),
        .I5(data1[1]),
        .O(\out_c_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0E000200C20002)) 
    \out_c_OBUF[1]_inst_i_3 
       (.I0(data0[1]),
        .I1(reg_op[2]),
        .I2(reg_op[1]),
        .I3(reg_op[0]),
        .I4(reg_a[1]),
        .I5(reg_b[1]),
        .O(\out_c_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAABAAAAAAABAAA)) 
    \out_c_OBUF[1]_inst_i_4 
       (.I0(\out_c_OBUF[0]_inst_i_2_n_0 ),
        .I1(reg_op[2]),
        .I2(\out_c_OBUF[1]_inst_i_5_n_0 ),
        .I3(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .I4(reg_b[0]),
        .I5(\out_c_OBUF[2]_inst_i_5_n_0 ),
        .O(\out_c_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    \out_c_OBUF[1]_inst_i_5 
       (.I0(reg_a[1]),
        .I1(reg_a[5]),
        .I2(reg_b[1]),
        .I3(reg_a[3]),
        .I4(reg_a[7]),
        .I5(reg_b[2]),
        .O(\out_c_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E0000)) 
    \out_c_OBUF[2]_inst_i_1 
       (.I0(\out_c_OBUF[2]_inst_i_2_n_0 ),
        .I1(\out_c_OBUF[2]_inst_i_3_n_0 ),
        .I2(reg_op[4]),
        .I3(reg_op[3]),
        .I4(reg_op[5]),
        .I5(\out_c_OBUF[2]_inst_i_4_n_0 ),
        .O(out_c_OBUF[2]));
  LUT6 #(
    .INIT(64'h120FE0001200E000)) 
    \out_c_OBUF[2]_inst_i_2 
       (.I0(reg_b[2]),
        .I1(reg_a[2]),
        .I2(reg_op[0]),
        .I3(reg_op[2]),
        .I4(reg_op[1]),
        .I5(data1[2]),
        .O(\out_c_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0E000200C20002)) 
    \out_c_OBUF[2]_inst_i_3 
       (.I0(data0[2]),
        .I1(reg_op[2]),
        .I2(reg_op[1]),
        .I3(reg_op[0]),
        .I4(reg_a[2]),
        .I5(reg_b[2]),
        .O(\out_c_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A008000)) 
    \out_c_OBUF[2]_inst_i_4 
       (.I0(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[3]_inst_i_5_n_0 ),
        .I2(reg_b[0]),
        .I3(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .I4(\out_c_OBUF[2]_inst_i_5_n_0 ),
        .I5(\out_c_OBUF[0]_inst_i_2_n_0 ),
        .O(\out_c_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF80FF00)) 
    \out_c_OBUF[2]_inst_i_5 
       (.I0(reg_b[1]),
        .I1(reg_b[2]),
        .I2(reg_a[7]),
        .I3(\out_c_OBUF[2]_inst_i_6_n_0 ),
        .I4(reg_op[0]),
        .I5(reg_op[2]),
        .O(\out_c_OBUF[2]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
    .INIT(64'hFFFFFFFF000E0000)) 
    \out_c_OBUF[3]_inst_i_1 
       (.I0(\out_c_OBUF[3]_inst_i_2_n_0 ),
        .I1(\out_c_OBUF[3]_inst_i_3_n_0 ),
        .I2(reg_op[4]),
        .I3(reg_op[3]),
        .I4(reg_op[5]),
        .I5(\out_c_OBUF[3]_inst_i_4_n_0 ),
        .O(out_c_OBUF[3]));
  LUT6 #(
    .INIT(64'h120FE0001200E000)) 
    \out_c_OBUF[3]_inst_i_2 
       (.I0(reg_b[3]),
        .I1(reg_a[3]),
        .I2(reg_op[0]),
        .I3(reg_op[2]),
        .I4(reg_op[1]),
        .I5(data1[3]),
        .O(\out_c_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0E000200C20002)) 
    \out_c_OBUF[3]_inst_i_3 
       (.I0(data0[3]),
        .I1(reg_op[2]),
        .I2(reg_op[1]),
        .I3(reg_op[0]),
        .I4(reg_a[3]),
        .I5(reg_b[3]),
        .O(\out_c_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0800080)) 
    \out_c_OBUF[3]_inst_i_4 
       (.I0(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[3]_inst_i_5_n_0 ),
        .I2(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .I3(reg_b[0]),
        .I4(\out_c_OBUF[4]_inst_i_5_n_0 ),
        .I5(\out_c_OBUF[0]_inst_i_2_n_0 ),
        .O(\out_c_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF80FF00)) 
    \out_c_OBUF[3]_inst_i_5 
       (.I0(reg_b[1]),
        .I1(reg_b[2]),
        .I2(reg_a[7]),
        .I3(\out_c_OBUF[3]_inst_i_6_n_0 ),
        .I4(reg_op[0]),
        .I5(reg_op[2]),
        .O(\out_c_OBUF[3]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \out_c_OBUF[3]_inst_i_6 
       (.I0(reg_a[5]),
        .I1(reg_b[1]),
        .I2(reg_a[3]),
        .I3(reg_a[7]),
        .I4(reg_b[2]),
        .O(\out_c_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E0000)) 
    \out_c_OBUF[4]_inst_i_1 
       (.I0(\out_c_OBUF[4]_inst_i_2_n_0 ),
        .I1(\out_c_OBUF[4]_inst_i_3_n_0 ),
        .I2(reg_op[4]),
        .I3(reg_op[3]),
        .I4(reg_op[5]),
        .I5(\out_c_OBUF[4]_inst_i_4_n_0 ),
        .O(out_c_OBUF[4]));
  LUT6 #(
    .INIT(64'h120FE0001200E000)) 
    \out_c_OBUF[4]_inst_i_2 
       (.I0(reg_b[4]),
        .I1(reg_a[4]),
        .I2(reg_op[0]),
        .I3(reg_op[2]),
        .I4(reg_op[1]),
        .I5(data1[4]),
        .O(\out_c_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0E000200C20002)) 
    \out_c_OBUF[4]_inst_i_3 
       (.I0(data0[4]),
        .I1(reg_op[2]),
        .I2(reg_op[1]),
        .I3(reg_op[0]),
        .I4(reg_a[4]),
        .I5(reg_b[4]),
        .O(\out_c_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A008000)) 
    \out_c_OBUF[4]_inst_i_4 
       (.I0(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[5]_inst_i_5_n_0 ),
        .I2(reg_b[0]),
        .I3(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .I4(\out_c_OBUF[4]_inst_i_5_n_0 ),
        .I5(\out_c_OBUF[0]_inst_i_2_n_0 ),
        .O(\out_c_OBUF[4]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000F8F0)) 
    \out_c_OBUF[4]_inst_i_5 
       (.I0(reg_a[7]),
        .I1(reg_b[2]),
        .I2(\out_c_OBUF[4]_inst_i_6_n_0 ),
        .I3(reg_op[0]),
        .I4(reg_op[2]),
        .O(\out_c_OBUF[4]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \out_c_OBUF[4]_inst_i_6 
       (.I0(reg_a[4]),
        .I1(reg_a[6]),
        .I2(reg_b[1]),
        .I3(reg_b[2]),
        .O(\out_c_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000E0000)) 
    \out_c_OBUF[5]_inst_i_1 
       (.I0(\out_c_OBUF[5]_inst_i_2_n_0 ),
        .I1(\out_c_OBUF[5]_inst_i_3_n_0 ),
        .I2(reg_op[4]),
        .I3(reg_op[3]),
        .I4(reg_op[5]),
        .I5(\out_c_OBUF[5]_inst_i_4_n_0 ),
        .O(out_c_OBUF[5]));
  LUT6 #(
    .INIT(64'h120FE0001200E000)) 
    \out_c_OBUF[5]_inst_i_2 
       (.I0(reg_b[5]),
        .I1(reg_a[5]),
        .I2(reg_op[0]),
        .I3(reg_op[2]),
        .I4(reg_op[1]),
        .I5(data1[5]),
        .O(\out_c_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0E000200C20002)) 
    \out_c_OBUF[5]_inst_i_3 
       (.I0(data0[5]),
        .I1(reg_op[2]),
        .I2(reg_op[1]),
        .I3(reg_op[0]),
        .I4(reg_a[5]),
        .I5(reg_b[5]),
        .O(\out_c_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0800080)) 
    \out_c_OBUF[5]_inst_i_4 
       (.I0(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I1(\out_c_OBUF[5]_inst_i_5_n_0 ),
        .I2(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .I3(reg_b[0]),
        .I4(\out_c_OBUF[6]_inst_i_9_n_0 ),
        .I5(\out_c_OBUF[0]_inst_i_2_n_0 ),
        .O(\out_c_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABA80B08)) 
    \out_c_OBUF[5]_inst_i_5 
       (.I0(reg_a[7]),
        .I1(reg_b[1]),
        .I2(reg_b[2]),
        .I3(reg_a[5]),
        .I4(reg_op[0]),
        .I5(reg_op[2]),
        .O(\out_c_OBUF[5]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFE0E0E0)) 
    \out_c_OBUF[6]_inst_i_1 
       (.I0(\out_c_OBUF[6]_inst_i_2_n_0 ),
        .I1(\out_c_OBUF[6]_inst_i_3_n_0 ),
        .I2(\out_c_OBUF[7]_inst_i_6_n_0 ),
        .I3(\out_c_OBUF[6]_inst_i_4_n_0 ),
        .I4(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .O(out_c_OBUF[6]));
  LUT6 #(
    .INIT(64'h120FE0001200E000)) 
    \out_c_OBUF[6]_inst_i_2 
       (.I0(reg_b[6]),
        .I1(reg_a[6]),
        .I2(reg_op[0]),
        .I3(reg_op[2]),
        .I4(reg_op[1]),
        .I5(data1[6]),
        .O(\out_c_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0E000200C20002)) 
    \out_c_OBUF[6]_inst_i_3 
       (.I0(data0[6]),
        .I1(reg_op[2]),
        .I2(reg_op[1]),
        .I3(reg_op[0]),
        .I4(reg_a[6]),
        .I5(reg_b[6]),
        .O(\out_c_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFC0C0EA00C0C0)) 
    \out_c_OBUF[6]_inst_i_4 
       (.I0(\out_c_OBUF[6]_inst_i_6_n_0 ),
        .I1(reg_a[7]),
        .I2(\out_c_OBUF[6]_inst_i_7_n_0 ),
        .I3(reg_b[0]),
        .I4(\out_c_OBUF[6]_inst_i_8_n_0 ),
        .I5(\out_c_OBUF[6]_inst_i_9_n_0 ),
        .O(\out_c_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \out_c_OBUF[6]_inst_i_5 
       (.I0(reg_op[5]),
        .I1(reg_op[1]),
        .I2(reg_op[4]),
        .I3(reg_op[3]),
        .O(\out_c_OBUF[6]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \out_c_OBUF[6]_inst_i_6 
       (.I0(reg_op[2]),
        .I1(reg_a[7]),
        .I2(reg_b[2]),
        .I3(reg_b[1]),
        .O(\out_c_OBUF[6]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_c_OBUF[6]_inst_i_7 
       (.I0(reg_op[0]),
        .I1(reg_op[2]),
        .O(\out_c_OBUF[6]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \out_c_OBUF[6]_inst_i_8 
       (.I0(reg_b[3]),
        .I1(reg_b[4]),
        .I2(reg_b[5]),
        .I3(reg_b[7]),
        .I4(reg_b[6]),
        .O(\out_c_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABA80300)) 
    \out_c_OBUF[6]_inst_i_9 
       (.I0(reg_a[7]),
        .I1(reg_b[1]),
        .I2(reg_b[2]),
        .I3(reg_a[6]),
        .I4(reg_op[0]),
        .I5(reg_op[2]),
        .O(\out_c_OBUF[6]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \out_c_OBUF[7]_inst_i_1 
       (.I0(\out_c_OBUF[7]_inst_i_2_n_0 ),
        .I1(\out_c_OBUF[7]_inst_i_3_n_0 ),
        .I2(\out_c_OBUF[7]_inst_i_4_n_0 ),
        .I3(\out_c_OBUF[7]_inst_i_5_n_0 ),
        .I4(\out_c_OBUF[7]_inst_i_6_n_0 ),
        .O(out_c_OBUF[7]));
  LUT6 #(
    .INIT(64'h00F0001000000000)) 
    \out_c_OBUF[7]_inst_i_2 
       (.I0(\out_c_OBUF[7]_inst_i_7_n_0 ),
        .I1(\out_c_OBUF[7]_inst_i_8_n_0 ),
        .I2(\out_c_OBUF[6]_inst_i_5_n_0 ),
        .I3(reg_op[2]),
        .I4(reg_op[0]),
        .I5(reg_a[7]),
        .O(\out_c_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000880088F0)) 
    \out_c_OBUF[7]_inst_i_3 
       (.I0(reg_a[7]),
        .I1(reg_b[7]),
        .I2(data0[7]),
        .I3(reg_op[2]),
        .I4(reg_op[0]),
        .I5(reg_op[1]),
        .O(\out_c_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3008300830080008)) 
    \out_c_OBUF[7]_inst_i_4 
       (.I0(data1[7]),
        .I1(reg_op[1]),
        .I2(reg_op[2]),
        .I3(reg_op[0]),
        .I4(reg_a[7]),
        .I5(reg_b[7]),
        .O(\out_c_OBUF[7]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10006000)) 
    \out_c_OBUF[7]_inst_i_5 
       (.I0(reg_a[7]),
        .I1(reg_b[7]),
        .I2(reg_op[2]),
        .I3(reg_op[1]),
        .I4(reg_op[0]),
        .O(\out_c_OBUF[7]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \out_c_OBUF[7]_inst_i_6 
       (.I0(reg_op[4]),
        .I1(reg_op[3]),
        .I2(reg_op[5]),
        .O(\out_c_OBUF[7]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out_c_OBUF[7]_inst_i_7 
       (.I0(reg_b[1]),
        .I1(reg_b[2]),
        .O(\out_c_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_c_OBUF[7]_inst_i_8 
       (.I0(reg_b[0]),
        .I1(reg_b[6]),
        .I2(reg_b[7]),
        .I3(reg_b[5]),
        .I4(reg_b[4]),
        .I5(reg_b[3]),
        .O(\out_c_OBUF[7]_inst_i_8_n_0 ));
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

  wire i_clock;
  wire i_clock_IBUF;
  wire i_clock_IBUF_BUFG;
  wire i_reset;
  wire i_reset_IBUF;
  wire [7:0]in_data;
  wire [7:0]in_data_IBUF;
  wire [7:0]out_c;
  wire [7:0]out_c_OBUF;
  wire [7:0]reg_a;
  wire \reg_a[7]_i_1_n_0 ;
  wire \reg_a[7]_i_2_n_0 ;
  wire [7:0]reg_b;
  wire \reg_b[7]_i_1_n_0 ;
  wire \reg_b[7]_i_2_n_0 ;
  wire [5:0]reg_op;
  wire \reg_op[5]_i_1_n_0 ;
  wire \reg_op[5]_i_2_n_0 ;
  wire sel_A;
  wire sel_A_IBUF;
  wire sel_B;
  wire sel_B_IBUF;
  wire sel_OP;
  wire sel_OP_IBUF;

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
       (.out_c_OBUF(out_c_OBUF),
        .reg_a(reg_a),
        .reg_b(reg_b),
        .reg_op(reg_op));
  OBUF \out_c_OBUF[0]_inst 
       (.I(out_c_OBUF[0]),
        .O(out_c[0]));
  OBUF \out_c_OBUF[1]_inst 
       (.I(out_c_OBUF[1]),
        .O(out_c[1]));
  OBUF \out_c_OBUF[2]_inst 
       (.I(out_c_OBUF[2]),
        .O(out_c[2]));
  OBUF \out_c_OBUF[3]_inst 
       (.I(out_c_OBUF[3]),
        .O(out_c[3]));
  OBUF \out_c_OBUF[4]_inst 
       (.I(out_c_OBUF[4]),
        .O(out_c[4]));
  OBUF \out_c_OBUF[5]_inst 
       (.I(out_c_OBUF[5]),
        .O(out_c[5]));
  OBUF \out_c_OBUF[6]_inst 
       (.I(out_c_OBUF[6]),
        .O(out_c[6]));
  OBUF \out_c_OBUF[7]_inst 
       (.I(out_c_OBUF[7]),
        .O(out_c[7]));
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
        .Q(reg_op[0]),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[1] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[1]),
        .Q(reg_op[1]),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[2] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[2]),
        .Q(reg_op[2]),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[3] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[3]),
        .Q(reg_op[3]),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[4] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[4]),
        .Q(reg_op[4]),
        .R(\reg_op[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op_reg[5] 
       (.C(i_clock_IBUF_BUFG),
        .CE(\reg_op[5]_i_2_n_0 ),
        .D(in_data_IBUF[5]),
        .Q(reg_op[5]),
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
