/*
	  
	   CON GENERADOR FRACCIONAL
	   
	   Frecuencia objetivo (FOBJ).
	   
	       - BAUD -->  velocidad en baudios, ej. 115 200.
           - OSR  -->  oversampling rate, ej. 16.
           - Ejemplo   -->  FOBJ = 115200×16=1843200 Hz
           
       Esta es la frecuencia del tick que queremos generar (cada tick es 1/16 del bit UART).
       
       Formula del incremento
            - INC --> round(FOBJ/CLK_HZ * 2^ACCW)
            - Ejemplo --> Si ACCW = 32, INC ≈ 79 164 838  
            
	   Esto calcula cuánto hay que sumar al acumulador en cada ciclo de reloj para que, en promedio,
	   el bit de "carry" del acumulador se active a la frecuencia deseada.
	   
	   Concepto 
	       - Cada ciclo de reloj (100 MHz) sumás INC a un registro acc de ACCW bits (por ejemplo, 32). Ej. acc = acc + 79,164,838
	       - Cuando ese registro se desborda (pasa de 1 a 0 el bit más alto), eso significa que se cumplió un período de tu señal objetivo (FOBJ).
	       - La idea es que el promedio de desbordamientos por segundo sea exactamente FOBJ. 
	       - Entonces cuando desborda hay un tick.
	       
	    El hardware no maneja números decimales, por eso se reescala todo al espacio de enteros de 32 bits:
	    
	       localparam [ACCW-1:0] INC = ( (FOBJ << ACCW) + (CLK_HZ/2) ) / CLK_HZ;
	       
	       - (FOBJ << ACCW) --> Multiplica por 2^ACCW. Es como pasar a un número fijo con 32 bits de parte fraccional.
	       - (CLK_HZ/2) --> + (CLK_HZ/2) es una forma elegante de implementar redondeo entero en Verilog cuando hacés divisiones con enteros, para que tu INC quede lo más exacto posible. (si no lo ponés, hace truncamiento). 
	       - / CLK_HZ --> Escala el resultado para la frecuencia del reloj base (100 MHz).
	       - [ACCW-1:0] --> Toma solo los bits bajos (32 bits en este caso).
	       
	       - La formula que queremos calcular es -->  INC=round(FOBJ/CLK_HZ * 2^ACCW). Pero en Verilog no existen los números decimales en localparam (solo enteros).
	         Entonces no podés usar round() directamente, usamos una tecnica de redondeo manual round(A/B)=(A+(B/2))/B 
	         Pero como FOBJ << ACCW y CLK_HZ son enteros, el / hace división entera truncada, o sea que descarta los decimales (redondea hacia abajo). 
	         Entonces, si le sumás la mitad del divisor antes de dividir: ((FOBJ << ACCW) + (CLK_HZ / 2)) / CLK_HZ estás implementando redondeo al entero más cercano.
	         Ej. FOBJ = 1_843_200, CLK_HZ = 100_000_000, ACCW = 32 si hacemos (FOBJ/CLK_HZ * 2^ACCW)=79,164,838.36
	             Si truncás (sin redondear): → INC = 79,164,838
	             Si redondeás: → (79,164,838.36 + 0.5) = 79,164,838.86 → 79,164,839 --> Entonces CLK_HZ/2 introduce esa "mitad del divisor" que logra el efecto del +0.5 decimal.
	             
	            | Caso         | INC        | Frecuencia resultante | Error relativo |
                | ------------ | ---------- | --------------------- | -------------- |
                | Sin redondeo | 79 164 838 | 1 843 185.25 Hz       | -0.0008 %      |
                | Con redondeo | 79 164 839 | 1 843 203.07 Hz       | +0.00016 %     |
                

	   ¿Porque uso un acumulador de 32 bits?
	   
        * Si ACCW = 8 bits 
            
            Rango de 2⁸ = 256 valores posibles
            Incremento ideal: 0.018432*256==4.714 { (FOBJ/MHZ) * 256 }
            Tenés que usar INC = 5 (entero más cercano)
            Error = (5/256) - 0.018432 = +2.18 %    
            
            Demasiado error para una UART (tolerancia suele ser ±2 % total, incluyendo TX y RX).
	   
	     * Si ACCW = 32 bits
	       
	         Rango de 2³² ≈ 4.29 × 10⁹
	         Incremento ideal: 0.018432×2³²==79164838.36 { (FOBJ/MHZ) * 2³² }
	         Podés redondear a 79 164 838 (error de 0.0008 %)

             Precisión altísima, jitter ±1 ciclo, frecuencia media casi exacta.
             
       Hasta ahora calculamos el acumulador   
         
        * Frecuencia objetivo (f_obj) = 1.843.200 Hz
            Reloj base (f_clk) = 100.000.000 Hz
         
        * ¿Cuántos ciclos del reloj caben en un tick ideal?
             Nideal​= fobj / ​fclk​​ = 54.25347222...
             Esto significa que idealmente tu tick (el pulso que marca el paso del oversampling ×16)debería ocurrir cada 54.25347222 ciclos de reloj.
             El hardware solo puede contar ciclos enteros, no 0.25 de ciclo. O sea, tenés que usar 54 o 55 ciclos reales entre ticks.
             
        * Solución del acumulador fraccional (Nuestro caso)
           
            El acumulador suma una fracción (INC) que equivale a "avanzar" 0.018432 del rango total por ciclo:
            Cada 54 ciclos → 54 × 0.018432 = 0.995328 (aún no se llena)
            En el ciclo 55 → 55 × 0.018432 = 1.01376 → se pasa de 1 ⇒ overflow → tick
            
            Entonces el tick aparece a los 55 ciclos. Pero como el acumulador guarda el "remanente" (1.01376 - 1 = 0.01376), el próximo desborde ocurrirá un poquito antes → a los 54 ciclos.
            El acumulador genera una secuencia parecida a: 54, 54, 55, 54, 55, 54, 55, 54... El promedio de esos intervalos se acerca a:  (54×3+55×1)/4​=54.25 !JUSTO LO QUE QUEREMO!
            
            | Valor           | Significado                                                               |
            | --------------- | ------------------------------------------------------------------------- |
            | **54.25347**    | cantidad "ideal" de ciclos de reloj por tick                              |
            | **54 y 55**     | los dos valores enteros más cercanos a ese ideal                          |
            | **Alternancia** | el método del acumulador para "promediar" 54 y 55 según la fracción 0.253 |
            | **Resultado**   | promedio perfecto, frecuencia media exacta, jitter ±1 ciclo               |
            
            
       Resumen final
            
            | Concepto              | Valor                                               |
            | --------------------- | --------------------------------------------------- |
            | `INC`                 | 79 164 838 → cuánto sumás cada ciclo                |
            | `acc`                 | acumulador de 32 bits que "se llena" con esas sumas |
            | Overflow (carry)      | genera el tick                                      |
            | Distancia entre ticks | 54 o 55 ciclos de clock                             |
            | Promedio              | 54.253 ciclos → 1 843 200 Hz exactos                |
            | Jitter                | ±1 ciclo                                            |
            
            En cada ciclo de reloj hacés acc = acc + 79_164_838, y el tick ocurre cuando ese acumulador se desborda, lo que pasa a veces a los 54 y a veces a los 55 ciclos, con frecuencia media exacta.    
         
         
        ¿Cual es la diferencia entre BaudRateGenerator_v1 y BaudRateGenerator?
        
            En el primer caso usamos un divisor entero, en el segundo un acumulador fraccional (NCO)
            
            Divisor Entero:
            
                - Calcula DVSR = CLK / (16*BaudRate) y cuenta 0..DVSR-1. 
                - Saca un tick (s_tick_out = 1) por 1 ciclo de clock,
                - Resetea el contador a 0.
                - No hay jitter (el intervalo entre ticks siempre es exactamente DVSR ciclos).
                - Pero si CLK/(16*BaudRate) no es entero (p. ej. 100 MHz / (115200×16) = 54.2535…), te obliga a elegir:
                    * DVSR=54 → +0,469 % rápido  
                    * DVSR=55 → -1,357 % lento
                -(Igual suele "andar" con UART ×16, pero es un error sistemático mayor al de NCO.)
                - Las ventaejas: 
                    * Mas simple, sin jitter. 
                    * Frecuencia con error si el divisor ideal no es entero.
                - Desventaja:
                    * Error sistemático porque el divisor ideal no es entero.
                
            Acumulador fraccional (NCO):
            
                - Suma INC en cada ciclo a un acumulador de ACCW bits y usa el carry como tick.
                - El intervalo entre ticks es 54 o 55 ciclos (±1 ciclo de jitter), de modo que el promedio sea 54.2535… ⇒ frecuencia media exacta (error ~ppm).
                - Ideal cuando el divisor ideal no es entero.
                - Ventajas: 
                    * Frecuencia media perfecta. 
                    * Tiene jitter ±1 ciclo (totalmente tolerable en UART con ×16 y muestreo por mayoría).
                
            Mejora para BaudRateGenerator_V1
            
                Actualmente fija el ancho a ojo --> localparam COUNT_VALID = 10   
               
                Lo ideal es hacerlo asi
            
                localparam integer DVSR = CLK_HZ / (16*BaudRate);
                localparam integer CNT_W = (DVSR <= 2) ? 1 : $clog2(DVSR);
                reg [CNT_W-1:0] counter; 
                
             Entonces con numeros
                
                Comparemos divisor entero vs NCO (acumulador fraccional) para 100 MHz y 115 200×16 = 1 843 200 Hz (tick de oversampling).
                
                - fclk= 100000000 Hz 
                - fobj= 115200×16=1843200 Hz
                - Ciclos ideales por tick= fclk/fobj= 54.253472...
                
                Divisor entero: 
                  
                | DVSR | f_tick = 100 MHz / DVSR |  Error absoluto |               Error relativo | f_baud = f_tick/16 | Error baud |
                | ---: | ----------------------: | --------------: | ---------------------------: | -----------------: | ---------: |
                |   54 |       1 851 851.8519 Hz |  +8 651.8519 Hz |   **+0.469 %** (≈ +4690 ppm) |       115 740.7407 |   +0.469 % |
                |   55 |       1 818 181.8182 Hz | -25 018.1818 Hz | **-1.357 %** (≈ -13 570 ppm) |       113 636.3636 |   -1.357 % |

                NCO (acumulador fraccional, ACCW=32)
                
                    INC*= (fobj/fclk) * 2^32= 79164837.199872
                    INC= round(INC*)= 79164837
                
                    Frecuencia obtenida
                    
                    ftick​= fclk * (INC/2^32)​≈ 100MHz * 79164837​ / 4294967296 ≈1843199.9953 Hz
                    
                    * Error absoluto: -0.0047 Hz
                    * Error relativo: -2.5×10^-9 (≈-0.0025 ppm)
                    * f_baud = ftick/16 ≈ 115199.9997 (misma precisión)
                    
                    * Jitter: el intervalo entre ticks es 54 o 55 ciclos (±1 ciclo), con promedio exacto 54.2535 
                      Para UART ×16 con muestreo por mayoría, ese jitter es irrelevante.

                Resultados
                
                    * Divisor 54: simple, sin jitter, pero +0.469 % de error.
                    * Divisor 55: simple, sin jitter, pero -1.357 % de error.
                    * NCO (INC=79 164 837): error ~0 ppm (-0.0025 ppm) y jitter ±1 ciclo → mejor precisión de lejos.

                    Para una UART, ambos divisores "andan" por tolerancia típica (±2 %), pero el NCO es prácticamente perfecto y te da un tick x16 ideal.