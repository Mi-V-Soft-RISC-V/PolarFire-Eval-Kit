# Microsemi Corp.
# Date: 2023-Jun-29 20:30:09
# This file was generated based on the following SDC source files:
#   C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_RV32IMA_CFG1_BD/component/work/PF_CCC_C0/PF_CCC_C0_0/PF_CCC_C0_PF_CCC_C0_0_PF_CCC.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -name {REF_CLK} -period 20 [ get_ports { REF_CLK } ]
create_generated_clock -name {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0} -divide_by 1 -source [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
