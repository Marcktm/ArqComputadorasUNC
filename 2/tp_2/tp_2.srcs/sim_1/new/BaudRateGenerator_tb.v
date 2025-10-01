`timescale 1ns / 1ps


module BaudRateGenerator_tb();

    // Inputs
    reg clk;
    reg reset;
    
    wire s_tick_out;

    //Parametros BaudRateGenerator
    parameter BaudRate = 19200;
    parameter CLK_MHZ = 10000000; //10 MHZ 

 
   BaudRateGenerator 
       #( 
            .BaudRate(BaudRate), 
            .CLK_MHZ(CLK_MHZ)         
        )
   BRG
        ( 
           .clk(clk), 
           .reset(reset), 
           .s_tick_out(s_tick_out)
        );
        
        
        initial begin
            clk = 0;
        end
        
        always begin //CLK_MHZ = 10000000; -> CLK_PERIOD = 1/CLK_MHZ = 100ns  = 100ns/2=50ns PARA SIMULACION    
            #50 clk = ~clk;
        end 
    


endmodule
