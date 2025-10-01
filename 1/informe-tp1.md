# UNIVERSIDAD NACIONAL DE CÓRDOBA
## Arquitectura de Computadoras 2025

### TP1 - ALU Parametrizable

* Alumnos:
    * Sleiman, Mohamad
    * Reyeros, Marcos

---
### CONSIGNA:

* Implementar en FPGA una ALU.
* La ALU debe ser parametrizable (bus de datos) para
poder ser utilizada posteriormente en el trabajo ﬁnal.
* Validar el desarrollo por medio de Test Bench.
    * El testbench debe incluir generación de entradas
aleatorias y código de chequeo automático.
* Simular el diseño usando las herramientas de
simulación de vivado incluyendo análisis de tiempo.
* OPERACIONES:
![op](img1/opTp1.png)
* ALU:
![alu](img1/alu1.png)
---

### 1) Especificación de la ALU

Interfaz y parámetros

+ Parámetros: `N_BITS`, `OP_BITS`.

+ Puertos: `in_a`, `in_b`, `in_op`, `op_c`.

+ Convenciones: SRA aritmético con in_a signed, SRL lógico, sin flags.

### 2) Diagrama/bloques

![diagrama](img1/schematic.png)

Arquitectura: tres registros `reg_a`, `reg_b`, `reg_op` cargados con in_data por pulsos de `sel_A/B/OP`; reset síncrono; ALU combinacional; salida `out_c`.

![aluDiagrama](img1/aluDiagrama1.png)

### 3) Mapeo a la placa

+ Clock 100 MHz: pin W5, create_clock -period 10.

+ IOSTANDARD LVCMOS33 en todos los puertos.

```Verilog
## Clock 100 MHz (Basys-3)
set_property PACKAGE_PIN W5 [get_ports i_clock]
set_property IOSTANDARD LVCMOS33 [get_ports i_clock]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5} [get_ports i_clock]

## Entradas: in_data[7:0] (SW0..SW7)
set_property PACKAGE_PIN V17 [get_ports {in_data[0]}]
set_property PACKAGE_PIN V16 [get_ports {in_data[1]}]
set_property PACKAGE_PIN W16 [get_ports {in_data[2]}]
set_property PACKAGE_PIN W17 [get_ports {in_data[3]}]
set_property PACKAGE_PIN W15 [get_ports {in_data[4]}]
set_property PACKAGE_PIN V15 [get_ports {in_data[5]}]
set_property PACKAGE_PIN W14 [get_ports {in_data[6]}]
set_property PACKAGE_PIN W13 [get_ports {in_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in_data[*]}]

## Salidas: out_c[7:0] (LED7..LED0)
set_property PACKAGE_PIN V14 [get_ports {out_c[7]}]
set_property PACKAGE_PIN U14 [get_ports {out_c[6]}]
set_property PACKAGE_PIN U15 [get_ports {out_c[5]}]
set_property PACKAGE_PIN W18 [get_ports {out_c[4]}]
set_property PACKAGE_PIN V19 [get_ports {out_c[3]}]
set_property PACKAGE_PIN U19 [get_ports {out_c[2]}]
set_property PACKAGE_PIN E19 [get_ports {out_c[1]}]
set_property PACKAGE_PIN U16 [get_ports {out_c[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out_c[*]}]

## Control 
set_property PACKAGE_PIN P18 [get_ports i_reset]
set_property PACKAGE_PIN P17 [get_ports sel_A]
set_property PACKAGE_PIN M18 [get_ports sel_B]
set_property PACKAGE_PIN N17 [get_ports sel_OP]
set_property IOSTANDARD LVCMOS33 [get_ports {i_reset sel_A sel_B sel_OP}]
```



| Señal           | Pin                                    | I/O Std  | Comentario           |
| --------------- | -------------------------------------- | -------- | -------------------- |
| `i_clock`       | W5                                     | LVCMOS33 | reloj 100 MHz        |
| `in_data[0..7]` | J15, L16, M13, R15, R17, T18, U18, R13 | LVCMOS33 | SW0..SW7             |
| `out_c[7..0]`   | H17, K15, J13, N14, R18, V17, U17, U16 | LVCMOS33 | LED7..LED0           |
| `i_reset`       | P18                                    | LVCMOS33 | botón/switch mapeado |
| `sel_A`         | P17                                    | LVCMOS33 | …                    |
| `sel_B`         | M18                                    | LVCMOS33 | …                    |
| `sel_OP`        | N17                                    | LVCMOS33 | …                    |

### 4) Verificación por simulación