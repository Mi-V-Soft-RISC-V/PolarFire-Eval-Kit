# Exporting Component Description of UART_IF to TCL
# Family: PolarFire
# Part Number: MPF300TS-1FCG1152I
# Create and Configure the core component UART_IF
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreUARTapb:5.7.100} -download_core -component_name {UART_IF} -params {\
"BAUD_VAL_FRCTN:0"  \
"BAUD_VAL_FRCTN_EN:false"  \
"BAUD_VALUE:1"  \
"FIXEDMODE:0"  \
"PRG_BIT8:0"  \
"PRG_PARITY:0"  \
"RX_FIFO:0"  \
"RX_LEGACY_MODE:0"  \
"TX_FIFO:0"  \
"USE_SOFT_FIFO:0"   }
# Exporting Component Description of UART_IF to TCL done
