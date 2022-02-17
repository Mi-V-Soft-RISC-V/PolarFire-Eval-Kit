set project_folder_name MIV_DGC4_BD
set project_dir2 "./$project_folder_name"

puts "\n---------------------------------------------------------------------------------------------------------"
puts "Importing Components..."
puts "---------------------------------------------------------------------------------------------------------\n"

source ./import/components/IMC_DGC4/top_level_pf_eval_kits_rv32imc_dgc4.tcl

puts "\n---------------------------------------------------------------------------------------------------------"
puts "Components Imported."
puts "---------------------------------------------------------------------------------------------------------\n"

build_design_hierarchy
set_root BaseDesign

puts "\n---------------------------------------------------------------------------------------------------------"
puts "Applying Design Constraints..."
puts "---------------------------------------------------------------------------------------------------------\n"

import_files -io_pdc ./import/components/IMC_DGC4/constraints/io/io_constraints.pdc
import_files -sdc ./import/components/IMC_DGC4/constraints/io_jtag_constraints.sdc

# #Associate SDC constraint file to Place and Route tool
organize_tool_files -tool {PLACEROUTE} \
    -file $project_dir2/constraint/io/io_constraints.pdc \
    -file $project_dir2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}

organize_tool_files -tool {SYNTHESIZE} \
	-file $project_dir2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}

organize_tool_files -tool {VERIFYTIMING} \
	-file $project_dir2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}

run_tool -name {CONSTRAINT_MANAGEMENT}
derive_constraints_sdc

puts "\n---------------------------------------------------------------------------------------------------------"
puts "Design Constraints Applied."
puts "---------------------------------------------------------------------------------------------------------\n"