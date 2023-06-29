read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {C:/esip_projects/FPGA_BU_ESIP/gh-libsd-pf-eval/Libero_Projects/MIV_RV32IMA_CFG1_BD_ES/designer/BaseDesign/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_RV32IMA_CFG1_BD_ES\designer\BaseDesign\BaseDesign_layout_combinational_loops.xml}
report -type slack {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_RV32IMA_CFG1_BD_ES\designer\BaseDesign\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_RV32IMA_CFG1_BD_ES\designer\BaseDesign\BaseDesign_place_and_route_constraint_coverage.xml}]
set reportfile {C:\esip_projects\FPGA_BU_ESIP\gh-libsd-pf-eval\Libero_Projects\MIV_RV32IMA_CFG1_BD_ES\designer\BaseDesign\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp