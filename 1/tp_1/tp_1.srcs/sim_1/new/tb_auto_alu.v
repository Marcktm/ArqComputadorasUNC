`timescale 1ns / 1ps

`define ADD 6'b10_0000
`define SUB 6'b10_0010
`define AND 6'b10_0100
`define OR  6'b10_0101
`define XOR 6'b10_0110
`define SRA 6'b00_0011
`define SRL 6'b00_0010
`define NOR 6'b10_0111

module tb_auto_alu();
    
    parameter N_BITS = 8;
    parameter OP_BITS = 6;
    
    parameter RETARDO = 20;
    parameter CANT_OPERACIONES = 8;

    reg [N_BITS-1:0] A;
    reg [N_BITS-1:0] B;
    reg [OP_BITS-1:0] SEL;
    wire [N_BITS-1:0] F; //salida de la ALU
    
    alu  #(N_BITS, OP_BITS)
    my_alu (
        .in_a(A), 
        .in_b(B), 
        .in_op(SEL), 
        .op_c(F)
    );
    

    reg [OP_BITS-1:0] operaciones [CANT_OPERACIONES-1:0]; //array para guardar los codigo de opearacion son 8 opreaciones 7 es un index no numero de bit.
   
    
    initial begin
    
        //CARGO OPERERACIONES PARA AUTO TEST
        operaciones[0] = `ADD;
        operaciones[1] = `SUB;
        operaciones[2] = `AND;
        operaciones[3] = `OR;
        operaciones[4] = `XOR;
        operaciones[5] = `SRA;
        operaciones[6] = `SRL;
        operaciones[7] = `NOR;
        
        #2000 $finish;
  
    end
       
 
 
    always begin
         
        #(RETARDO)
        
        //CARGO UN RANDOM EN LA ALU A
        A = $urandom;
        #(RETARDO)
        
        //CARGO UN RANDOM EN LA ALU B
        B = $urandom;
        #(RETARDO)
        
        //CARGO UNA OPERACION RANDOM EN LA ALU B DE 0 A 7 $random%8
        SEL = operaciones[$urandom%(CANT_OPERACIONES-1)];
        #(RETARDO)
           
        begin case(SEL) //LO ULTIMO QUE TENEMOS EN EL SWITCH ES LA OPERACION
        
        // my_alu.reg_a -> APUNTAMOS AL REGISTRO REG_A QUE ESTA DENTRO DE LA INSTANCIA DE my_alu
        
                `ADD:  if(F == (my_alu.in_a + my_alu.in_b)) 
                            $display("ADD correcto -> %d + %d = %d ", my_alu.in_a, my_alu.in_b, F );
                       else 
                            $display("ADD incorrecto -> %d + %d = %d", my_alu.in_a, my_alu.in_b, F );
                `SUB:  if(F == (my_alu.in_a - my_alu.in_b))
                            $display("SUB correcto -> %d - %d = %d ", my_alu.in_a, my_alu.in_b, F );
                       else 
                            $display("SUB incorrecto -> %d - %d = %d", my_alu.in_a, my_alu.in_b, F );
                `AND:  if(F == (my_alu.in_a & my_alu.in_b)) 
                            $display("AND correcto -> %d & %d = %d ", my_alu.in_a, my_alu.in_b, F );
                       else 
                            $display("AND incorrecto -> %d + %d = %d", my_alu.in_a, my_alu.in_b, F );
                `OR:   if(F == (my_alu.in_a | my_alu.in_b)) 
                            $display("OR correcto -> %d | %d = %d ", my_alu.in_a, my_alu.in_b, F );
                       else 
                            $display("OR incorrecto -> %d | %d = %d", my_alu.in_a, my_alu.in_b, F );                                 
                `XOR:  if(F == (my_alu.in_a ^ my_alu.in_b)) 
                            $display("XOR correcto -> %d ^ %d = %d ", my_alu.in_a, my_alu.in_b, F );
                       else 
                            $display("XOR incorrecto -> %d ^ %d = %d", my_alu.in_a, my_alu.in_b, F );
                `SRA:  if(F == (my_alu.in_a >>> my_alu.in_b)) 
                            $display("SRA correcto -> %d >>> %d = %d ", my_alu.in_a, my_alu.in_b, F );
                       else 
                            $display("SRA incorrecto -> %d >>> %d = %d", my_alu.in_a, my_alu.in_b, F );
                `SRL:  if(F == (my_alu.in_a >> my_alu.in_b)) 
                            $display("SRL correcto -> %d >> %d = %d ", my_alu.in_a, my_alu.in_b, F );
                       else 
                            $display("SRL incorrecto -> %d >> %d = %d", my_alu.in_a, my_alu.in_b, F );
                `NOR:  if(F == (my_alu.in_a | my_alu.in_b))
                            $display("NOR correcto -> %d | %d = %d ", my_alu.in_a, my_alu.in_b, F );
                       else 
                            $display("NOR incorrecto -> %d | %d = %d", my_alu.in_a, my_alu.in_b, F );
                endcase
        end
    end
 
 
 //   initial $monitor($time, in_data_tb, out_c_tb, selA, selB, selOP, my_alu.reg_a, my_alu.reg_b);      
 
    
endmodule