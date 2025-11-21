`timescale 1ns / 1ps

`define ADD 8'b10_0000 //32
`define SUB 8'b10_0010 //34
`define AND 8'b10_0100 //36
`define OR  8'b10_0101 //37
`define XOR 8'b10_0110 //38
`define NOR 8'b10_0111 //39
`define SRA 8'b00_0011 //3
`define SRL 8'b00_0010 //2

module ALU  
#(parameter DBIT=8 )
             (
                  input [DBIT-1:0]  op1, 
                  input [DBIT-1:0]  op2, 
                  input [DBIT-1:0]  op_code, 
                  output reg [DBIT-1:0]  result, 
                  output reg zero
             );


          
	always @(*) begin
		 case(op_code)
					`ADD: result = op1 + op2;	 
					`SUB: result = op1 - op2 ;
					`AND: result = op1 & op2;
					`OR:  result = op1 | op2;
					`XOR: result = op1 ^ op2;
					`NOR: result = ~(op1 | op2);
					`SRA: result = $signed( op1) >>> op2;
					`SRL: result = op1 >> op2; 
					 default:  result = op_code;
								
			endcase	
	 
			if (result == 0) zero = 1; //	zero= (result == 0) ? 1 : 0;
			else zero = 0;

end	
	

endmodule 