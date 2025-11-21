`timescale 1ns / 1ps


module BaudRateGenerator_tb();

    // Inputs
    reg clk;
    reg reset;
    
    wire s_tick_out;

    //Parametros BaudRateGenerator
    parameter BaudRate = 9600; //115200
    parameter CLK_HZ = 100_000_000; //10 MHZ O 100 MHZ revisar bloque always abajo

 
   //BaudRateGenerator_v1
   BaudRateGenerator
       #( 
            .BaudRate(BaudRate), 
            .CLK_HZ(CLK_HZ)         
        )
   BRG
        ( 
           .clk(clk), 
           .reset(reset), 
           .s_tick_out(s_tick_out)
        );
        
        
        initial begin
            
           
            clk = 0;
      
            reset = 1;
            #500 //tiene que ser mas grande que el periodo
            reset = 0; 
            

        end
        
        /*
        always begin //CLK_HZ = 100_000_000; -> CLK_PERIOD = 1/CLK_HZ = 100ns  = 100ns/2=50ns PARA SIMULACION    
            #50 clk = ~clk;
        end 
        */
        
        always begin //CLK_HZ = 100_000_000 (10MHz); -> CLK_PERIOD = 1/CLK_HZ = 10ns  = 10ns/2=5ns PARA SIMULACION 
            #5 clk = ~clk; //100 MHz
        end
        
    


endmodule
