# UNIVERSIDAD NACIONAL DE CÓRDOBA
## Arquitectura de Computadoras 2025
### TP2 - UART

Alumnos:

   - Sleiman, Mohamad
   - Reyeros, Marcos

## Objetivo
Comprender el funcionamiento del protocolo **UART (Universal Asynchronous Receiver and Transmitter)** y analizar la **transmisión y recepción de datos asíncrona** entre dispositivos digitales.

---
## Comunicacion Asincrona 

La comunicación asíncrona es un método de transmisión en el que emisor y receptor no comparten una señal de reloj común. En vez de mantenerse sincronizados de forma permanente, cada trama incorpora su propia información de sincronización, lo que permite que ambos dispositivos intercambien datos sin necesitar una coordinación temporal continua. Por ejemplo, UART y RS-232.

A diferencia de la comunicación asíncrona, la **comunicacion síncrona** usa un reloj compartido para mantener emisor y receptor sincronizados durante toda la transmisión. Por ejemplo, SPI, I2C y USB.

![Comparación entre comunicación síncrona y asíncrona](diagramas/sincrona vs asincrona.jpg)


## Comunicacion UART

2. **Analizar la trama UART** indicando la función de cada uno de sus campos:  
   - Bit de **Start**  
   - **Bits de datos**  
   - **Bit de paridad** (si aplica)  
   - **Bits de Stop**

3. **Explicar el funcionamiento del receptor UART**, detallando las etapas de la **secuencia de estados Rx**: detección del bit de inicio, conteo de ticks, muestreo de bits de datos y validación de stop.

4. **Describir el rol del Baud Rate Generator**, explicando cómo influye la velocidad de transmisión y qué ocurre si no coincide entre emisor y receptor.

5. **Representar mediante un diagrama de bloques** el sistema UART, incluyendo al menos:  
   - Generador de Baud Rate  
   - Transmisor (Tx)  
   - Receptor (Rx)  
   - Interfaz (INTF)  
   - Unidad aritmético-lógica (ALU)


---

## Baud Rate Generator
Genera un **tick** 16 veces por *baud rate*.

Si el *baud rate* es **19.200** ciclos por segundo, la frecuencia de muestreo debe ser  
**19.200 × 16 = 307.200** ticks por segundo.  
Si el clock de la placa es **50 MHz**, hay que generar un tick cada **163** ciclos de reloj.

Clock / (BaudRate * 16) ≈ 163

El **Baud Rate Generator** es un **contador módulo 163**.


## Secuencia de estados Rx

    Asumiendo N bits de datos, M bits de Stop.

1) Esperar a que la señal de entrada sea 0, momento en el  que inicia el bit de Start. Iniciar el Tick Counter.
2) Cuando el contador llega a 7, la señal de entrada está en  el punto medio del bit de Start. Reinicar el contador.
3) Cuando el contador llega a 15, la señal de entrada avanza  1 bit, y alcanza la mitad del primer bit de datos. Tomar este  valor e ingresarlo en un shift register. Reinicar el contador.
4) Repetir el paso 3 N-1 veces para tomar los bits restantes.
5) Si se usa bit de paridad, repetir el paso 3 una vez mas.
6) Reperir el paso 3 M veces, para obtener los bits de Stop.

martin.miguel.pereyra@unc.edu.ar
s.rodriguez@unc.edu.ar
eze.rodriguez@unc.edu.ar
