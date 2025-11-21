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
set_property PACKAGE_PIN U18 [get_ports i_reset]
set_property PACKAGE_PIN W19 [get_ports sel_A]
set_property PACKAGE_PIN T18 [get_ports sel_B]
set_property PACKAGE_PIN T17 [get_ports sel_OP]
set_property IOSTANDARD LVCMOS33 [get_ports {i_reset sel_A sel_B sel_OP}]
