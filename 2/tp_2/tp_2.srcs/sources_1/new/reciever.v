`timescale 1ns / 1ps

module reciever
			#( 
                parameter 
                        DBIT = 8,  //cantidad de bits de datos de la trama 
                        SB_TICK = 16	//cantidad de ticks para el STOP BIT
	       )
			 ( 
				input wire clk, 
				input wire reset, 
				input wire rx, //linea de entrada de datos
				input wire s_tick, //salida del baudrategenerator para avanzar estados
				output reg rx_done_tick, //bit para indicar que termino la recepcion
				output wire [DBIT-1:0] dout, //registro que almacena el dato recibido 
				output wire parity_out //registro que almacena el bit de paridad
			  );
			   
			  //declaracion simbolica de estados
				localparam [2:0]
					idle   =   3'b000,  //estado oscioso 
					start  =   3'b001,	//estado de inicio
					data   =   3'b010,  //estado de recepcion de datos
					parity =   3'b011,  //estado de recepcion bit paridad
					stop   =   3'b100;	//estado de finalizacion
					
				//declaracion de se�ales
				reg [2:0] state_reg, state_next; //son 3 bits, 6 estados
				reg [3:0] s_reg, s_next; //s cuenta hasta 7 en el estado start, hasta 15 en el de datos y hasta SB_TICK en el final
				reg [2:0] n_reg, n_next; //n lleva la cuenta del numero de bits recibidos cuenta de 0 a DBIT (3 bits 7-> b'111) 
				reg [DBIT-1:0] b_reg, b_next; //b registro en el que introducimos los datos recibidos
				reg parity_reg, parity_next; //registro que almacena el bit de paridad
				
				//asigno salidas
				assign dout = b_reg; 
				assign parity_out = parity_reg;
				
			   /*
               initial begin //ESTO VA?
               		state_reg <= idle; //estado inicial
                    s_reg <= 0;  
                    n_reg <= 0;
                    b_reg <= 0;
                    parity_reg <=0;
               end*/
                
			   always @(posedge clk)
					if (reset) begin
						state_reg <= idle; //cuando se produce el reset volvemos al estado oscioso 
						s_reg <= 0;  
						n_reg <= 0;
						b_reg <= 0;
						parity_reg <=0;
					end
					else begin
						state_reg <= state_next; //cambio de estados sincronizados con el clock
						s_reg <= s_next;
						n_reg <= n_next;
						b_reg <= b_next;
						parity_reg <= parity_next;
					end
				
				
				always @* //Combinacinal logica de cambio de estados (QUE ES EL PRIMER BLOQUE?)
				begin 
					state_next = state_reg;
					rx_done_tick = 1'b0; //DUDA PORQUE ESTA PARADO UN CICLO DE CLOCK?
					s_next = s_reg;
					n_next = n_reg;
					b_next = b_reg;
					parity_next = parity_reg;
							
					case (state_reg)
							idle:
								if (~rx) 
								begin //pregunto si el bit de entrada esta puesto a 0 (start bit) y pasamos al otro estado
										state_next = start; 
										s_next = 0;
										b_next = 0;
								end
							
							start: 
								if (s_tick) //si se produce un tick 
									if(s_reg==7) 
									begin //cuento 7 ticks para estar en el medio del bit de start 			
								   		    state_next = data;
											s_next = 0;
											n_next = 0;	
								    end
									else
											s_next = s_reg +1;
							
							data: 
								if (s_tick)
									if (s_reg == 15) 
									begin //Estamos en el punto medio del bit de dato
										s_next = 0; //Reincio para volver a contar hasta 15
										b_next = {rx, b_reg[DBIT-1:1]}; //Esto toma la parte alta de B_REG y la concatena con RX en b_reg[0] (COMO SI HICIERA UN SHIFT A LA DERECHA)
										if(n_reg==(DBIT-1)) //Pregunta si ya tenemos los DBIT-1+1 (n_reg empiez a contar de 0)
											state_next = parity;
										else 
											n_next = n_reg + 1;
									end		
								     else 
									   s_next = s_reg + 1 ;
									
						    parity:
								if (s_tick)
                                    if (s_reg == 15) 
                                    begin //Estamos en el punto medio del bit de paridad
                                        state_next = stop;
                                        s_next = 0; //Reinicio para volver a contar hasta SB_TICK
                                        parity_next = rx; //Guardamos bit de paridad
									end
                                    else 
                                        s_next = s_reg + 1 ;
							
							stop: 
								if (s_tick)
									if(s_reg == (SB_TICK -1)) //Cuento SB_TICK para esperar el bit de stop
									begin 
										 state_next = idle;
										 if (rx) begin //RX tiene que estar en 1 bit de parada, sino es un error
										      rx_done_tick = 1'b1; //Indicamos que el dato esta listo
										 end 
									end
								    else
									   s_next = s_reg + 1;
									
						  default:
                                  state_next = idle;
                               
						endcase
				end
				 
							
										
		
endmodule
