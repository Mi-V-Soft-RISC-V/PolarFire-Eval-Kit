set project_folder_name MIV_CFG4_BD
set project_dir4 "./$project_folder_name"

puts "\n---------------------------------------------------------------------------------------------------------"
puts "Importing Components..."
puts "---------------------------------------------------------------------------------------------------------\n"

source ./import/components/IMC_CFG4/top_level_pf_eval_kits_rv32imc_cfg4.tcl

puts "\n---------------------------------------------------------------------------------------------------------"
puts "Components Imported."
puts "---------------------------------------------------------------------------------------------------------\n"

build_design_hierarchy
set_root BaseDesign

puts "\n---------------------------------------------------------------------------------------------------------"
puts "Applying Design Constraints..."
puts "---------------------------------------------------------------------------------------------------------\n"
##  ./import/components/IMC_CFG4/components
import_files -io_pdc ./import/components/IMC_CFG4/constraints/io_constraints.pdc
import_files -sdc ./import/components/IMC_CFG4/constraints/timing_user_constraints.sdc
#import_files -sdc ./import/constraints/io_jtag_constraints.sdc
import_files -fp_pdc ./import/components/IMC_CFG4/constraints/fp_constraints.pdc


# #Associate SDC constraint file to Place and Route tool
organize_tool_files -tool {PLACEROUTE} \
    -file $project_dir4/constraint/io/io_constraints.pdc \
    -file $project_dir4/constraint/timing_user_constraints.sdc \
	-file $project_dir4/constraint/fp/fp_constraints.pdc \
    -module {BaseDesign::work} -input_type {constraint}

organize_tool_files -tool {SYNTHESIZE} \
	-file $project_dir4/constraint/timing_user_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}

organize_tool_files -tool {VERIFYTIMING} \
	-file $project_dir4/constraint/timing_user_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}

set_root BaseDesign
run_tool -name {CONSTRAINT_MANAGEMENT}
derive_constraints_sdc

puts "\n---------------------------------------------------------------------------------------------------------"
puts "Design Constraints Applied."
puts "---------------------------------------------------------------------------------------------------------\n"

