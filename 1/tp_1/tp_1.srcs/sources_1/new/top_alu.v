`timescale 1ns / 1ps

//porque no tengo jitter cuando cambia la salida? VER SI HAY JITTER EN LA ALU

module top_alu
#(
    parameter N_BITS = 8,
    parameter OP_BITS = 6
)
(
    input  wire [N_BITS-1:0] in_data,
    input  wire sel_A,
    input  wire sel_B,
    input  wire sel_OP,
    input  wire i_clock,
    input  wire i_reset,
    output wire [N_BITS-1:0] out_c
   
);

// REGISTROS AUXILIARES PARA ALMACENAR VALORES QUE SE PASAN A LA ALU

    reg [N_BITS-1:0] reg_a;
    reg [N_BITS-1:0] reg_b;
    reg [OP_BITS-1:0] reg_op;

    
    
    //INSTANCIACION DE LA ALU
    
    alu    #(N_BITS, OP_BITS) 
    my_alu (
               .in_a(reg_a), 
               .in_b(reg_b), 
               .in_op(reg_op), 
               .op_c(out_c)
    ); 
    
    
    
    //CON LOS SIGUIENTE 3 BLOQUES ALWAYS EVITAMOS TENER UNA CADENA DE IF ELSE PARA LOS DATOS A, B Y C 

    always @(posedge i_clock) begin: DATOA
        if(sel_A) 
            begin
                reg_a <= in_data;
            end
        else if(i_reset) 
            begin
               reg_a <= {N_BITS{1'b0}};   //= 0         
            end
    end
    
    
    always @(posedge i_clock) begin: DATOB
        if(sel_B) 
            begin
                reg_b <= in_data;
            end
        else if(i_reset) 
            begin
               reg_b <= {N_BITS{1'b0}};   //= 0       
            end
    end
    
    
    always @(posedge i_clock) begin: OPERANDO
        if(sel_OP) 
            begin
                reg_op <= in_data; 
            end
        else if(i_reset) 
            begin
               reg_op <= {N_BITS{1'b0}};   //= 0                 
            end
    end


    
    /*  
    //NO SE DEBERIA HACER ESTO PORQUE ASOCIADMOS LOS REGISTROS A VARIOS BLOQUES ALWAYS. 
    
    always @(posedge clock) begin: RESET
        if(reset) begin
            reg_a  <= 8'b0000_0000;
            reg_b  <= 8'b0000_0000;
            reg_op <= 6'b0000_0000;
        end
    end    
    */



endmodule
