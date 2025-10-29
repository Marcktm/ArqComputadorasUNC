`timescale 1ns / 1ps
//Uno los modulos RX, TX y BRG
module top_UART
	 #(	
		parameter    DBIT = 8, //cantidad de bits de la trama de datos
					 SB_TICK = 16, //ticks para el stop bit
					 BaudRate = 9600,
                     CLK_HZ = 100_000_000 //100 MHZ 
	 )
	 ( 					
			input  wire clk, 
			input  wire reset,	
			input  wire rx, //datos de entrada al receptor
			output wire tx, //salida del transmisor
		    output wire rx_done_tick, //indica que termino la recepcion
		    output wire tx_done_tick, //indica que termino la transmision
		    output wire [DBIT-1:0] rx_data_out, //dato recibido
		    input  wire [DBIT-1:0] tx_data_in, //dato a enviar
		    input  wire tx_start, //se pone a uno para comenzar la transmision
		    output wire parity_out		    		      	
	 );
	 
	 /*ESTO PARA PODER SINTETIZAR DOS UARTS EN EL TESTBENCH LUEGO PONERLO COMO PARAMETROS DE NUEVO*/
    /*localparam     DBIT = 8, //cantidad de bits de la trama de datos
                   SB_TICK = 16, //ticks para el stop bit
                   BaudRate = 19200,
                   CLK_HZ = 10000000;*/
	/*************************************/
		 
	wire s_tick; // wire que conecta los pulsos del BauRateGenerator con el TX y RX


                //INSTANCIA BRG
				BaudRateGenerator #(.BaudRate(BaudRate),.CLK_HZ(CLK_HZ)) 
				BRG (  
				            .clk(clk), 
				            .s_tick_out(s_tick), 
				            .reset(reset)
				         );
	
				 
				
				//INSTANCIA DE RX
				reciever #(.DBIT(DBIT), .SB_TICK(SB_TICK))
				RX (  
                         .clk(clk), 
                         .reset(reset), 
                         .rx(rx), //linea de recepcion, aca recibimos los datos
                         .s_tick(s_tick), //wire conectado al BRG
                         .rx_done_tick(rx_done_tick), //wire que indica final de la recepcion
                         .dout(rx_data_out), //wire donde almacenamos el valor de la recepcion
                         .parity_out(parity_out) //wire donde almacenamos el parity bit de la recepcion 
                );
	           
	            //INSTANCIA DEL TX
				transmitter #(.DBIT(DBIT), .SB_TICK(SB_TICK)) 
				TX (
                        .clk(clk), 
                        .reset(reset), 
                        .s_tick(s_tick), //wire conectado al BRG
                        .tx_start(tx_start), //indicamos que comience la transmision
                        .din(tx_data_in), //dato que vamos a transmitir
                        .tx_done_tick(tx_done_tick), //wire que indica final de la tansmision
                        .tx(tx) //linea de recepcion, aca ponemos el bit a enviar
				);	
				 
			
endmodule 

