# Written by Synplify Pro version map202209actsp2, Build 067R. Synopsys Run ID: sid1685016860 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {SYS_CLK} [get_ports {SYS_CLK}] 
create_clock -period 166.670 -waveform {0.000 83.330} -name {TCK} [get_ports {TCK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREJTAGDEBUG_Z9|N_2_inferred_clock} [get_pins {CoreJTAGDebug_TRST_C0_0/CoreJTAGDebug_TRST_C0_0/genblk1.genblk1.genblk1.UJTAG_inst/UDRCK}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 
set_input_delay {20} -max -clock [get_clocks {SYS_CLK}] [get_ports {RX}]
set_input_delay {0} -min -clock [get_clocks {SYS_CLK}] [get_ports {RX}]
set_input_delay {20} -max -clock [get_clocks {SYS_CLK}] [get_ports {SW_7}]
set_input_delay {0} -min -clock [get_clocks {SYS_CLK}] [get_ports {SW_7}]
set_input_delay {20} -max -clock [get_clocks {SYS_CLK}] [get_ports {SW_8}]
set_input_delay {0} -min -clock [get_clocks {SYS_CLK}] [get_ports {SW_8}]

# Output Delay Constraints 
set_output_delay {0} -min -clock [get_clocks {SYS_CLK}] [get_ports {LED_4}]
set_output_delay {20} -max -clock [get_clocks {SYS_CLK}] [get_ports {LED_4}]
set_output_delay {0} -min -clock [get_clocks {SYS_CLK}] [get_ports {LED_5}]
set_output_delay {20} -max -clock [get_clocks {SYS_CLK}] [get_ports {LED_5}]
set_output_delay {0} -min -clock [get_clocks {SYS_CLK}] [get_ports {LED_6}]
set_output_delay {20} -max -clock [get_clocks {SYS_CLK}] [get_ports {LED_6}]
set_output_delay {0} -min -clock [get_clocks {SYS_CLK}] [get_ports {LED_7}]
set_output_delay {20} -max -clock [get_clocks {SYS_CLK}] [get_ports {LED_7}]
set_output_delay {0} -min -clock [get_clocks {SYS_CLK}] [get_ports {TX}]
set_output_delay {20} -max -clock [get_clocks {SYS_CLK}] [get_ports {TX}]

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {SYS_CLK}] -group [get_clocks {TCK}]
set_clock_groups -asynchronous -group [get_clocks {COREJTAGDEBUG_Z9|N_2_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

