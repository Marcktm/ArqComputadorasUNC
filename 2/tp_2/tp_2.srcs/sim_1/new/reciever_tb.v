`timescale 1ns / 1ps

module reciever_tb();

    //Parametros reciever             
    localparam DBIT = 8;  
    localparam SB_TICK = 16;
    
    
    //Parametros BaudRateGenerator CLOCK 10MHz
    localparam BaudRate = 19200;
    localparam CLK_MHZ = 10000000; //10 MHZ 

    /*
    //Parametros BaudRateGenerator CLOCK 50MHz (CAMBIAR VALORES EN CLOCK Y DURACIONBIT)
    localparam BaudRate = 19200;
    localparam CLK_MHZ = 50000000; //50 MHZ 
    */

    //DURACION DEL BIT SON 15/16 TICKS -> NUMERO_DE_TICKS * 16 * PERIODO_CLOCK NS
    localparam DuracionBit = ( CLK_MHZ / (16 * BaudRate) ) * 16 * 100; //10MHz
    //localparam DuracionBit = ( CLK_MHZ / (16 * BaudRate) ) * 16 * 20; //50MHz
      
    reg clk;
    reg reset;
    
    wire s_tick_out;
    reg rx; //registro por el cual vienen los datos
    wire rx_done_tick; //indica finalizacion de la recepcion
    wire [DBIT-1:0] dout; //wire donde se guarda lo recibido
    wire parity_out; //wire donde se guarda el bit de paridad
    
    //Para generar valores aleatorios
    reg [DBIT-1:0] din; //registro que va a recibir el reciever
    integer i = 0; //integer para un ciclo for
    
   //Combinacional para el calculo parity_bit para comparar con parity_out
   //(SI LOS 1 SON PARES-0- O IMPARES-1-) 
    assign parity_bit = ^din;
 
    
   //INSTANCIA BRG
   BaudRateGenerator #(.BaudRate(BaudRate),.CLK_MHZ(CLK_MHZ)) 
   BRG
        ( 
           .clk(clk), 
           .reset(reset), 
           .s_tick_out(s_tick_out)
        );
    
    //INSTANCIA RECIEVER
    reciever #(.DBIT(DBIT), .SB_TICK(SB_TICK)) 
    RX (  
                      .clk(clk), 
                      .reset(reset), 
                      .rx(rx), //linea de recepcion, aca recibimos los datos
                      .s_tick(s_tick_out), //wire conectado al BRG
                      .rx_done_tick(rx_done_tick), //wire que indica final de la recepcion
                      .dout(dout), //wire donde almacenamos el valor de la recepcion
                      .parity_out(parity_out) //wire donde almacenamos el parity bit de la recepcion
   );
    
                               
    initial begin
        clk = 0;
        reset = 0;
        rx = 1;
        
        reset = 1;
        #500
        reset = 0; 
        
    end
    
    always begin //TRANSMISION DE UN DATO
            
        din = $urandom; //Creo un dato aletorio
        
        //Inicio de transmision
        #DuracionBit  rx = 0;
        
        //Mandamos datos          
        for (i = 0; i < DBIT; i = i+1) 
         begin               
               #DuracionBit   rx = din[i];            
         end
         
         //mando bit de paridad 
        #DuracionBit    rx = parity_bit;
                                             
         //Retardo del bit de stop -> rx = 1;          
        #DuracionBit    rx = 1;
        #DuracionBit    rx = 1;         
                              
    end
    
    
    always @(*) begin
        
        if(rx_done_tick) 
            if(din == dout && parity_bit == parity_out) //Comparamos lo que recibe con lo que mandamos y los bits de paridad
                 $display("Se recibio el dato corretamente (con bit de paridad) -> %d y %d  ", din, dout);
            else 
                $display("Se recibio el dato incorrectamente (con bit de paridad)-> %d y %d  ", din, dout);
    end 
    
                  
    always begin
    // #1 es un ns               
    //CLK_MHZ = 10000000 (10MHz); -> CLK_PERIOD = 1/CLK_MHZ = 100ns  = 100ns/2=50ns PARA SIMULACION 
    //CLK_MHZ = 50000000 (50MHz); -> CLK_PERIOD = 1/CLK_MHZ = 20 ns  = 20ns/2=10ns PARA SIMULACION   
        #50 clk = ~clk; //10 MHz
        // #10 clk = ~clk; //50 MHz
    end 
                         
endmodule
