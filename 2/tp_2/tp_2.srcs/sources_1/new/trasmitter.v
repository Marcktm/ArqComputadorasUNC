`timescale 1ns / 1ps

module transmitter
	#(
		parameter 
		          DBIT = 8,	  // bit de datos 
		          SB_TICK = 16 // ticks para el bit de parada
    )
	 (
		input wire clk, 
		input wire reset, 
		input wire tx_start, //lo ponemos a 1 para iniciar la transmision
		input wire s_tick, //el bit tx_start se pone a uno para indicar el comienzo de trasmision
		input wire [DBIT-1:0] din, //paridad la data a enviar debe ser cargada antes de poner tx_start a 1 
		output reg tx_done_tick, 
		output wire tx
	 );
	
			  //declaracion simbolica de estados
		localparam [2:0]
			idle   =  3'b000,  //estado ocioso 
			start  =  3'b001,	 //estado de inicio
			data   =  3'b010,	 //estado de recepcion de datos
			parity =  3'b011, //estado de bit de paridad
			stop   =  3'b100;	 //estado de finalizacion
								
				//declaracion de señales
	       	reg [2:0] state_reg, state_next; //PARA INDICAR CAMBIO DE ESTADOS
			reg [3:0] s_reg, s_next; //s cuenta hasta 7 en el estado start, hasta 15 en el de datos y hasta SB_TICK en el final
			reg [2:0] n_reg, n_next; //n lleva la cuenta del numero de bits ENVIADOS cuenta de 0 a 7 (3 bits 7-> b'111)
			reg [DBIT-1:0] b_reg, b_next; //b registro en el que introducimos los datos recibidos
			reg tx_reg, tx_next; //tx_reg ponemos los bits de salida
			
			
			assign tx = tx_reg;		
			
			//combinacional para calcular la paridad (XOR DE TODOS LOS BITS)
            assign parity_bit = ^din;

            
			/*
			initial begin //ESTO VA?
					 state_reg <= idle; //cuando se produce el reset volvemos al estado oscioso 
                     s_reg <= 0;  
                     n_reg <= 0;
                     b_reg <= 0;            
                     tx_reg <= 1'b1;                         
            end
            */		 
			
			
			always @(posedge clk)
					if (reset) begin
						state_reg <= idle; //cuando se produce el reset volvemos al estado oscioso 
						s_reg <= 0;  
						n_reg <= 0;
						b_reg <= 0;
						tx_reg <= 1'b1; //TX empieza en alto
					end
					else begin 
						state_reg <= state_next; //cambio de estados sincronizados con el clock
						s_reg     <= s_next;
						n_reg	  <= n_next;
						b_reg     <= b_next;
						tx_reg    <= tx_next;
					end
		
				
				always @* //Combinacinal logica de cambio de estados (QUE ES EL PRIMER BLOQUE?)
				begin 
					state_next = state_reg;
					tx_done_tick = 1'b0;
					s_next = s_reg;
					n_next = n_reg;
					b_next = b_reg;
					tx_next = tx_reg;
				
					
					case (state_reg)
					
							idle:
								begin 
									tx_next = 1'b1; //en estado oscioso el bit se queda en 1		
									if (tx_start) 
									begin //Comenzamos la transmision
										state_next = start; 
										s_next = 0;
										b_next = din; // copiamos la entrada en el registro b_next
									end
								end
							
							start:
								begin 
									tx_next = 1'b0; //ponemos el bit de inicio a 0
									if (s_tick) //Dejamos el bit start disponible durante 16 ticks
										if(s_reg==15) begin 						
												state_next = data; //Si pasaron los los 16 ticks pasamos al estado data
												s_next = 0;
												n_next = 0; 
											end
										else
									 		s_next = s_reg +1; //Contamos ticks
								end 
								
							data: 
								begin 
									tx_next = b_reg[0]; //Ponemos en la linea de transmision el bit a enviar
									if (s_tick)
										if (s_reg == 15) 
										begin  //Dejamos el bit disponible por 16 ticks
											s_next = 0; 
											b_next = b_reg >> 1; //vamos rotando el registro a la derecha para ir eligiendo el bit a enviar
											if(n_reg==(DBIT-1)) //si ya enviamos todos los bits pasamos al estado paritdi
												state_next = parity;
											else 
												n_next = n_reg + 1;
									   end		
									   else 
									        s_next = s_reg + 1 ;
								end
								
							parity: //Ponemos el bit de paridad y lo dejamos disponble por 16 ticks
							     begin
                                     tx_next = parity_bit;
                                     if (s_tick)
                                        if (s_reg == 15) 
                                        begin  
                                            s_next = 0;                     
                                            state_next = stop;
                                        end
                                        else 
                                            s_next = s_reg + 1 ;
			                     end
			                     
							stop: 
								begin 
									tx_next = 1'b1; //Ponemos el bit de stop y lo dejamos disponble por 16 SB_TICK
									if (s_tick)
										if(s_reg == (SB_TICK -1)) 
										begin
											state_next = idle;
											tx_done_tick = 1'b1;
										end
									    else
										  s_next = s_reg + 1;
								end
								
						endcase
				end
				
							
										
		
endmodule
