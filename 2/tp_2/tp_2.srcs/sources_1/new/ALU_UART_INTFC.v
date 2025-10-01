`timescale 1ns / 1ps

module ALU_UART_INTFC
	#(	
		parameter    DBIT = 8, //cantidad de bits de la trama de datos
					 SB_TICK = 16, //ticks para el stop bit
					 BaudRate = 19200,
                     CLK_MHZ = 10000000
	 )
	 ( 					
			input  wire clk, 
			input  wire reset,	
			input  wire rx, // datos de entrada al receptor
			output wire tx //salida del transmisor	    		      	
	 );
	 
	 /*ESTO PARA PODER SINTETIZAR DOS UARTS EN EL TESTBENCH LUEGO PONERLO COMO PARAMETROS DE NUEVO*/
     /*localparam     DBIT = 8, //cantidad de bits de la trama de datos
                    SB_TICK = 16, //ticks para el stop bit
                    BaudRate = 19200,
                    CLK_MHZ = 10000000;*/
     /*************************************/
		 
	wire rx_done_tick;
	wire tx_done_tick;
	wire [DBIT-1:0] rx_data_out;
    wire [DBIT-1:0] tx_data_in;
	wire tx_start; //tx_start conecta la salida de la interfaz al trasmisor (tx_start)
	wire parity_out; //NO LO USO
	
    wire [DBIT-1:0] alu_result;
	wire [DBIT-1:0] op1; 
    wire [DBIT-1:0] op2;
    wire [DBIT-1:0] op_code;
	wire zero; //NO LO USO
	
	       
				
                top_UART #( .DBIT(DBIT), .SB_TICK(SB_TICK), .BaudRate(BaudRate), .CLK_MHZ(CLK_MHZ)) /////////////////////////////////
                UART (                        
						  .clk(clk),  
                          .reset(reset), 
                          .rx(rx),
                          .tx(tx),                          
                          .rx_done_tick(rx_done_tick), 
                          .rx_data_out(rx_data_out), 
                          .tx_start(tx_start),  
                          .tx_data_in(tx_data_in),
                          .tx_done_tick(tx_done_tick),
                          .parity_out(parity_out)                      
                      );
				 
				 
				interfazUART #(.DBIT(DBIT)) 
				inter (
							     .clk(clk),  
							     .reset(reset), 
							     .rx_done_tick(rx_done_tick), 
							     .dout_rx(rx_data_out), 
							     .tx_start(tx_start),  
							     .din_tx(tx_data_in),
						         .tx_done_tick(tx_done_tick), 
							     .alu_result(alu_result), 
							     .op1(op1), 
							     .op2(op2), 
							     .op_code(op_code)
						);
		
				ALU  #(.DBIT(DBIT)) 
				     alu (       
				                 .op1(op1), 
				                 .op2(op2), 
				                 .op_code(op_code), 
				                 .result(alu_result), 
				                 .zero(zero)
				         );

endmodule