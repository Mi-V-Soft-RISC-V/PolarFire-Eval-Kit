# Exporting Component Description of ahbs_to_ahbm_bridge to TCL
# Family: PolarFire
# Part Number: MPF300TS-1FCG1152I
# Create and Configure the core component ahbs_to_ahbm_bridge
create_and_configure_core -core_vlnv {Actel:DirectCore:COREAHBL2AHBL_BRIDGE:2.2.100} -download_core -component_name {ahbs_to_ahbm_bridge} -params {\
"FIFO_EN:true"  \
"MASTER_BIF_TYPE:1"  \
"SLAVE_BIF_TYPE:0"  \
"SYNC_CLOCK:false"   }
# Exporting Component Description of ahbs_to_ahbm_bridge to TCL done
