`timescale 1ns / 1ps
                      
`define ADD 6'b10_0000
`define SUB 6'b10_0010
`define AND 6'b10_0100
`define OR  6'b10_0101
`define XOR 6'b10_0110
`define SRA 6'b00_0011
`define SRL 6'b00_0010
`define NOR 6'b10_0111

module tb_top_alu(

    );
    
    parameter N_BITS = 8;
    parameter OP_BITS = 6;
    
    reg [N_BITS-1:0] in_data_tb;
    wire [N_BITS-1:0] out_c_tb;
    reg selA; 
    reg selB;
    reg selOP;
    reg reset;
    reg clock;
        
    top_alu my_top_alu (
        .in_data(in_data_tb), 
        .out_c(out_c_tb), 
        .sel_A(selA), 
        .sel_B(selB), 
        .sel_OP(selOP),
        .i_clock(clock), 
        .i_reset(reset)
    );
    
    always 
        #5 clock = ~clock;  
     
     
    initial begin
        
        in_data_tb = 8'b0000_0000;
        selA = 1'b0;
        selB = 1'b0;
        selOP = 1'b0;
        reset = 1'b0;
        clock = 1'b0;
        
        
        #100 //SIN ESTO SE ARRUINA TODO LA SIMULACION POST SINTESIS

        #20 //PRIMER DATO EN A
        in_data_tb = 8'b1111_0001;
        selA = 1'b1;
        #20
        selA = 1'b0;
        
        #20
        in_data_tb = 8'b0000_0001;
        selB = 1'b1;
        #20
        selB = 1'b0;
                
        #20
        in_data_tb = `ADD;
        selOP = 1'b1;
        #20
        selOP = 1'b0;
            
        //RESTA
        
        #50 
        in_data_tb = 8'b1000_0000;
        selA = 1'b1;
        #20
        selA = 1'b0;
        
        #20 
        in_data_tb = 8'b0000_0001;
        selB = 1'b1;
        #20
        selB = 1'b0;
        
        #20 
        in_data_tb = `SUB;
        selOP = 1'b1;
        #20
        selOP = 1'b0;
        
        
        //AND
        
        #50 
        in_data_tb = 8'b1111_1111;
        selA = 1'b1;
        #20
        selA = 1'b0;
        
        #20 
        in_data_tb = 8'b1111_0000;
        selB = 1'b1;
        #20
        selB = 1'b0;
        
        #20 
        in_data_tb = `AND;
        selOP = 1'b1;
        #20
        selOP = 1'b0;
        
        
        //OR
        
        #50 
        in_data_tb = 8'b1111_1111;
        selA = 1'b1;
        #20
        selA = 1'b0;
        
        #20 
        in_data_tb = 8'b1111_0000;
        selB = 1'b1;
        #20
        selB = 1'b0;
        
        #20 
        in_data_tb = `OR;
        selOP = 1'b1;
        #20
        selOP = 1'b0;
        
        
        //XOR
        
        #50 
        in_data_tb = 8'b1111_1111;
        selA = 1'b1;
        #20
        selA = 1'b0;
        
        #20 
        in_data_tb = 8'b1111_0000;
        selB = 1'b1;
        #20
        selB = 1'b0;
        
        #20 
        in_data_tb = `XOR;
        selOP = 1'b1;
        #20
        selOP = 1'b0;
        
        
        //SRA
        
        #50 
        in_data_tb = 8'b1000_0001;
        selA = 1'b1;
        #20
        selA = 1'b0;
        
        #20 
        in_data_tb = 8'b0000_0010;
        selB = 1'b1;
        #20
        selB = 1'b0;
        
        #20 
        in_data_tb = `SRA;
        selOP = 1'b1;
        #20
        selOP = 1'b0;           
                    
        
        //SRL
        
        #50 
        in_data_tb = 8'b1000_0001;
        selA = 1'b1;
        #20
        selA = 1'b0;
        
        #20 
        in_data_tb = 8'b0000_0010;
        selB = 1'b1;
        #20
        selB = 1'b0;
        
        #20 
        in_data_tb = `SRL;
        selOP = 1'b1;
        #20
        selOP = 1'b0;               
        
        
        //NOR
        
        #50 
        in_data_tb = 8'b1111_1111;
        selA = 1'b1;
        #20
        selA = 1'b0;
        
        #20 
        in_data_tb = 8'b1111_0000;
        selB = 1'b1;
        #20
        selB = 1'b0;
        
        #20 
        in_data_tb = `NOR;
        selOP = 1'b1;
        #20
        selOP = 1'b0;          


    end
        
    initial $monitor($time, in_data_tb, out_c_tb, selA, selB, selOP);
      
    
    
endmodule

