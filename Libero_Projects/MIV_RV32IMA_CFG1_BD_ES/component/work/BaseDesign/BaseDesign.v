//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jun 29 21:20:17 2023
// Version: 2023.1 2023.1.0.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// BaseDesign
module BaseDesign(
    // Inputs
    REF_CLK,
    RX,
    SW_1,
    SW_2,
    TCK,
    TDI,
    TMS,
    TRSTB,
    USER_RST,
    // Outputs
    LED_1,
    LED_2,
    LED_3,
    LED_4,
    TDO,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  REF_CLK;
input  RX;
input  SW_1;
input  SW_2;
input  TCK;
input  TDI;
input  TMS;
input  TRSTB;
input  USER_RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output LED_1;
output LED_2;
output LED_3;
output LED_4;
output TDO;
output TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLKBUF_0_Y;
wire   [31:0] CoreAHBL_C0_0_AHBmslave7_HADDR;
wire   [2:0]  CoreAHBL_C0_0_AHBmslave7_HBURST;
wire          CoreAHBL_C0_0_AHBmslave7_HMASTLOCK;
wire   [3:0]  CoreAHBL_C0_0_AHBmslave7_HPROT;
wire   [31:0] CoreAHBL_C0_0_AHBmslave7_HRDATA;
wire          CoreAHBL_C0_0_AHBmslave7_HREADY;
wire          CoreAHBL_C0_0_AHBmslave7_HREADYOUT;
wire   [1:0]  CoreAHBL_C0_0_AHBmslave7_HRESP;
wire          CoreAHBL_C0_0_AHBmslave7_HSELx;
wire   [2:0]  CoreAHBL_C0_0_AHBmslave7_HSIZE;
wire   [1:0]  CoreAHBL_C0_0_AHBmslave7_HTRANS;
wire   [31:0] CoreAHBL_C0_0_AHBmslave7_HWDATA;
wire          CoreAHBL_C0_0_AHBmslave7_HWRITE;
wire   [31:0] CoreAHBL_C0_0_AHBmslave8_HADDR;
wire   [2:0]  CoreAHBL_C0_0_AHBmslave8_HBURST;
wire          CoreAHBL_C0_0_AHBmslave8_HMASTLOCK;
wire   [3:0]  CoreAHBL_C0_0_AHBmslave8_HPROT;
wire   [31:0] CoreAHBL_C0_0_AHBmslave8_HRDATA;
wire          CoreAHBL_C0_0_AHBmslave8_HREADY;
wire          CoreAHBL_C0_0_AHBmslave8_HREADYOUT;
wire   [1:0]  CoreAHBL_C0_0_AHBmslave8_HRESP;
wire          CoreAHBL_C0_0_AHBmslave8_HSELx;
wire   [2:0]  CoreAHBL_C0_0_AHBmslave8_HSIZE;
wire   [1:0]  CoreAHBL_C0_0_AHBmslave8_HTRANS;
wire   [31:0] CoreAHBL_C0_0_AHBmslave8_HWDATA;
wire          CoreAHBL_C0_0_AHBmslave8_HWRITE;
wire   [31:0] COREAHBTOAPB3_C0_0_APBmaster_PADDR;
wire          COREAHBTOAPB3_C0_0_APBmaster_PENABLE;
wire   [31:0] COREAHBTOAPB3_C0_0_APBmaster_PRDATA;
wire          COREAHBTOAPB3_C0_0_APBmaster_PREADY;
wire          COREAHBTOAPB3_C0_0_APBmaster_PSELx;
wire          COREAHBTOAPB3_C0_0_APBmaster_PSLVERR;
wire   [31:0] COREAHBTOAPB3_C0_0_APBmaster_PWDATA;
wire          COREAHBTOAPB3_C0_0_APBmaster_PWRITE;
wire          CoreAPB3_C0_0_APBmslave1_PENABLE;
wire          CoreAPB3_C0_0_APBmslave1_PREADY;
wire          CoreAPB3_C0_0_APBmslave1_PSELx;
wire          CoreAPB3_C0_0_APBmslave1_PSLVERR;
wire          CoreAPB3_C0_0_APBmslave1_PWRITE;
wire   [31:0] CoreAPB3_C0_0_APBmslave2_PRDATA;
wire          CoreAPB3_C0_0_APBmslave2_PREADY;
wire          CoreAPB3_C0_0_APBmslave2_PSELx;
wire          CoreAPB3_C0_0_APBmslave2_PSLVERR;
wire   [31:0] CoreAPB3_C0_0_APBmslave3_PRDATA;
wire          CoreAPB3_C0_0_APBmslave3_PSELx;
wire   [31:0] CoreAPB3_C0_0_APBmslave4_PRDATA;
wire          CoreAPB3_C0_0_APBmslave4_PSELx;
wire   [31:0] CoreAPB3_C0_0_APBmslave5_PRDATA;
wire          CoreAPB3_C0_0_APBmslave5_PREADY;
wire          CoreAPB3_C0_0_APBmslave5_PSELx;
wire          CoreAPB3_C0_0_APBmslave5_PSLVERR;
wire          CoreJTAGDebug_TRST_C0_0_TGT_TCK_0;
wire          CoreJTAGDebug_TRST_C0_0_TGT_TDI_0;
wire          CoreJTAGDebug_TRST_C0_0_TGT_TMS_0;
wire          CoreJTAGDebug_TRST_C0_0_TGT_TRST_0;
wire          CORERESET_PF_C0_0_FABRIC_RESET_N;
wire          CoreTimer_C0_0_TIMINT;
wire          CoreTimer_C1_0_TIMINT;
wire   [0:0]  LED_1_net_0;
wire   [1:1]  LED_2_net_0;
wire   [2:2]  LED_3_net_0;
wire   [3:3]  LED_4_net_0;
wire          MIV_RV32IMA_L1_AHB_C0_0_TDO;
wire          PF_CCC_C0_0_OUT0_FABCLK_0;
wire          PF_CCC_C0_0_PLL_LOCK_0;
wire          PF_INIT_MONITOR_C0_0_DEVICE_INIT_DONE;
wire          PF_INIT_MONITOR_C0_0_FABRIC_POR_N;
wire          REF_CLK;
wire          RX;
wire          SW_1;
wire          SW_2;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TX_net_0;
wire          USER_RST;
wire          TDO_net_1;
wire          TX_net_1;
wire          LED_1_net_1;
wire          LED_2_net_1;
wire          LED_3_net_1;
wire          LED_4_net_1;
wire   [30:0] IRQ_net_0;
wire   [1:0]  GPIO_IN_net_0;
wire   [3:0]  GPIO_OUT_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [3:0]  GPIO_IN_const_net_0;
wire          VCC_net;
wire   [28:0] IRQ_const_net_0;
wire   [31:0] HADDR_M0_const_net_0;
wire   [1:0]  HTRANS_M0_const_net_0;
wire   [2:0]  HSIZE_M0_const_net_0;
wire   [2:0]  HBURST_M0_const_net_0;
wire   [3:0]  HPROT_M0_const_net_0;
wire   [31:0] HWDATA_M0_const_net_0;
wire   [31:0] HADDR_M1_const_net_0;
wire   [1:0]  HTRANS_M1_const_net_0;
wire   [2:0]  HSIZE_M1_const_net_0;
wire   [2:0]  HBURST_M1_const_net_0;
wire   [3:0]  HPROT_M1_const_net_0;
wire   [31:0] HWDATA_M1_const_net_0;
wire   [31:0] AHB_MST_MEM_HRDATA_const_net_0;
wire   [31:0] AHB_MST_MMIO_HRDATA_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_C0_0_APBmslave1_PADDR;
wire   [4:0]  CoreAPB3_C0_0_APBmslave1_PADDR_0;
wire   [4:0]  CoreAPB3_C0_0_APBmslave1_PADDR_0_4to0;
wire   [7:0]  CoreAPB3_C0_0_APBmslave1_PADDR_1;
wire   [7:0]  CoreAPB3_C0_0_APBmslave1_PADDR_1_7to0;
wire   [4:2]  CoreAPB3_C0_0_APBmslave1_PADDR_2;
wire   [4:2]  CoreAPB3_C0_0_APBmslave1_PADDR_2_4to2;
wire   [4:2]  CoreAPB3_C0_0_APBmslave1_PADDR_3;
wire   [4:2]  CoreAPB3_C0_0_APBmslave1_PADDR_3_4to2;
wire   [7:0]  CoreAPB3_C0_0_APBmslave1_PADDR_4;
wire   [7:0]  CoreAPB3_C0_0_APBmslave1_PADDR_4_7to0;
wire   [7:0]  CoreAPB3_C0_0_APBmslave1_PRDATA;
wire   [31:0] CoreAPB3_C0_0_APBmslave1_PRDATA_0;
wire   [31:8] CoreAPB3_C0_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_C0_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_C0_0_APBmslave1_PWDATA;
wire   [7:0]  CoreAPB3_C0_0_APBmslave1_PWDATA_0;
wire   [7:0]  CoreAPB3_C0_0_APBmslave1_PWDATA_0_7to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                         = 1'b0;
assign GPIO_IN_const_net_0             = 4'h0;
assign VCC_net                         = 1'b1;
assign IRQ_const_net_0                 = 29'h00000000;
assign HADDR_M0_const_net_0            = 32'h00000000;
assign HTRANS_M0_const_net_0           = 2'h0;
assign HSIZE_M0_const_net_0            = 3'h0;
assign HBURST_M0_const_net_0           = 3'h0;
assign HPROT_M0_const_net_0            = 4'h0;
assign HWDATA_M0_const_net_0           = 32'h00000000;
assign HADDR_M1_const_net_0            = 32'h00000000;
assign HTRANS_M1_const_net_0           = 2'h0;
assign HSIZE_M1_const_net_0            = 3'h0;
assign HBURST_M1_const_net_0           = 3'h0;
assign HPROT_M1_const_net_0            = 4'h0;
assign HWDATA_M1_const_net_0           = 32'h00000000;
assign AHB_MST_MEM_HRDATA_const_net_0  = 32'h00000000;
assign AHB_MST_MMIO_HRDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1   = TDO_net_0;
assign TDO         = TDO_net_1;
assign TX_net_1    = TX_net_0;
assign TX          = TX_net_1;
assign LED_1_net_1 = LED_1_net_0[0];
assign LED_1       = LED_1_net_1;
assign LED_2_net_1 = LED_2_net_0[1];
assign LED_2       = LED_2_net_1;
assign LED_3_net_1 = LED_3_net_0[2];
assign LED_3       = LED_3_net_1;
assign LED_4_net_1 = LED_4_net_0[3];
assign LED_4       = LED_4_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign LED_1_net_0[0] = GPIO_OUT_net_0[0:0];
assign LED_2_net_0[1] = GPIO_OUT_net_0[1:1];
assign LED_3_net_0[2] = GPIO_OUT_net_0[2:2];
assign LED_4_net_0[3] = GPIO_OUT_net_0[3:3];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign IRQ_net_0     = { CoreTimer_C1_0_TIMINT , CoreTimer_C0_0_TIMINT , 29'h00000000 };
assign GPIO_IN_net_0 = { SW_2 , SW_1 };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_C0_0_APBmslave1_PADDR_0 = { CoreAPB3_C0_0_APBmslave1_PADDR_0_4to0 };
assign CoreAPB3_C0_0_APBmslave1_PADDR_0_4to0 = CoreAPB3_C0_0_APBmslave1_PADDR[4:0];
assign CoreAPB3_C0_0_APBmslave1_PADDR_1 = { CoreAPB3_C0_0_APBmslave1_PADDR_1_7to0 };
assign CoreAPB3_C0_0_APBmslave1_PADDR_1_7to0 = CoreAPB3_C0_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_C0_0_APBmslave1_PADDR_2 = { CoreAPB3_C0_0_APBmslave1_PADDR_2_4to2 };
assign CoreAPB3_C0_0_APBmslave1_PADDR_2_4to2 = CoreAPB3_C0_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_C0_0_APBmslave1_PADDR_3 = { CoreAPB3_C0_0_APBmslave1_PADDR_3_4to2 };
assign CoreAPB3_C0_0_APBmslave1_PADDR_3_4to2 = CoreAPB3_C0_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_C0_0_APBmslave1_PADDR_4 = { CoreAPB3_C0_0_APBmslave1_PADDR_4_7to0 };
assign CoreAPB3_C0_0_APBmslave1_PADDR_4_7to0 = CoreAPB3_C0_0_APBmslave1_PADDR[7:0];

assign CoreAPB3_C0_0_APBmslave1_PRDATA_0 = { CoreAPB3_C0_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_C0_0_APBmslave1_PRDATA_0_7to0 };
assign CoreAPB3_C0_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_C0_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_C0_0_APBmslave1_PRDATA[7:0];

assign CoreAPB3_C0_0_APBmslave1_PWDATA_0 = { CoreAPB3_C0_0_APBmslave1_PWDATA_0_7to0 };
assign CoreAPB3_C0_0_APBmslave1_PWDATA_0_7to0 = CoreAPB3_C0_0_APBmslave1_PWDATA[7:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLKBUF
CLKBUF CLKBUF_0(
        // Inputs
        .PAD ( REF_CLK ),
        // Outputs
        .Y   ( CLKBUF_0_Y ) 
        );

//--------CoreAHBL_C0
CoreAHBL_C0 CoreAHBL_C0_0(
        // Inputs
        .HCLK         ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .HRESETN      ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .REMAP_M0     ( GND_net ),
        .HADDR_M0     ( HADDR_M0_const_net_0 ), // tied to 32'h00000000 from definition
        .HTRANS_M0    ( HTRANS_M0_const_net_0 ), // tied to 2'h0 from definition
        .HWRITE_M0    ( GND_net ), // tied to 1'b0 from definition
        .HSIZE_M0     ( HSIZE_M0_const_net_0 ), // tied to 3'h0 from definition
        .HBURST_M0    ( HBURST_M0_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M0     ( HPROT_M0_const_net_0 ), // tied to 4'h0 from definition
        .HWDATA_M0    ( HWDATA_M0_const_net_0 ), // tied to 32'h00000000 from definition
        .HMASTLOCK_M0 ( GND_net ), // tied to 1'b0 from definition
        .HADDR_M1     ( HADDR_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HTRANS_M1    ( HTRANS_M1_const_net_0 ), // tied to 2'h0 from definition
        .HWRITE_M1    ( GND_net ), // tied to 1'b0 from definition
        .HSIZE_M1     ( HSIZE_M1_const_net_0 ), // tied to 3'h0 from definition
        .HBURST_M1    ( HBURST_M1_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M1     ( HPROT_M1_const_net_0 ), // tied to 4'h0 from definition
        .HWDATA_M1    ( HWDATA_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HMASTLOCK_M1 ( GND_net ), // tied to 1'b0 from definition
        .HRDATA_S7    ( CoreAHBL_C0_0_AHBmslave7_HRDATA ),
        .HREADYOUT_S7 ( CoreAHBL_C0_0_AHBmslave7_HREADYOUT ),
        .HRESP_S7     ( CoreAHBL_C0_0_AHBmslave7_HRESP ),
        .HRDATA_S8    ( CoreAHBL_C0_0_AHBmslave8_HRDATA ),
        .HREADYOUT_S8 ( CoreAHBL_C0_0_AHBmslave8_HREADYOUT ),
        .HRESP_S8     ( CoreAHBL_C0_0_AHBmslave8_HRESP ),
        // Outputs
        .HRDATA_M0    (  ),
        .HREADY_M0    (  ),
        .HRESP_M0     (  ),
        .HRDATA_M1    (  ),
        .HREADY_M1    (  ),
        .HRESP_M1     (  ),
        .HADDR_S7     ( CoreAHBL_C0_0_AHBmslave7_HADDR ),
        .HTRANS_S7    ( CoreAHBL_C0_0_AHBmslave7_HTRANS ),
        .HWRITE_S7    ( CoreAHBL_C0_0_AHBmslave7_HWRITE ),
        .HSIZE_S7     ( CoreAHBL_C0_0_AHBmslave7_HSIZE ),
        .HWDATA_S7    ( CoreAHBL_C0_0_AHBmslave7_HWDATA ),
        .HSEL_S7      ( CoreAHBL_C0_0_AHBmslave7_HSELx ),
        .HREADY_S7    ( CoreAHBL_C0_0_AHBmslave7_HREADY ),
        .HMASTLOCK_S7 ( CoreAHBL_C0_0_AHBmslave7_HMASTLOCK ),
        .HBURST_S7    ( CoreAHBL_C0_0_AHBmslave7_HBURST ),
        .HPROT_S7     ( CoreAHBL_C0_0_AHBmslave7_HPROT ),
        .HADDR_S8     ( CoreAHBL_C0_0_AHBmslave8_HADDR ),
        .HTRANS_S8    ( CoreAHBL_C0_0_AHBmslave8_HTRANS ),
        .HWRITE_S8    ( CoreAHBL_C0_0_AHBmslave8_HWRITE ),
        .HSIZE_S8     ( CoreAHBL_C0_0_AHBmslave8_HSIZE ),
        .HWDATA_S8    ( CoreAHBL_C0_0_AHBmslave8_HWDATA ),
        .HSEL_S8      ( CoreAHBL_C0_0_AHBmslave8_HSELx ),
        .HREADY_S8    ( CoreAHBL_C0_0_AHBmslave8_HREADY ),
        .HMASTLOCK_S8 ( CoreAHBL_C0_0_AHBmslave8_HMASTLOCK ),
        .HBURST_S8    ( CoreAHBL_C0_0_AHBmslave8_HBURST ),
        .HPROT_S8     ( CoreAHBL_C0_0_AHBmslave8_HPROT ) 
        );

//--------COREAHBTOAPB3_C0
COREAHBTOAPB3_C0 COREAHBTOAPB3_C0_0(
        // Inputs
        .HCLK      ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .HRESETN   ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .HADDR     ( CoreAHBL_C0_0_AHBmslave7_HADDR ),
        .HTRANS    ( CoreAHBL_C0_0_AHBmslave7_HTRANS ),
        .HWRITE    ( CoreAHBL_C0_0_AHBmslave7_HWRITE ),
        .HWDATA    ( CoreAHBL_C0_0_AHBmslave7_HWDATA ),
        .HSEL      ( CoreAHBL_C0_0_AHBmslave7_HSELx ),
        .HREADY    ( CoreAHBL_C0_0_AHBmslave7_HREADY ),
        .PRDATA    ( COREAHBTOAPB3_C0_0_APBmaster_PRDATA ),
        .PREADY    ( COREAHBTOAPB3_C0_0_APBmaster_PREADY ),
        .PSLVERR   ( COREAHBTOAPB3_C0_0_APBmaster_PSLVERR ),
        // Outputs
        .HRDATA    ( CoreAHBL_C0_0_AHBmslave7_HRDATA ),
        .HREADYOUT ( CoreAHBL_C0_0_AHBmslave7_HREADYOUT ),
        .HRESP     ( CoreAHBL_C0_0_AHBmslave7_HRESP ),
        .PADDR     ( COREAHBTOAPB3_C0_0_APBmaster_PADDR ),
        .PSEL      ( COREAHBTOAPB3_C0_0_APBmaster_PSELx ),
        .PENABLE   ( COREAHBTOAPB3_C0_0_APBmaster_PENABLE ),
        .PWRITE    ( COREAHBTOAPB3_C0_0_APBmaster_PWRITE ),
        .PWDATA    ( COREAHBTOAPB3_C0_0_APBmaster_PWDATA ) 
        );

//--------CoreAPB3_C0
CoreAPB3_C0 CoreAPB3_C0_0(
        // Inputs
        .PADDR     ( COREAHBTOAPB3_C0_0_APBmaster_PADDR ),
        .PSEL      ( COREAHBTOAPB3_C0_0_APBmaster_PSELx ),
        .PENABLE   ( COREAHBTOAPB3_C0_0_APBmaster_PENABLE ),
        .PWRITE    ( COREAHBTOAPB3_C0_0_APBmaster_PWRITE ),
        .PWDATA    ( COREAHBTOAPB3_C0_0_APBmaster_PWDATA ),
        .PRDATAS1  ( CoreAPB3_C0_0_APBmslave1_PRDATA_0 ),
        .PREADYS1  ( CoreAPB3_C0_0_APBmslave1_PREADY ),
        .PSLVERRS1 ( CoreAPB3_C0_0_APBmslave1_PSLVERR ),
        .PRDATAS2  ( CoreAPB3_C0_0_APBmslave2_PRDATA ),
        .PREADYS2  ( CoreAPB3_C0_0_APBmslave2_PREADY ),
        .PSLVERRS2 ( CoreAPB3_C0_0_APBmslave2_PSLVERR ),
        .PRDATAS3  ( CoreAPB3_C0_0_APBmslave3_PRDATA ),
        .PREADYS3  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS4  ( CoreAPB3_C0_0_APBmslave4_PRDATA ),
        .PREADYS4  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS5  ( CoreAPB3_C0_0_APBmslave5_PRDATA ),
        .PREADYS5  ( CoreAPB3_C0_0_APBmslave5_PREADY ),
        .PSLVERRS5 ( CoreAPB3_C0_0_APBmslave5_PSLVERR ),
        // Outputs
        .PRDATA    ( COREAHBTOAPB3_C0_0_APBmaster_PRDATA ),
        .PREADY    ( COREAHBTOAPB3_C0_0_APBmaster_PREADY ),
        .PSLVERR   ( COREAHBTOAPB3_C0_0_APBmaster_PSLVERR ),
        .PADDRS    ( CoreAPB3_C0_0_APBmslave1_PADDR ),
        .PSELS1    ( CoreAPB3_C0_0_APBmslave1_PSELx ),
        .PENABLES  ( CoreAPB3_C0_0_APBmslave1_PENABLE ),
        .PWRITES   ( CoreAPB3_C0_0_APBmslave1_PWRITE ),
        .PWDATAS   ( CoreAPB3_C0_0_APBmslave1_PWDATA ),
        .PSELS2    ( CoreAPB3_C0_0_APBmslave2_PSELx ),
        .PSELS3    ( CoreAPB3_C0_0_APBmslave3_PSELx ),
        .PSELS4    ( CoreAPB3_C0_0_APBmslave4_PSELx ),
        .PSELS5    ( CoreAPB3_C0_0_APBmslave5_PSELx ) 
        );

//--------CoreGPIO_IN_C0
CoreGPIO_IN_C0 CoreGPIO_IN_C0_0(
        // Inputs
        .PRESETN  ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .PCLK     ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .GPIO_IN  ( GPIO_IN_net_0 ),
        .PADDR    ( CoreAPB3_C0_0_APBmslave1_PADDR_1 ),
        .PSEL     ( CoreAPB3_C0_0_APBmslave2_PSELx ),
        .PENABLE  ( CoreAPB3_C0_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_C0_0_APBmslave1_PWRITE ),
        .PWDATA   ( CoreAPB3_C0_0_APBmslave1_PWDATA ),
        // Outputs
        .INT      (  ),
        .GPIO_OUT (  ),
        .PRDATA   ( CoreAPB3_C0_0_APBmslave2_PRDATA ),
        .PREADY   ( CoreAPB3_C0_0_APBmslave2_PREADY ),
        .PSLVERR  ( CoreAPB3_C0_0_APBmslave2_PSLVERR ) 
        );

//--------CoreGPIO_OUT_C0
CoreGPIO_OUT_C0 CoreGPIO_OUT_C0_0(
        // Inputs
        .PRESETN  ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .PCLK     ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        .PADDR    ( CoreAPB3_C0_0_APBmslave1_PADDR_4 ),
        .PSEL     ( CoreAPB3_C0_0_APBmslave5_PSELx ),
        .PENABLE  ( CoreAPB3_C0_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_C0_0_APBmslave1_PWRITE ),
        .PWDATA   ( CoreAPB3_C0_0_APBmslave1_PWDATA ),
        // Outputs
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .PRDATA   ( CoreAPB3_C0_0_APBmslave5_PRDATA ),
        .PREADY   ( CoreAPB3_C0_0_APBmslave5_PREADY ),
        .PSLVERR  ( CoreAPB3_C0_0_APBmslave5_PSLVERR ) 
        );

//--------CoreJTAGDebug_TRST_C0
CoreJTAGDebug_TRST_C0 CoreJTAGDebug_TRST_C0_0(
        // Inputs
        .TRSTB      ( TRSTB ),
        .TCK        ( TCK ),
        .TMS        ( TMS ),
        .TDI        ( TDI ),
        .TGT_TDO_0  ( MIV_RV32IMA_L1_AHB_C0_0_TDO ),
        // Outputs
        .TDO        ( TDO_net_0 ),
        .TGT_TCK_0  ( CoreJTAGDebug_TRST_C0_0_TGT_TCK_0 ),
        .TGT_TMS_0  ( CoreJTAGDebug_TRST_C0_0_TGT_TMS_0 ),
        .TGT_TDI_0  ( CoreJTAGDebug_TRST_C0_0_TGT_TDI_0 ),
        .TGT_TRST_0 ( CoreJTAGDebug_TRST_C0_0_TGT_TRST_0 ) 
        );

//--------CORERESET_PF_C0
CORERESET_PF_C0 CORERESET_PF_C0_0(
        // Inputs
        .CLK                ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .EXT_RST_N          ( USER_RST ),
        .BANK_x_VDDI_STATUS ( VCC_net ),
        .BANK_y_VDDI_STATUS ( VCC_net ),
        .PLL_LOCK           ( PF_CCC_C0_0_PLL_LOCK_0 ),
        .SS_BUSY            ( GND_net ),
        .INIT_DONE          ( PF_INIT_MONITOR_C0_0_DEVICE_INIT_DONE ),
        .FF_US_RESTORE      ( GND_net ),
        .FPGA_POR_N         ( PF_INIT_MONITOR_C0_0_FABRIC_POR_N ),
        // Outputs
        .PLL_POWERDOWN_B    (  ),
        .FABRIC_RESET_N     ( CORERESET_PF_C0_0_FABRIC_RESET_N ) 
        );

//--------CoreTimer_C0
CoreTimer_C0 CoreTimer_C0_0(
        // Inputs
        .PCLK    ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PRESETn ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .PSEL    ( CoreAPB3_C0_0_APBmslave3_PSELx ),
        .PENABLE ( CoreAPB3_C0_0_APBmslave1_PENABLE ),
        .PADDR   ( CoreAPB3_C0_0_APBmslave1_PADDR_2 ),
        .PWRITE  ( CoreAPB3_C0_0_APBmslave1_PWRITE ),
        .PWDATA  ( CoreAPB3_C0_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_C0_0_TIMINT ),
        .PRDATA  ( CoreAPB3_C0_0_APBmslave3_PRDATA ) 
        );

//--------CoreTimer_C1
CoreTimer_C1 CoreTimer_C1_0(
        // Inputs
        .PCLK    ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PRESETn ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .PSEL    ( CoreAPB3_C0_0_APBmslave4_PSELx ),
        .PENABLE ( CoreAPB3_C0_0_APBmslave1_PENABLE ),
        .PADDR   ( CoreAPB3_C0_0_APBmslave1_PADDR_3 ),
        .PWRITE  ( CoreAPB3_C0_0_APBmslave1_PWRITE ),
        .PWDATA  ( CoreAPB3_C0_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_C1_0_TIMINT ),
        .PRDATA  ( CoreAPB3_C0_0_APBmslave4_PRDATA ) 
        );

//--------CoreUARTapb_C0
CoreUARTapb_C0 CoreUARTapb_C0_0(
        // Inputs
        .PCLK        ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PRESETN     ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .RX          ( RX ),
        .PADDR       ( CoreAPB3_C0_0_APBmslave1_PADDR_0 ),
        .PSEL        ( CoreAPB3_C0_0_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_C0_0_APBmslave1_PENABLE ),
        .PWRITE      ( CoreAPB3_C0_0_APBmslave1_PWRITE ),
        .PWDATA      ( CoreAPB3_C0_0_APBmslave1_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .FRAMING_ERR (  ),
        .PRDATA      ( CoreAPB3_C0_0_APBmslave1_PRDATA ),
        .PREADY      ( CoreAPB3_C0_0_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_C0_0_APBmslave1_PSLVERR ) 
        );

//--------MIV_RV32IMA_L1_AHB_C0
MIV_RV32IMA_L1_AHB_C0 MIV_RV32IMA_L1_AHB_C0_0(
        // Inputs
        .CLK                 ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .RESETN              ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .IRQ                 ( IRQ_net_0 ),
        .TDI                 ( CoreJTAGDebug_TRST_C0_0_TGT_TDI_0 ),
        .TCK                 ( CoreJTAGDebug_TRST_C0_0_TGT_TCK_0 ),
        .TMS                 ( CoreJTAGDebug_TRST_C0_0_TGT_TMS_0 ),
        .TRST                ( CoreJTAGDebug_TRST_C0_0_TGT_TRST_0 ),
        .AHB_MST_MEM_HRDATA  ( AHB_MST_MEM_HRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .AHB_MST_MEM_HREADY  ( VCC_net ), // tied to 1'b1 from definition
        .AHB_MST_MEM_HRESP   ( GND_net ), // tied to 1'b0 from definition
        .AHB_MST_MMIO_HRDATA ( AHB_MST_MMIO_HRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .AHB_MST_MMIO_HREADY ( VCC_net ), // tied to 1'b1 from definition
        .AHB_MST_MMIO_HRESP  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .AHB_MST_MEM_HSEL    (  ),
        .AHB_MST_MMIO_HSEL   (  ),
        .TDO                 ( MIV_RV32IMA_L1_AHB_C0_0_TDO ),
        .EXT_RESETN          (  ),
        .DRV_TDO             (  ),
        .AHB_MST_MEM_HADDR   (  ),
        .AHB_MST_MEM_HTRANS  (  ),
        .AHB_MST_MEM_HWRITE  (  ),
        .AHB_MST_MEM_HSIZE   (  ),
        .AHB_MST_MEM_HBURST  (  ),
        .AHB_MST_MEM_HPROT   (  ),
        .AHB_MST_MEM_HWDATA  (  ),
        .AHB_MST_MEM_HLOCK   (  ),
        .AHB_MST_MMIO_HADDR  (  ),
        .AHB_MST_MMIO_HTRANS (  ),
        .AHB_MST_MMIO_HWRITE (  ),
        .AHB_MST_MMIO_HSIZE  (  ),
        .AHB_MST_MMIO_HBURST (  ),
        .AHB_MST_MMIO_HPROT  (  ),
        .AHB_MST_MMIO_HWDATA (  ),
        .AHB_MST_MMIO_HLOCK  (  ) 
        );

//--------PF_CCC_C0
PF_CCC_C0 PF_CCC_C0_0(
        // Inputs
        .REF_CLK_0     ( CLKBUF_0_Y ),
        // Outputs
        .OUT0_FABCLK_0 ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0    ( PF_CCC_C0_0_PLL_LOCK_0 ) 
        );

//--------PF_INIT_MONITOR_C0
PF_INIT_MONITOR_C0 PF_INIT_MONITOR_C0_0(
        // Outputs
        .FABRIC_POR_N               ( PF_INIT_MONITOR_C0_0_FABRIC_POR_N ),
        .PCIE_INIT_DONE             (  ),
        .USRAM_INIT_DONE            (  ),
        .SRAM_INIT_DONE             (  ),
        .DEVICE_INIT_DONE           ( PF_INIT_MONITOR_C0_0_DEVICE_INIT_DONE ),
        .XCVR_INIT_DONE             (  ),
        .USRAM_INIT_FROM_SNVM_DONE  (  ),
        .USRAM_INIT_FROM_UPROM_DONE (  ),
        .USRAM_INIT_FROM_SPI_DONE   (  ),
        .SRAM_INIT_FROM_SNVM_DONE   (  ),
        .SRAM_INIT_FROM_UPROM_DONE  (  ),
        .SRAM_INIT_FROM_SPI_DONE    (  ),
        .AUTOCALIB_DONE             (  ) 
        );

//--------PF_SRAM_AHB_C0
PF_SRAM_AHB_C0 PF_SRAM_AHB_C0_0(
        // Inputs
        .HCLK      ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .HRESETN   ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .HADDR     ( CoreAHBL_C0_0_AHBmslave8_HADDR ),
        .HTRANS    ( CoreAHBL_C0_0_AHBmslave8_HTRANS ),
        .HWRITE    ( CoreAHBL_C0_0_AHBmslave8_HWRITE ),
        .HSIZE     ( CoreAHBL_C0_0_AHBmslave8_HSIZE ),
        .HBURST    ( CoreAHBL_C0_0_AHBmslave8_HBURST ),
        .HWDATA    ( CoreAHBL_C0_0_AHBmslave8_HWDATA ),
        .HSEL      ( CoreAHBL_C0_0_AHBmslave8_HSELx ),
        .HREADYIN  ( CoreAHBL_C0_0_AHBmslave8_HREADY ),
        // Outputs
        .HRDATA    ( CoreAHBL_C0_0_AHBmslave8_HRDATA ),
        .HREADYOUT ( CoreAHBL_C0_0_AHBmslave8_HREADYOUT ),
        .HRESP     ( CoreAHBL_C0_0_AHBmslave8_HRESP ) 
        );


endmodule
