set_device \
    -family  PolarFire \
    -die     PA5M300TS \
    -package fcg1152 \
    -speed   -1 \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {IND}
set_def {VCCI_1.5_VOLTR} {IND}
set_def {VCCI_1.8_VOLTR} {IND}
set_def {VCCI_2.5_VOLTR} {IND}
set_def {VCCI_3.3_VOLTR} {IND}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name BaseDesign
set_workdir {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign}
set_log     {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign_sdc.log}
set_design_state pre_layout
