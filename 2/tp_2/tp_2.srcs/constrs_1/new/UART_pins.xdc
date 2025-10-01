# Clock signal
set_property PACKAGE_PIN E3 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10 -waveform {0 5} [get_ports clk]

set_property PACKAGE_PIN E3 [get_ports clk]
set_property PACKAGE_PIN P17 [get_ports reset]
set_property PACKAGE_PIN H1 [get_ports rx]
set_property PACKAGE_PIN H4 [get_ports tx]


set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
 
