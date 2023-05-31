set_defvar -name {SPEED}   -value {-1}
set_defvar -name {VOLTAGE} -value {1.0}
set_defvar -name {TEMPR}   -value {IND}
set_defvar -name {PART_RANGE}   -value {IND}
set_defvar -name {IO_DEFT_STD} -value {LVCMOS18}
set_defvar -name {PACOMP_PARPT_MAX_NET} -value {10}
set_defvar -name {PA4_GB_MAX_RCLKINT_INSERTION} -value {16}
set_defvar -name {PA4_GB_MIN_GB_FANOUT_TO_USE_RCLKINT} -value {1000}
set_defvar -name {PA4_GB_MAX_FANOUT_DATA_MOVE} -value {5000}
set_defvar -name {PA4_GB_HIGH_FANOUT_THRESHOLD} -value {5000}
set_defvar -name {PA4_GB_COUNT} -value {36}
set_defvar -name {RESTRICTPROBEPINS} -value {0}
set_defvar -name {RESTRICTSPIPINS} -value {0}
set_defvar -name {PDC_IMPORT_HARDERROR} -value {1}
set_defvar -name {PA4_IDDQ_FF_FIX} -value {1}
set_defvar -name {BLOCK_PLACEMENT_CONFLICTS} -value {ERROR}
set_defvar -name {BLOCK_ROUTING_CONFLICTS} -value {LOCK}
set_defvar -name {RTG4_MITIGATION_ON} -value {0}
set_defvar -name {USE_CONSTRAINT_FLOW} -value True
set_defvar -name {FHB_AUTO_INSTANTIATION} -value {0}
set_defvar -name {SYSTEM_CONTROLLER_SUSPEND_MODE} -value {0}

set_partition_info -name "/BaseDesign" -timestamp "1685016860"
set_partition_info -name "/BaseDesign/CoreAHBL_C0_0/CoreAHBL_C0_0/matrix4x16" -timestamp "1685016860"
set_partition_info -name "/BaseDesign/MIV_RV32IMA_L1_AHB_C0_0/MIV_RV32IMA_L1_AHB_C0_0/ChiselTop0/tile/genblk1\.core" -timestamp "1685016860"
set_partition_info -name "/BaseDesign/MIV_RV32IMA_L1_AHB_C0_0/MIV_RV32IMA_L1_AHB_C0_0/ChiselTop0/tile" -timestamp "1685016860"
set_partition_info -name "/BaseDesign/MIV_RV32IMA_L1_AHB_C0_0/MIV_RV32IMA_L1_AHB_C0_0/ChiselTop0/debug_1" -timestamp "1685016860"
set_partition_info -name "/BaseDesign/MIV_RV32IMA_L1_AHB_C0_0/MIV_RV32IMA_L1_AHB_C0_0" -timestamp "1685016860"
set_compile_info \
    -category {"Device Selection"} \
    -name {"Family"} \
    -value {"PolarFire"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Device"} \
    -value {"MPF300TS"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Package"} \
    -value {"FCG1152"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Speed Grade"} \
    -value {"-1"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Core Voltage"} \
    -value {"1.0V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Part Range"} \
    -value {"IND"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Default I/O technology"} \
    -value {"LVCMOS 1.8V"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Topcell"} \
    -value {"BaseDesign"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Format"} \
    -value {"Verilog"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Source"} \
    -value {"C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\synthesis\BaseDesign.vm"}
set_compile_info \
    -category {"Options"} \
    -name {"Limit the number of high fanout nets to display to"} \
    -value {"10"}
compile \
    -desdir {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\designer\BaseDesign} \
    -design BaseDesign \
    -fam PolarFire \
    -die PA5M300TS \
    -pkg fcg1152 \
    -merge_pdc 0
