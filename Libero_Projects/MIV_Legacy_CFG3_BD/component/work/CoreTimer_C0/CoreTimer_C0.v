//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Jun 16 18:35:10 2023
// Version: 2023.1 2023.1.0.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of CoreTimer_C0 to TCL
# Family: PolarFire
# Part Number: MPF300TS-1FCG1152I
# Create and Configure the core component CoreTimer_C0
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreTimer:2.0.103} -component_name {CoreTimer_C0} -params {\
"INTACTIVEH:1"  \
"WIDTH:32"   }
# Exporting Component Description of CoreTimer_C0 to TCL done
*/

// CoreTimer_C0
module CoreTimer_C0(
    // Inputs
    PADDR,
    PCLK,
    PENABLE,
    PRESETn,
    PSEL,
    PWDATA,
    PWRITE,
    // Outputs
    PRDATA,
    TIMINT
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [4:2]  PADDR;
input         PCLK;
input         PENABLE;
input         PRESETn;
input         PSEL;
input  [31:0] PWDATA;
input         PWRITE;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] PRDATA;
output        TIMINT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [4:2]  PADDR;
wire          PENABLE;
wire   [31:0] APBslave_PRDATA;
wire          PSEL;
wire   [31:0] PWDATA;
wire          PWRITE;
wire          PCLK;
wire          PRESETn;
wire          TIMINT_net_0;
wire          TIMINT_net_1;
wire   [31:0] APBslave_PRDATA_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TIMINT_net_1          = TIMINT_net_0;
assign TIMINT                = TIMINT_net_1;
assign APBslave_PRDATA_net_0 = APBslave_PRDATA;
assign PRDATA[31:0]          = APBslave_PRDATA_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 19 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_C0_0(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETn ( PRESETn ),
        .PSEL    ( PSEL ),
        .PADDR   ( PADDR ),
        .PWRITE  ( PWRITE ),
        .PENABLE ( PENABLE ),
        .PWDATA  ( PWDATA ),
        // Outputs
        .PRDATA  ( APBslave_PRDATA ),
        .TIMINT  ( TIMINT_net_0 ) 
        );


endmodule
