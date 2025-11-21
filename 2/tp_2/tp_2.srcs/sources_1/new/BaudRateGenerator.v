`timescale 1ns / 1ps
  
module BaudRateGenerator 
    #(
        parameter integer BaudRate  = 9600, //9600 //19200
        parameter integer OSR    = 16,
        parameter integer ACCW   = 32,
        parameter [63:0] CLK_HZ = 100_000_000
    )
    (
        input  wire clk,
        input  wire reset,
        output reg  s_tick_out
    );
    
    // ¿Qué pasaría si NO usás 64 bits? 
    // FOBJ << ACCW con FOBJ de 32 bits y ACCW=32 ⇒ 0 (corrimiento destruye los bits).
    // FOBJ * (1<<ACCW) en 32 bits ⇒ overflow (valor corrupto).
    // Resultado: INC = 0 o un número erróneo.
    
    localparam integer FOBJ    = BaudRate * OSR;      // 1_843_200 si 115200x16 //FOBJ es la frecuencia objetivo del tick (baud × oversampling). Esto cabe en 32 bits sin drama.
    localparam [63:0]  SCALE   = (64'd1 << ACCW);     // 2^ACCW en 64 bits // Así te asegurás que el resultado no se recorte. Ej.: con ACCW=32 → SCALE = 4_294_967_296 (cabe en 64 bits).
    localparam [63:0]  ROUND   = (CLK_HZ >> 1);      // CLK/2 para redondeo
    localparam [63:0]  NUM     = (SCALE * FOBJ) + ROUND; // Todo en 64 bits para no desbordar (porque 2^32 x 1,8 MHz ≈ 7.9e15).
    localparam [63:0]  INC64   = NUM / CLK_HZ; // Dividís en 64 bits. Esto es exactamente INC64=round( (FOBJ/CLK) x ⋅2^ACCW)
    localparam [ACCW-1:0] INC  = INC64[ACCW-1:0]; //Te quedás con los ACCW bits bajos para usar en el acumulador. (Los altos quedarían a 0 dada la magnitud, pero recortar es correcto/limpio.)


    
    // INC = round(FOBJ/CLK_HZ * 2^ACCW)
    //localparam [ACCW-1:0] INC = ((FOBJ << ACCW) + (CLK_HZ/2)) / CLK_HZ;

    reg  [ACCW-1:0] acc;
    wire [ACCW:0]   sum = {1'b0, acc} + {1'b0, INC}; //suma se evalua combinacionalmente
    //sum no es un registro; es un wire (una señal lógica) Por lo tanto: sum se actualiza continuamente, cada vez que cambia acc o INC.
    //Cada vez que acc cambia, sum = acc + INC se actualiza automáticamente (sin esperar el reloj).
    //En cada flanco de reloj, el circuito usa la versión actual de sum (que equivale a acc + INC) y actualiza acc y tick con ese resultado.

    always @(posedge clk) begin
        if (reset) begin
            acc      <= 'b0;
            s_tick_out <= 1'b0;
        end else begin
            acc      <= sum[ACCW-1:0]; // wrap
            s_tick_out <= sum[ACCW];     // carry = tick (1 ciclo)
        end
    end
endmodule

	  

