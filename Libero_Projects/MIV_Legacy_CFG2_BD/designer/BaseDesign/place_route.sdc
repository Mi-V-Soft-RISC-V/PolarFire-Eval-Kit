# Microsemi Corp.
# Date: 2023-May-25 13:16:14
# This file was generated based on the following SDC source files:
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_Legacy_CFG2_BD/constraint/BaseDesign_derived_constraints.sdc
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_Legacy_CFG2_BD/constraint/io_jtag_constraints.sdc
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_Legacy_CFG2_BD/constraint/io_sys_constraints.sdc
#

create_clock -name {TCK} -period 166.67 -waveform {0 83.33 } [ get_ports { TCK } ]
create_clock -name {SYS_CLK} -period 20 -waveform {0 10 } [ get_ports { SYS_CLK } ]
set_input_delay 20 -max  -clock [ get_clocks { SYS_CLK } ] [ get_ports { RX SW_7 SW_8 USER_RESET } ]
set_input_delay 0 -min  -clock [ get_clocks { SYS_CLK } ] [ get_ports { RX SW_7 SW_8 USER_RESET } ]
set_output_delay 20 -max  -clock [ get_clocks { SYS_CLK } ] [ get_ports { LED_4 LED_5 LED_6 LED_7 TX } ]
set_output_delay 0 -min  -clock [ get_clocks { SYS_CLK } ] [ get_ports { LED_4 LED_5 LED_6 LED_7 TX } ]
set_clock_uncertainty 0.00838274 [ get_clocks { SYS_CLK } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { SYS_CLK } ] -rise_to [ get_clocks { SYS_CLK } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { SYS_CLK } ] -fall_to [ get_clocks { SYS_CLK } ]
set_clock_uncertainty 0.00838274 [ get_clocks { TCK } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { TCK } ] -rise_to [ get_clocks { TCK } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { TCK } ] -fall_to [ get_clocks { TCK } ]
set_clock_groups -name {async1} -asynchronous -group [ get_clocks { SYS_CLK } ] -group [ get_clocks { TCK } ]
