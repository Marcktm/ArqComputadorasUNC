`timescale 1ns / 1ps 

module transmitter_tb();

    //Parametros transmitter             
    localparam DBIT = 8;  
    localparam SB_TICK = 16;
    
    
    //Parametros BaudRateGenerator CLOCK 10MHz
    localparam BaudRate = 19200;
    localparam CLK_HZ = 10000000; //10 MHZ 
    
    /*
    //Parametros BaudRateGenerator CLOCK 50MHz (CAMBIAR VALORES EN CLOCK Y DURACIONBIT)
    localparam BaudRate = 19200;
    localparam CLK_HZ = 50000000; //50 MHZ 
    */
    
    //DURACION DEL BIT SON 15/16 TICKS -> NUMERO_DE_TICKS * 16 * PERIODO_CLOCK NS
    localparam DuracionBit = ( CLK_HZ / (16 * BaudRate) ) * 16 * 100; //10MHz
    //localparam DuracionBit = ( CLK_HZ / (16 * BaudRate) ) * 16 * 20; //50MHz
    
    localparam mitad_DuracionBit = DuracionBit / 2;
      
    reg clk;
    reg reset;

    wire s_tick_out;
    reg tx_start; //indica que comience la transmision
    wire tx_done_tick; //indica finalizacion de la transmision
    reg [DBIT-1:0] din; //dato que se va a transmitir (se generan valores aleatorios)
    wire tx; //linea de transmision

    reg [DBIT-1:0] dout; //registro para almacenar el dato recibido de la transmision
    reg parity_out = 0; //registro para guardar la paridad que viene por TX
    integer i = 0; //integer para un ciclo for
    
    //Combinacional para el calculo parity_bit para comparar con parity_out
    //(SI LOS 1 SON PARES-0- O IMPARES-1-) 
    assign parity_bit = ^din;
  
    
   //INSTANCIA BRG
   BaudRateGenerator #(.BaudRate(BaudRate),.CLK_HZ(CLK_HZ))
   BRG
        ( 
           .clk(clk), 
           .reset(reset), 
           .s_tick_out(s_tick_out)
        );
    
    //INSTANCIA TRANSMITTER
    transmitter #(.DBIT(DBIT), .SB_TICK(SB_TICK)) 
    TX (  
                      .clk(clk), 
                      .reset(reset), 
                      .s_tick(s_tick_out), //wire conectado al BRG
                      .tx_start(tx_start), //indicamos que comience la transmision
                      .din(din), //dato que vamos a transmitir
                      .tx_done_tick(tx_done_tick), //wire que indica final de la tansmision
                      .tx(tx) //linea de recepcion, aca ponemos el bit a enviar
   );
    

    initial begin
        clk = 0;
        reset = 0;
        tx_start = 0;
        
        reset = 1;
        #500
        reset = 0; 
        
    end
    
    always begin //CARGO UN DATO RANDOM
            
        din = $urandom; //DATO ALEATORIO 
        
        //Indicamos que comience la transmision
         tx_start = 1;
        
         #mitad_DuracionBit tx_start = 0;  //El transmisor espera 7 ticks por el bit de inicio para comprobar tx==0. (EL RX ESPERA 7 BITS)
         
         if(tx==0) begin  
             for (i = 0; i < DBIT; i = i+1) begin //Recibimos el dato y lo guardamos  
                   #DuracionBit  dout[i] = tx;            
             end 
         end                 
         
         //Recibimos el bit de paridad
         #DuracionBit parity_out = tx;
         
         //Bit de stop
         #DuracionBit
         #DuracionBit
         if(tx==1)   
            $display("El bit de stop es correcto");
         else 
            $display("El bit de stop es incorrecto");
         
                                
    end
    
    always @(*) begin
        
        if(tx_done_tick) 
            if(din == dout && parity_bit == parity_out) //Comparamos lo que enviamos y los bits de paridad
                 $display("Se recibio el dato corretamente (con bit de paridad) -> %d y %d  ", din, dout);
            else 
                $display("Se recibio el dato incorrectamente (con bit de paridad) -> %d y %d  ",  din, dout);
    end 
                  
    always begin
    // #1 es un ns               
    //CLK_HZ = 10000000 (10MHz); -> CLK_PERIOD = 1/CLK_HZ = 100ns  = 100ns/2=50ns PARA SIMULACION 
    //CLK_HZ = 50000000 (50MHz); -> CLK_PERIOD = 1/CLK_HZ = 20 ns  = 20ns/2=10ns PARA SIMULACION   
        #50 clk = ~clk; //10 MHz
        // #10 clk = ~clk; //50 MHz
    end
    
                               
endmodule
