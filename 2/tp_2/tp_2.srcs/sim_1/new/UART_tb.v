`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 00:13:29
// Design Name: 
// Module Name: UART_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UART_tb(

    );
endmodule


    //Parametros reciever             
    localparam DBIT = 8;  
    localparam SB_TICK = 16;
    
    
    //Parametros BaudRateGenerator CLOCK 10MHz
    localparam BaudRate = 9600; 
    localparam CLK_MHZ = 10000000; //10 MHZ 
    //DURACION DEL BIT SON 15/16 TICKS -> NUMERO_DE_TICKS * 16 * PERIODO_CLOCK NS
    localparam DuracionBit = ( CLK_MHZ / (16 * BaudRate) ) * 16 * 100; //10MHz
    
    /*
    //Parametros BaudRateGenerator CLOCK 50MHz (CAMBIAR VALORES EN CLOCK Y DURACIONBIT)
    localparam BaudRate = 19200;
    localparam CLK_MHZ = 50000000; //50 MHZ 
    //DURACION DEL BIT SON 15/16 TICKS -> NUMERO_DE_TICKS * 16 * PERIODO_CLOCK NS
    localparam DuracionBit = ( CLK_MHZ / (16 * BaudRate) ) * 16 * 20; //50MHz
    */
    
    localparam DuracionTransmision = DuracionBit * 10; //para ALU
    

	 // Inputs
	 reg clk;
	 reg reset;
            
     
     //contador para manejar que datos mandamos a la ALU
     //OPERADOR1, OPERADOR2 Y OPERACION
     integer contador = 0;
     
     
     //Para seleccionar las operaciones aleatorias
     localparam CANT_OPERACIONES = 8;
     reg [DBIT-1:0] operaciones [CANT_OPERACIONES-1:0]; //array para guardar los codigo de opearacion son 8 opreaciones 7 es un index no numero de bit.

    //operadores para comparar el resultado de la operacion (con valores aleatorios) con resultado que recibo de la ALU
    reg [DBIT-1:0] op[2:0]; //definimos array para guardar OPERANDOS Y OPERACION

	//  ALU UART INTF -> INCLUYE TODO
     ALU_UART_INTFC #( .DBIT(DBIT), .SB_TICK(SB_TICK), .BaudRate(BaudRate), .CLK_MHZ(CLK_MHZ)) /////////////////////////////////
     AUI (
         .clk(clk), 
         .reset(reset), 
         .rx(rx_top), 
         .tx(tx_top)
     );
     
        
     
     wire rx_done_tick;
     wire [DBIT-1:0] dout; //Salida del RX del TOP_UART
     wire parity_out;
     
     wire tx_done_tick;
     reg tx_start;
     reg [DBIT-1:0] din;
    
    //INSTANCIA DE LA UART PARA MANDARLE COSAS AL MODULO Y RECIBIRLAS (ESTA UART INCLUYE TX, RX y BRG)
    top_UART  # (.DBIT(DBIT), .SB_TICK(SB_TICK), .BaudRate(BaudRate), .CLK_MHZ(CLK_MHZ)) /////////////////////////////////
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
    
            //almacenamos las operaciones en el array
            operaciones[0] = `ADD;
            operaciones[1] = `SUB;
            operaciones[2] = `AND;
            operaciones[3] = `OR;
            operaciones[4] = `XOR;
            operaciones[5] = `SRA;
            operaciones[6] = `SRL;
            operaciones[7] = `NOR;
            
            //variables auxiliares para ver el resultado de la operacion
            op[0]=0; //Operando1
            op[1]=0; //Operando2
            op[2]=0; //Operando3 operacion
            
            clk = 0;
      
            reset = 1;
            #500 //tiene que ser mas grande que el periodo
            reset = 0; 
 
    end
    
    
    always begin //Envio el dato usando TX
        
          #DuracionBit 
        
          for (contador = 0; contador <3; contador=contador+1)
          begin
            
            if(contador == 2)  //creo operacion    
                din = operaciones[$urandom%(CANT_OPERACIONES-1)]; //selecciono operaciones aletaoria
            else   //creo opreadores   
                din = $urandom;
                
            op[contador]=din; //guardamos operando para comprobar EN EL OTRO BLOQUE ALWAYS

            
            tx_start = 1;  //empezamos a transmitir "din" por TX
            #500
            tx_start = 0; 
            
            #DuracionTransmision  //esperamos este tiempo hasta que la transmision este completa
            #DuracionTransmision ;
             
            //$display("Envio operador -> %d --- Llega a la interfaz (Desde TX) -> %d", din, AUI.inter.dout_rx );
          end
          
          #DuracionTransmision ;//esperamos este tiempo hasta que la transmision este completa
     end
   
     
     always @* begin //Esperamos recepcion del dato, del modulo RX
     
        if(rx_done_tick) begin
        
             
             case(op[2]) //op[2] contiene la operacion
                     
                     // COMPARAMOS LOS DATOS ENVIADOS CON EL RESULTADO RECIBIDO POR TX QUE SE GUARDA EN DOUT
                     
                             `ADD:  if(dout == (op[0] + op[1])) 
                                         $display("ADD correcto -> %d + %d = %d ", op[0], op[1], dout );
                                    else 
                                         $display("ADD incorrecto -> %d + %d = %d", op[0], op[1], dout);
                             `SUB:  if(dout == (op[0] - op[1])) 
                                         $display("SUB correcto -> %d - %d = %d ", op[0], op[1], dout);
                                    else 
                                         $display("SUB incorrecto -> %d - %d = %d", op[0], op[1], dout);
                             `AND:  if(dout == (op[0] & op[1])) 
                                         $display("AND correcto -> %d & %d = %d ", op[0], op[1], dout);
                                    else 
                                         $display("AND incorrecto -> %d + %d = %d", op[0], op[1], dout);
                             `OR:   if(dout == (op[0] | op[1])) 
                                         $display("OR correcto -> %d | %d = %d ", op[0], op[1], dout);
                                    else 
                                         $display("OR incorrecto -> %d | %d = %d", op[0], op[1], dout);                                 
                             `XOR:  if(dout == (op[0] ^ op[1])) 
                                         $display("XOR correcto -> %d ^ %d = %d ", op[0], op[1], dout);
                                    else 
                                         $display("XOR incorrecto -> %d ^ %d = %d", op[0], op[1], dout);
                             `SRA:  if($signed(dout) == ( $signed(op[0]) >>> op[1]) ) 
                                         $display("SRA correcto -> %d >>> %d = %d ", op[0], op[1], dout);
                                    else begin
                                         $display("SRA incorrecto -> %d >>> %d = %d", op[0], op[1], dout);
                                    end    
                             `SRL:  if(dout == (op[0] >> op[1])) 
                                         $display("SRL correcto -> %d >> %d = %d ", op[0], op[1], dout);
                                    else 
                                         $display("SRL incorrecto -> %d >> %d = %d", op[0], op[1], dout);
                             `NOR:  if(dout == (op[0] | op[1]))
                                         $display("NOR correcto -> %d | %d = %d ", op[0], op[1], dout);
                                    else 
                                         $display("NOR incorrecto -> %d | %d = %d", op[0], op[1], dout);
                             endcase

        end
             
     end    
                      

    
         
    always begin
        // #1 es un ns       
                
        //CLK_MHZ = 10000000 (10MHz); -> CLK_PERIOD = 1/CLK_MHZ = 100ns  = 100ns/2=50ns PARA SIMULACION 
        #50 clk = ~clk; //10 MHz
        
        /*
        //CLK_MHZ = 50000000 (50MHz); -> CLK_PERIOD = 1/CLK_MHZ = 20 ns  = 20ns/2=10ns PARA SIMULACION   
             #10 clk = ~clk; //50 MHz
        */
    end
	
endmodule

