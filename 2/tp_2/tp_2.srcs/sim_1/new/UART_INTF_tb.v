`timescale 1ns / 1ps

module UART_INTF_tb;

    //Parametros reciever             
    localparam DBIT = 8;  
    localparam SB_TICK = 16;
    
    
    //Parametros BaudRateGenerator CLOCK 10MHz
    localparam BaudRate = 9600; //19200
    localparam CLK_HZ = 100_000_000; //100 MHZ 
    //DURACION DEL BIT SON 15/16 TICKS -> NUMERO_DE_TICKS * 16 * PERIODO_CLOCK NS
    localparam DuracionBit = ( CLK_HZ / (16 * BaudRate) ) * 16 * 100; //10MHz
    
    /*
    //Parametros BaudRateGenerator CLOCK 50MHz (CAMBIAR VALORES EN CLOCK Y DURACIONBIT)
    localparam BaudRate = 19200;
    localparam CLK_HZ = 50000000; //50 MHZ 
    //DURACION DEL BIT SON 15/16 TICKS -> NUMERO_DE_TICKS * 16 * PERIODO_CLOCK NS
    localparam DuracionBit = ( CLK_HZ / (16 * BaudRate) ) * 16 * 20; //50MHz
    */
    
    localparam DuracionTransmision = DuracionBit * 10; //para ALU
    

	 // Inputs
	 reg clk;
	 reg reset;
            
    //operadores para comparar el resultado de la operacion (con valores aleatorios) con resultado que recibo de la ALU
    reg [DBIT-1:0] op; //definimos array para guardar OPERANDOS Y OPERACION
    
    wire [DBIT-1:0] salida;
    wire            tx_top, rx_top;  

	//  ALU UART INTF -> INCLUYE TODO
     ALU_UART_INTFC #( .DBIT(DBIT), .SB_TICK(SB_TICK), .BaudRate(BaudRate), .CLK_MHZ(CLK_MHZ)) /////////////////////////////////
     AUI (
         .clk(clk), 
         .reset(reset), 
         .rx(rx_top), 
         .tx(tx_top),
         .out_test(salida)
     );
     
     
     wire rx_done_tick;
     wire [DBIT-1:0] dout; //Salida del RX del TOP_UART
     wire parity_out;
     
     wire tx_done_tick;
     reg tx_start;
     reg [DBIT-1:0] din;
    
    //INSTANCIA DE LA UART PARA MANDARLE COSAS AL MODULO Y RECIBIRLAS (ESTA UART INCLUYE TX, RX y BRG)
    top_UART  # (.DBIT(DBIT), .SB_TICK(SB_TICK), .BaudRate(BaudRate), .CLK_HZ(CLK_HZ)) /////////////////////////////////
    UART (
            .clk(clk), 
            .reset(reset), 
            .rx(tx_top), //linea de recepcion, aca recibimos los datos //CONECTO EL TX DE ALU_UART_INTFC
            .rx_done_tick(rx_done_tick), //wire que indica final de la recepcion
            .rx_data_out(dout), //wire donde almacenamos el valor de la recepcion
            .parity_out(parity_out), //wire donde almacenamos el parity bit de la recepcion                     

            .tx_start(tx_start), //indicamos que comience la transmision
            .tx_data_in(din), //dato que vamos a transmitir
            .tx_done_tick(tx_done_tick), //wire que indica final de la tansmision
            .tx(rx_top) //linea de transmision, aca ponemos el bit a enviar //CONECTO EL RX DE ALU_UART_INTFC     
    ); 
     
                      
    initial begin
    
            //variables auxiliares para ver el resultado de la operacion
            op=0; //Operando1

            clk = 0;
        
            reset = 1;
            tx_start = 0;
            din = 0;
            #500 //tiene que ser mas grande que el periodo
            reset = 0; 
 
    end
    
    
    always begin //Envio el dato usando TX
        
            #DuracionBit 

            din = $urandom;
                
            tx_start = 1;  //empezamos a transmitir "din" por TX
            #500
            tx_start = 0; 
            
            #DuracionTransmision  //esperamos este tiempo hasta que la transmision este completa
            #DuracionTransmision 
            #DuracionTransmision;

          
     end
   
       
    always begin
        // #1 es un ns       
                
        //CLK_HZ = 10000000 (10MHz); -> CLK_PERIOD = 1/CLK_HZ = 100ns  = 100ns/2=50ns PARA SIMULACION 
        #50 clk = ~clk; //10 MHz
        
        /*
        //CLK_HZ = 50000000 (50MHz); -> CLK_PERIOD = 1/CLK_HZ = 20 ns  = 20ns/2=10ns PARA SIMULACION   
             #10 clk = ~clk; //50 MHz
        */
    end
	
endmodule

