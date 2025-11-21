# Clock Basys3 100 MHz
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name sys_clk_pin -period 10.000 -waveform {0 5} [get_ports clk]


set_property PACKAGE_PIN U18 [get_ports reset] 
set_property PACKAGE_PIN B18 [get_ports rx]
set_property PACKAGE_PIN A18 [get_ports tx]

set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
 
# Asignación de los primeros 8 LEDs (LD0 a LD7)
set_property PACKAGE_PIN U16 [get_ports {LEDS[0]}]  
set_property PACKAGE_PIN E19 [get_ports {LEDS[1]}]   
set_property PACKAGE_PIN U19 [get_ports {LEDS[2]}]  
set_property PACKAGE_PIN V19 [get_ports {LEDS[3]}]   
set_property PACKAGE_PIN W18 [get_ports {LEDS[4]}]   
set_property PACKAGE_PIN U15 [get_ports {LEDS[5]}] 
set_property PACKAGE_PIN U14 [get_ports {LEDS[6]}]   
set_property PACKAGE_PIN V14 [get_ports {LEDS[7]}]   

# Asignación de la IOSTANDARD para los LEDs
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[*]}]