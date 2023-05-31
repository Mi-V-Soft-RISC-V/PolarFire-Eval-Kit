open_project -project {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign_fp\BaseDesign.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPF300TS} \
    -fpga {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign.map} \
    -header {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign.hdr} \
    -snvm {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign_snvm.efc} \
    -spm {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign.spm} \
    -dca {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign.dca}
export_single_ppd \
    -name {MPF300TS} \
    -file {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign.ppd}

save_project
close_project
