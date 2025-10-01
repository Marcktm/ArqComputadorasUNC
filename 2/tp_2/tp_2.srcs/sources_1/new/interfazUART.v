`timescale 1ns / 1ps

//Organiza los datos de entrada y los almacena en la ALU (intermedio entre ALU y UART
//Tiene una maquina de estado que va asignando los operandos
module interfazUART
		 #(  
		        parameter DBIT=8 
		  )
		  (
                input wire clk, 
                input wire reset,
    
                input wire rx_done_tick, //Indica finalizacion de la recepcion 
                input wire [DBIT-1:0] dout_rx, //dato del rx
        
                output reg  tx_start, //indicamos que comience la transmision
                output wire [DBIT-1:0] din_tx, //lo que sale de la interfaz y entra al transmisor
                input  wire tx_done_tick, //indica que la transmision termino
            
                input  wire [DBIT-1:0] alu_result, //salida de la alu
                output wire [DBIT-1:0] op1, //operandos de la alu
                output wire [DBIT-1:0] op2,
                output wire [DBIT-1:0] op_code
			);
			
			//registros intermedios
			reg [DBIT-1:0] op1_reg;
			reg [DBIT-1:0] op2_reg;
			reg [DBIT-1:0] op_code_reg;
			
			reg tx_start_next;
			reg [1:0] state, state_next;
			
			reg flag_op1; //flags para que copiar dato segun clock
			reg flag_op2; //flags para que copiar dato segun clock
			reg flag_op_code; //flags para que copiar dato segun clock
			
						
			//Definicion de estados
			localparam   OP1 = 2'b00,  //opreador1
			             OP2 = 2'b01,  //operador2
			             OP3 = 2'b11;  //oprador3

			assign din_tx = alu_result; //La salida de la ALU la ponemos como entrada al TX
			assign op1 = op1_reg;
			assign op2 = op2_reg;
			assign op_code = op_code_reg;


			always @(posedge clk) begin
                if (reset) begin
                    state <= OP1;
                    tx_start <= 1'b0; 
                end
                else begin
                    state <= state_next;
                    tx_start <=  tx_start_next;
                end              			    
			end


            always @(posedge clk) begin
            if (flag_op1) 
                    op1_reg <= dout_rx;
            end 
            
            always @(posedge clk) begin
                if (flag_op2) 
                    op2_reg <= dout_rx;
            end 
            
            always @(posedge clk) begin
                if (flag_op_code) 
                    op_code_reg <= dout_rx;
            end 
            
            
    
			//Bloque always que va asignando valores 
			always @(*) begin
			
            state_next = state;
            tx_start_next = 1'b0;
            flag_op1 = 1'b0;
            flag_op2 = 1'b0;
            flag_op_code = 1'b0;             
       
				    case(state) 
						OP1: begin
						 if(rx_done_tick) begin
						     flag_op1 = 1'b1;
                             state_next = OP2;
                         end
				        end
						OP2: begin
						  if(rx_done_tick) begin 
						    flag_op2 = 1'b1;
							state_next = OP3;
						  end
						end 
						OP3: begin
						  if(rx_done_tick) begin
						    flag_op_code = 1'b1;
                            tx_start_next = 1'b1; //comenzamos a mandar lo que esta a la salida de la ALU
                            state_next = OP1;
					      end
					    end	       
					    default: begin
					       state_next = OP1;
					    end
					endcase	
					
				end  

			
endmodule


