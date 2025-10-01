`timescale 1ns / 1ps
 
module BaudRateGenerator 
	#( 
	   parameter   
                BaudRate = 19200,
                CLK_MHZ = 10000000 //10 MHZ                
	 )
	 ( 
		input wire clk, 
		input wire reset, 
		output wire s_tick_out
	 );
	 
	 
	   localparam  DVSR =  CLK_MHZ / (16 * BaudRate); 
	   localparam  COUNT_VALID = 10; 
	   
	   reg [COUNT_VALID : 0] counter = {COUNT_VALID{1'b0}};
	   //reg s_tick;
		
		always@(posedge clk) begin //BLOQUEANTE O NO BLOQUEANTE¿?
			if (reset) 
			 begin
				//s_tick  <= 0;
				counter <= {COUNT_VALID{1'b0}};
			 end
			else 
			 begin
				//s_tick <= 0; //se pone a 0 en cada ciclo de clock
				counter <= counter + {{COUNT_VALID-1{1'b0}}, 1'b1};
					
			     
				if (counter == DVSR-1)  //TENEMOS QUE HACER DVSR-1 PORQUE ARRANCAMOS CONTANDO DE 0
				begin
						//s_tick <= 1;
						counter <= {COUNT_VALID{1'b0}};
				end 
			end
	  end		 	
	  
	    // PODEMOS USAR LO DE ABAJO SI USAMOS //s_tick COMENTADO EN EL ALWAYS
		//assign  s_tick_out = s_tick;
		
		assign s_tick_out = (counter == DVSR-1) ? 1'b1 : 1'b0; //DVSR-1 PORQUE ARRANCAMOS CONTANDO DE 0
		
endmodule
 