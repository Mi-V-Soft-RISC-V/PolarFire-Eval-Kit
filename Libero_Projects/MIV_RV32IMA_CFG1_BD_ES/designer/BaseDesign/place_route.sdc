# Microsemi Corp.
# Date: 2023-Jun-29 21:04:15
# This file was generated based on the following SDC source files:
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_RV32IMA_CFG1_BD_ES/constraint/BaseDesign_derived_constraints.sdc
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_RV32IMA_CFG1_BD_ES/constraint/io_jtag_constraints.sdc
#

create_clock -name {REF_CLK} -period 20 [ get_ports { REF_CLK } ]
create_clock -name {TCK} -period 166.67 -waveform {0 83.33 } [ get_ports { TCK } ]
create_generated_clock -name {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0} -divide_by 1 -source [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty 0.135 [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ] -rise_to [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ] -fall_to [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
set_clock_uncertainty 0.00349155 [ get_clocks { REF_CLK } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { REF_CLK } ] -rise_to [ get_clocks { REF_CLK } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { REF_CLK } ] -fall_to [ get_clocks { REF_CLK } ]
set_clock_uncertainty 0.00349155 [ get_clocks { TCK } ]
set_clock_uncertainty -hold 0 -rise_from [ get_clocks { TCK } ] -rise_to [ get_clocks { TCK } ]
set_clock_uncertainty -hold 0 -fall_from [ get_clocks { TCK } ] -fall_to [ get_clocks { TCK } ]
set_clock_groups -name {async1} -asynchronous -group [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ] -group [ get_clocks { TCK } ]
