# Microsemi Corp.
# Date: 2023-May-25 14:00:20
# This file was generated based on the following SDC source files:
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_Legacy_CFG3_BD/constraint/BaseDesign_derived_constraints.sdc
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_Legacy_CFG3_BD/constraint/io_jtag_constraints.sdc
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_Legacy_CFG3_BD/constraint/io_sys_constraints.sdc
#

create_clock -name {TCK} -period 166.67 -waveform {0 83.33 } [ get_ports { TCK } ]
create_clock -name {SYS_CLK} -period 20 -waveform {0 10 } [ get_ports { SYS_CLK } ]
set_clock_uncertainty 0.0121649 [ get_clocks { SYS_CLK } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { SYS_CLK } ] -rise_to [ get_clocks { SYS_CLK } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { SYS_CLK } ] -fall_to [ get_clocks { SYS_CLK } ]
set_clock_uncertainty 0.0121649 [ get_clocks { TCK } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { TCK } ] -rise_to [ get_clocks { TCK } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { TCK } ] -fall_to [ get_clocks { TCK } ]
set_clock_groups -name {async1} -asynchronous -group [ get_clocks { SYS_CLK } ] -group [ get_clocks { TCK } ]
