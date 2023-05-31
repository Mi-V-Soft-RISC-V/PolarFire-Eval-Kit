new_project \
         -name {BaseDesign} \
         -location {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_Legacy_CFG3_BD\designer\BaseDesign\BaseDesign_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF300TS} \
         -name {MPF300TS}
enable_device \
         -name {MPF300TS} \
         -enable {TRUE}
save_project
close_project
