`timescale 1ns / 1ps

`define ADD 6'b10_0000 
`define SUB 6'b10_0010
`define AND 6'b10_0100
`define OR  6'b10_0101
`define XOR 6'b10_0110
`define SRA 6'b00_0011
`define SRL 6'b00_0010
`define NOR 6'b10_0111

module tb_auto_top_alu();
    
    parameter N_BITS = 8;
    parameter OP_BITS = 6;
    
    parameter PERIODO = 20;
    parameter CANT_OPERACIONES = 8;
        
    reg [N_BITS-1:0] in_data_tb;
    wire [N_BITS-1:0] out_c_tb;
    reg selA;
    reg selB;
    reg selOP;
    reg reset;
    reg clock;
    
    reg [OP_BITS-1:0] operaciones [CANT_OPERACIONES-1:0]; //array para guardar los codigo de opearacion son 8 opreaciones 7 es un index no numero de bit.
     
    //INSTANCIACION DE LA ALU
    top_alu #(N_BITS, OP_BITS)
    my_top_alu
    (
        .in_data(in_data_tb), 
        .out_c(out_c_tb), 
        .sel_A(selA), 
        .sel_B(selB), 
        .sel_OP(selOP), 
        .i_clock(clock), 
        .i_reset(reset)
    );
    
    
    initial begin
    
    
        operaciones[0] = `ADD;
        operaciones[1] = `SUB;
        operaciones[2] = `AND;
        operaciones[3] = `OR;
        operaciones[4] = `XOR;
        operaciones[5] = `SRA;
        operaciones[6] = `SRL;
        operaciones[7] = `NOR;
        
        
//        in_data_tb = 8'b0000_0000;
//        #10
//        selA = 1'b1;
//        #10
//        selA = 1'b0;
//        #10
//        selB = 1'b1;
//        #10
//        selB = 1'b0;
//        #10
//        selOP = 1'b1;
//        #10
//        selOP = 1'b0;
//        #10
        
        reset = 1'b0;
        clock = 1'b0;

        #2000 $finish;
  
    end
       
    
    always begin
        #(PERIODO/2) clock = ~clock; // -> 50 Mhz
    end
 
 
    always begin
         
        #(PERIODO)
        
        //CARGO UN RANDOM EN LA ALU A
        in_data_tb = $urandom;
        selA = 1'b1;
        #(PERIODO)
        selA = 1'b0;
        #(PERIODO)
        
       
        //CARGO UN RANDOM EN LA ALU B
        in_data_tb = $urandom;
        selB = 1'b1;
        #(PERIODO)
        selB = 1'b0;
        #(PERIODO)
        
        //CARGO UNA OPERACION RANDOM EN LA ALU B DE 0 A 7 $random%8
        in_data_tb = operaciones[$urandom%(CANT_OPERACIONES-1)];
        selOP = 1'b1;
        #(PERIODO)
        selOP = 1'b0;
        #(PERIODO)
           
        begin case(in_data_tb) //LO ULTIMO QUE TENEMOS EN EL SWITCH ES LA OPERACION
        
        // my_top_alu.reg_a -> APUNTAMOS AL REGISTRO REG_A QUE ESTA DENTRO DE LA INSTANCIA DE MY_TOP_ALU
        
                `ADD:  if(out_c_tb == (my_top_alu.reg_a + my_top_alu.reg_b)) 
                            $display("ADD correcto -> %d + %d = %d ", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                       else 
                            $display("ADD incorrecto -> %d + %d = %d", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                `SUB:  if(out_c_tb == (my_top_alu.reg_a - my_top_alu.reg_b)) 
                            $display("SUB correcto -> %d - %d = %d ", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                       else 
                            $display("SUB incorrecto -> %d - %d = %d", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                `AND:  if(out_c_tb == (my_top_alu.reg_a & my_top_alu.reg_b)) 
                            $display("AND correcto -> %d & %d = %d ", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                       else 
                            $display("AND incorrecto -> %d + %d = %d", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                `OR:   if(out_c_tb == (my_top_alu.reg_a | my_top_alu.reg_b)) 
                            $display("OR correcto -> %d | %d = %d ", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                       else 
                            $display("OR incorrecto -> %d | %d = %d", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );                                 
                `XOR:  if(out_c_tb == (my_top_alu.reg_a ^ my_top_alu.reg_b)) 
                            $display("XOR correcto -> %d ^ %d = %d ", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                       else 
                            $display("XOR incorrecto -> %d ^ %d = %d", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                `SRA:  if(out_c_tb == (my_top_alu.reg_a >>> my_top_alu.reg_b)) 
                            $display("SRA correcto -> %d >>> %d = %d ", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                       else 
                            $display("SRA incorrecto -> %d >>> %d = %d", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                `SRL:  if(out_c_tb == (my_top_alu.reg_a >> my_top_alu.reg_b)) 
                            $display("SRL correcto -> %d >> %d = %d ", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                       else 
                            $display("SRL incorrecto -> %d >> %d = %d", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                `NOR:  if(out_c_tb == (my_top_alu.reg_a | my_top_alu.reg_b))
                            $display("NOR correcto -> %d | %d = %d ", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                       else 
                            $display("NOR incorrecto -> %d | %d = %d", my_top_alu.reg_a, my_top_alu.reg_b, out_c_tb );
                endcase
        end
    end
 
 
 //   initial $monitor($time, in_data_tb, out_c_tb, selA, selB, selOP, my_top_alu.reg_a, my_top_alu.reg_b);      
 
    
endmodule
