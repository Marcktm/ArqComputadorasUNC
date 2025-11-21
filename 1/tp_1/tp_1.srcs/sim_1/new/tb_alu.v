`timescale 1ns / 1ps

module tb_alu();
    
    parameter N_BITS = 8;
    parameter OP_BITS = 6;

    reg [N_BITS-1:0] A;
    reg [N_BITS-1:0] B;
    reg [OP_BITS:0] SEL;
    wire [N_BITS-1:0] F;
    
    alu my_alu (.in_a(A), .in_b(B), .in_op(SEL), .op_c(F));
    
    initial begin
    
        A = 8'b0000_0000;
        B = 8'b1000_0000;
        SEL = 6'b10_0000; //ADD
        
        #20
        A = 8'b1000_0001;
        B = 8'b0000_0001; 
        SEL = 6'b10_0010; //SUB
        
        #20
        A = 8'b1010_1010;
        B = 8'b0100_0101;
        SEL = 6'b10_0100; //AND
        
        #20
        A = 8'b1010_1010;
        B = 8'b0101_0101;
        SEL = 6'b10_0101; //OR
        
        #20
        A = 8'b1010_1010;
        B = 8'b0100_0101;
        SEL = 6'b10_0110; //XOR
        
        #20
        A = 8'b1000_0001;
        B = 8'b0000_0011; 
        SEL = 6'b00_0011; //SRA
        
        #20
        A = 8'b1000_0001;
        B = 8'b0000_0011; 
        SEL = 6'b00_0010; //SRL 
        
        #20
        A = 8'b1010_1010;
        B = 8'b0101_0101;
        SEL = 6'b10_0111; //NOR
        
        
//        #20
//        A = 8'b1000_0000;
//        B = 8'b0000_0001; 
//        SEL = 6'b10_0010; //SUB

        
//        #20
//        A = 8'b1000_0001;
//        B = 8'b0000_0010; 
//        SEL = 6'b00_0011; //SRA
        
//        #20
//        A = 8'b1000_0001;
//        B = 8'b0000_0010; 
//        SEL = 6'b00_0010; //SRL 
        
    end
    
    initial $monitor($time, A, B, SEL, F);   
        
        
        
        
    
endmodule
