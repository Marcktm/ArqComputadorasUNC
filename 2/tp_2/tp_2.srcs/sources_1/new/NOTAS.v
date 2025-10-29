
/*
  PARA PODER SINTETIZAR OUT-OF-CONTEXT DOS UARTS:
  
  SE COMENTAN LOS PARAMETROS DE ALU_UART_INTFC Y top_UART
  
  Y SE AGREGA COMO LOCALPARAM LO SIGUIENTE
  
  */
  
 /*ESTO ES PARA REEMPLAZAR Y PODER SINTETIZAR DOS UARTS EN EL TESTBENCH LUEGO PONERLO COMO PARAMETROS DE NUEVO*/
 localparam     DBIT = 8, //cantidad de bits de la trama de datos
                SB_TICK = 16, //ticks para el stop bit
                BaudRate = 19200,
                CLK_MHZ = 10000000;
 /*************************************/
 
 
 /*
        
        SE TIENE QUE VERIFICAR QUE ESTOS PARAMETROS SEAN IGUALES A LO LARGO DE TODO EL PROYECTO.
        TANTO EN ALU_UART_INTF_tb, ALU_UART_INT Y top_UART
        COMENTAR TAMBIEN EN ESTOS ARCHIVOS LA INSTANCIACION DE PARAMETROS DE LOS MODULOS. 
      
         
 */


/*

Paridad ODD (impar): parity_bit = ^din; (el número total de bits 1 debe ser impar).

Paridad EVEN (par): parity_bit = ~(^din); (el número total de bits 1 debe ser par).

*/

/*


El código que has compartido tiene algunos problemas que pueden generar errores de síntesis y simulación en Vivado Verilog. Vamos a revisar los detalles más importantes que podrían estar causando estos problemas.

### Problemas en tu código:

1. **Asignación de `out_test` en un `always` bloque sin declaración adecuada.**

   * En Verilog, las señales que se asignan en un bloque `always` deben ser registradas como señales `reg` (o `logic` si estás usando SystemVerilog).
   * El error está en la línea `out_test = rx_data_out;`. Como `out_test` es una señal de salida, debe ser un `reg` (no una señal `wire`), ya que se está utilizando en un bloque `always`.

   **Solución:**
   Cambia la declaración de `out_test` de `wire` a `reg`:

   ```verilog
   output reg [DBIT-1:0] out_test
   ```

2. **Asignación en un bloque `always` con una señal de tipo `wire`.**

   * En Verilog, no puedes asignar valores a señales de tipo `wire` dentro de un bloque `always`. Las señales de tipo `wire` deben ser asignadas de manera continua (usando `assign` fuera del bloque `always`).

   **Solución:** La declaración de `out_test` debe ser de tipo `reg` si planeas asignarla dentro de un bloque `always`. Ya lo hemos corregido arriba.

3. **`rx_done_tick` y otras señales no están conectadas adecuadamente.**

   * Asegúrate de que las señales como `rx_done_tick` y `rx_data_out` estén correctamente conectadas a la lógica del resto del sistema, como el bloque `UART` y el bloque de ALU si corresponde. Si las señales no se están utilizando, deberías conectarlas o eliminarlas.

4. **En la instanciación del módulo `top_UART`, la señal `tx_data_in` no se conecta a ningún valor:**

   * El `tx_data_in` está declarado, pero nunca es asignado o conectado. Esto podría causar un error de síntesis si la señal no se usa correctamente.

   **Solución:** Si la señal `tx_data_in` no se utiliza en este módulo, elimínala. Si se necesita, debes conectarla a alguna señal adecuada.

5. **Falta la definición de las señales de la ALU.**

   * Tienes señales para una ALU (`alu_result`, `op1`, `op2`, `op_code`, `zero`), pero no se está viendo cómo se conectan o se usan en este módulo. Si son parte de la funcionalidad, asegúrate de que están correctamente conectadas.

6. **Posible error de estilo o concisión:**

   * Aunque no es un error técnico, el estilo puede mejorarse. La instancia de `top_UART` está comentada como "bloque", pero puede ser confuso si no se documenta adecuadamente.

### Versión corregida del código:

Aquí hay una versión corregida y mejorada del código:

```verilog
`timescale 1ns / 1ps

module ALU_UART_INTFC
    #(   
        parameter DBIT = 8,         // cantidad de bits de la trama de datos
                  SB_TICK = 16,   // ticks para el stop bit
                  BaudRate = 19200,
                  CLK_MHZ = 10000000
    )
    (   
        input wire clk, 
        input wire reset,    
        input wire rx,      // datos de entrada al receptor
        output wire tx,     // salida del transmisor     
        output reg [DBIT-1:0] out_test // Cambiado de wire a reg
    );

    wire rx_done_tick;
    wire tx_done_tick;
    wire [DBIT-1:0] rx_data_out;
    wire [DBIT-1:0] tx_data_in;
    wire tx_start; // tx_start conecta la salida de la interfaz al transmisor (tx_start)
    wire parity_out; // No lo usas, pero está declarado

    wire [DBIT-1:0] alu_result;
    wire [DBIT-1:0] op1;
    wire [DBIT-1:0] op2;
    wire [DBIT-1:0] op_code;
    wire zero; // No lo usas, pero está declarado
    
    // Instanciación del módulo UART
    top_UART #( 
        .DBIT(DBIT), 
        .SB_TICK(SB_TICK), 
        .BaudRate(BaudRate), 
        .CLK_MHZ(CLK_MHZ)
    ) UART (                        
        .clk(clk),  
        .reset(reset), 
        .rx(rx),
        .tx(tx),                          
        .rx_done_tick(rx_done_tick), 
        .rx_data_out(rx_data_out), 
        .tx_start(tx_start),  
        .tx_data_in(tx_data_in),
        .tx_done_tick(tx_done_tick),
        .parity_out(parity_out)                      
    );

    // Bloque always que asigna valores a out_test
    always @(*) begin
        if (rx_done_tick) begin
            out_test = rx_data_out; // Asignación cuando se recibe datos
        end
    end

endmodule
```

### Resumen de los cambios:

1. Cambié `out_test` a `reg` en lugar de `wire` para poder asignarla dentro del bloque `always`.
2. Mejoré algunos comentarios y la organización del código.
3. Asegúrate de que todas las señales de la ALU (como `alu_result`, `op1`, `op2`, `op_code`, etc.) estén correctamente conectadas si se van a utilizar. Si no las usas en este módulo, elimínalas.

Prueba este código en Vivado y revisa si la síntesis o simulación ahora se ejecuta correctamente. Si tienes más detalles sobre las señales o algún error específico, no dudes en compartirlo.







-----------------












Ah, ya veo. El comportamiento que describes sugiere que todo está funcionando bien durante el ciclo en que `rx_done_tick` está en 1, pero cuando vuelve a 0, `out_test` se resetea a 0. Esto es normal si estás usando un bloque `always @(*)` con una asignación predeterminada para `out_test` (en este caso, `out_test = 0;`).

### Análisis del problema:

En tu código:

```verilog
always @(*) begin
    out_test = 0; // Asignación predeterminada
    if (rx_done_tick) begin
        out_test = rx_data_out; // Asignación cuando se recibe datos
    end
end
```

El bloque `always @(*)` está diseñado para asignar `out_test = 0` en todos los casos **excepto** cuando `rx_done_tick` es 1, en cuyo caso asigna `rx_data_out` a `out_test`. Cuando `rx_done_tick` vuelve a 0, `out_test` automáticamente vuelve a 0, ya que esa es la asignación predeterminada en el bloque.

### Problema:

Este comportamiento puede ser problemático si deseas que el valor de `out_test` se mantenga durante varios ciclos de reloj, incluso después de que `rx_done_tick` vuelva a 0.

### Soluciones:

1. **Usar un registro para mantener el valor de `out_test`:**

   Una posible solución es utilizar un registro (flip-flop) para almacenar el valor de `rx_data_out` mientras `rx_done_tick` está en 1 y mantener ese valor durante los ciclos posteriores, incluso cuando `rx_done_tick` vuelve a 0.

   Aquí tienes una forma de hacerlo:

   ```verilog
   reg [DBIT-1:0] out_test_reg;

   always @(posedge clk or posedge reset) begin
       if (reset) begin
           out_test_reg <= 0;  // Resetear el valor cuando se activa el reset
       end else if (rx_done_tick) begin
           out_test_reg <= rx_data_out;  // Almacenar el valor de rx_data_out cuando rx_done_tick es 1
       end
   end

   always @(*) begin
       out_test = out_test_reg;  // Asignar el valor almacenado a out_test
   end
   ```

   Con este enfoque:

   * Cuando `rx_done_tick` es 1, el valor de `rx_data_out` se almacena en el registro `out_test_reg`.
   * El valor almacenado en `out_test_reg` se mantiene hasta que se reciba un nuevo dato (cuando `rx_done_tick` vuelva a ser 1).
   * Cuando `rx_done_tick` vuelva a 0, `out_test_reg` sigue manteniendo el último valor de `rx_data_out`.

2. **Usar un registro con un ciclo de retención:**

   Si prefieres que `out_test` retenga el valor incluso después de que `rx_done_tick` vuelva a 0, podrías usar un registro con una lógica similar, pero también haciendo uso de un ciclo de retención. Esto es útil si deseas hacer alguna operación adicional o manipulación con el valor retenido.

   ```verilog
   reg [DBIT-1:0] out_test_reg;
   reg rx_done_tick_reg;

   always @(posedge clk or posedge reset) begin
       if (reset) begin
           out_test_reg <= 0;
           rx_done_tick_reg <= 0;
       end else begin
           if (rx_done_tick && !rx_done_tick_reg) begin  // Detectar flanco de subida de rx_done_tick
               out_test_reg <= rx_data_out;
           end
           rx_done_tick_reg <= rx_done_tick;
       end
   end

   always @(*) begin
       out_test = out_test_reg;
   end
   ```

   Aquí:

   * Usamos `rx_done_tick_reg` para detectar el flanco de subida de `rx_done_tick` (cuando pasa de 0 a 1).
   * En ese flanco de subida, almacenamos el valor de `rx_data_out` en el registro `out_test_reg`.
   * Luego, ese valor se mantiene en `out_test_reg` hasta que se detecte el siguiente flanco de subida.

### Resumen:

El problema es que el valor de `out_test` se reseteará a 0 cuando `rx_done_tick` vuelva a 0, porque tienes una asignación predeterminada de `out_test = 0` en el bloque `always @(*)`. La solución consiste en almacenar el valor de `rx_data_out` en un registro cuando `rx_done_tick` sea 1, y luego mantener ese valor hasta que se reciba un nuevo dato. Esto garantiza que el valor se mantenga incluso después de que `rx_done_tick` vuelva a 0.

Cualquiera de las soluciones anteriores te permitirá mantener el valor de `out_test` de forma persistente, mientras que el comportamiento de `rx_done_tick` y `rx_data_out` se mantengan controlados.


set_property PACKAGE_PIN B18 [get_ports rx]
set_property PACKAGE_PIN A18 [get_ports tx]