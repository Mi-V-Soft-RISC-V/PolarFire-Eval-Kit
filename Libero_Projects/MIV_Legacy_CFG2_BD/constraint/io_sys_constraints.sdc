# Constraint for the 50MHz fabric clock
create_clock -name {SYS_CLK} -period 20 -waveform {0 10 } [ get_ports { SYS_CLK } ]

# Set input and output delay for the design
set_input_delay -clock [get_clocks {SYS_CLK}] -max 20 [get_ports {RX SW_7 SW_8 USER_RESET}]
set_input_delay -clock [get_clocks {SYS_CLK}] -min 0 [get_ports {RX SW_7 SW_8 USER_RESET}]
set_output_delay -clock [get_clocks {SYS_CLK}] -max 20 [get_ports {LED_4 LED_5 LED_6 LED_7 TX}]
set_output_delay -clock [get_clocks {SYS_CLK}] -min 0 [get_ports {LED_4 LED_5 LED_6 LED_7 TX}]


