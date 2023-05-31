set_device -family {PolarFire} -die {MPF300TS} -speed {-1}
read_adl {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\designer\BaseDesign\BaseDesign.adl}
read_afl {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\designer\BaseDesign\BaseDesign.afl}
map_netlist
read_sdc {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\constraint\BaseDesign_derived_constraints.sdc}
read_sdc {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\constraint\io_jtag_constraints.sdc}
read_sdc {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\constraint\io_sys_constraints.sdc}
check_constraints {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\constraint\timing_sdc_errors.log}
estimate_jitter -report {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\designer\BaseDesign\timing_analysis_jitter_report.txt}
write_sdc -mode smarttime {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG2_BD\designer\BaseDesign\timing_analysis.sdc}
