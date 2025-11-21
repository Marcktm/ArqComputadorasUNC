`timescale 1ns / 1ps

`define ADD 6'b10_0000 //32 -> 20 HEXA
`define SUB 6'b10_0010 //34 -> 22 HEXA
`define AND 6'b10_0100 //36 -> 24 HEXA
`define OR  6'b10_0101 //37 -> 25 HEXA
`define XOR 6'b10_0110 //38 -> 26 HEXA
`define SRA 6'b00_0011 //3 -> 3 HEXA
`define SRL 6'b00_0010 //2 -> 2 HEXA
`define NOR 6'b10_0111 //39 -> 27 HEXA


module alu
#(
    parameter N_BITS = 8,
    parameter OP_BITS = 6
)
(
   input wire[N_BITS-1:0] in_a,
   input wire[N_BITS-1:0] in_b,
   input wire[OP_BITS-1:0] in_op, //operacion
   output reg [N_BITS-1:0] op_c
);

    always @(*) begin: alu //ES COMBINACIONAL?
        case(in_op) //segun el valor de operacion hacemos una u otra cosa ASIGNANDO EL VALOR A C
            `ADD: op_c = in_a + in_b;
            `SUB: op_c = in_a - in_b;
            `AND: op_c = in_a & in_b;
            `OR:  op_c = in_a | in_b;
            `XOR: op_c = in_a ^ in_b;
            `SRA: op_c = $signed(in_a) >>> in_b;
            `SRL: op_c = in_a >> in_b;
            `NOR: op_c = ~(in_a | in_b);
            default: op_c = {N_BITS{1'b0}};//= 0    
        endcase
    end
    
endmodule
