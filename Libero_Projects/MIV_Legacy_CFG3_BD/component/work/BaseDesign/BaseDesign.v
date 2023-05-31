//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu May 25 13:53:58 2023
// Version: 2023.1 2023.1.0.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// BaseDesign
module BaseDesign(
    // Inputs
    RX,
    SW_7,
    SW_8,
    SYS_CLK,
    TCK,
    TDI,
    TMS,
    TRSTB,
    USER_RST,
    // Outputs
    LED_4,
    LED_5,
    LED_6,
    LED_7,
    TDO,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  RX;
input  SW_7;
input  SW_8;
input  SYS_CLK;
input  TCK;
input  TDI;
input  TMS;
input  TRSTB;
input  USER_RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output LED_4;
output LED_5;
output LED_6;
output LED_7;
output TDO;
output TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
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
wire   [31:0] CoreAXITOAHBL_C0_0_AHBMasterIF_HADDR;
wire   [2:0]  CoreAXITOAHBL_C0_0_AHBMasterIF_HBURST;
wire   [31:0] CoreAXITOAHBL_C0_0_AHBMasterIF_HRDATA;
wire          CoreAXITOAHBL_C0_0_AHBMasterIF_HREADY;
wire   [2:0]  CoreAXITOAHBL_C0_0_AHBMasterIF_HSIZE;
wire   [1:0]  CoreAXITOAHBL_C0_0_AHBMasterIF_HTRANS;
wire   [31:0] CoreAXITOAHBL_C0_0_AHBMasterIF_HWDATA;
wire          CoreAXITOAHBL_C0_0_AHBMasterIF_HWRITE;
wire   [31:0] CoreAXITOAHBL_C1_0_AHBMasterIF_HADDR;
wire   [2:0]  CoreAXITOAHBL_C1_0_AHBMasterIF_HBURST;
wire   [31:0] CoreAXITOAHBL_C1_0_AHBMasterIF_HRDATA;
wire          CoreAXITOAHBL_C1_0_AHBMasterIF_HREADY;
wire   [2:0]  CoreAXITOAHBL_C1_0_AHBMasterIF_HSIZE;
wire   [1:0]  CoreAXITOAHBL_C1_0_AHBMasterIF_HTRANS;
wire   [31:0] CoreAXITOAHBL_C1_0_AHBMasterIF_HWDATA;
wire          CoreAXITOAHBL_C1_0_AHBMasterIF_HWRITE;
wire          CoreJTAGDebug_TRST_C0_0_TGT_TCK_0;
wire          CoreJTAGDebug_TRST_C0_0_TGT_TDI_0;
wire          CoreJTAGDebug_TRST_C0_0_TGT_TMS_0;
wire          CoreJTAGDebug_TRST_C0_0_TGT_TRST_0;
wire          CORERESET_PF_C0_0_FABRIC_RESET_N;
wire          CoreTimer_C0_0_TIMINT;
wire          CoreTimer_C1_0_TIMINT;
wire   [0:0]  LED_4_net_0;
wire   [1:1]  LED_5_net_0;
wire   [2:2]  LED_6_net_0;
wire   [3:3]  LED_7_net_0;
wire   [31:0] MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARADDR;
wire   [1:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARBURST;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARCACHE;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLOCK;
wire   [2:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARPROT;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARREADY;
wire   [2:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARSIZE;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARVALID;
wire   [31:0] MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWADDR;
wire   [1:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWBURST;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWCACHE;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLOCK;
wire   [2:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWPROT;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWREADY;
wire   [2:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWSIZE;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWVALID;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BREADY;
wire   [1:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BRESP;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BVALID;
wire   [63:0] MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RDATA;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RLAST;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RREADY;
wire   [1:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RRESP;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RVALID;
wire   [63:0] MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WDATA;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WLAST;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WREADY;
wire   [7:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WSTRB;
wire          MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WVALID;
wire   [1:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARBURST;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARCACHE;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLOCK;
wire   [2:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARPROT;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARREADY;
wire   [2:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARSIZE;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARVALID;
wire   [1:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWBURST;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWCACHE;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLOCK;
wire   [2:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWPROT;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWREADY;
wire   [2:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWSIZE;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWVALID;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BREADY;
wire   [1:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BRESP;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BVALID;
wire   [63:0] MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RDATA;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RLAST;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RREADY;
wire   [1:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RRESP;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RVALID;
wire   [63:0] MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WDATA;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WLAST;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WREADY;
wire   [7:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WSTRB;
wire          MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WVALID;
wire          MIV_RV32IMA_L1_AXI_C0_0_TDO;
wire          PF_INIT_MONITOR_C0_0_DEVICE_INIT_DONE;
wire          PF_INIT_MONITOR_C0_0_FABRIC_POR_N;
wire          RX;
wire          SW_7;
wire          SW_8;
wire          SYS_CLK;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TX_net_0;
wire          USER_RST;
wire          TDO_net_1;
wire          TX_net_1;
wire          LED_4_net_1;
wire          LED_5_net_1;
wire          LED_6_net_1;
wire          LED_7_net_1;
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
wire   [3:0]  HPROT_M0_const_net_0;
wire   [3:0]  HPROT_M1_const_net_0;
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
wire   [1:0]  CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP;
wire          CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP_0;
wire   [0:0]  CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP_0_0to0;
wire   [1:0]  CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP;
wire          CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP_0;
wire   [0:0]  CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP_0_0to0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0_3to0;
wire   [4:4]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0_4to4;
wire   [7:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN_0_3to0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0_3to0;
wire   [4:4]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0_4to4;
wire   [7:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN_0_3to0;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID_0_3to0;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID_0_3to0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0_3to0;
wire   [4:4]  MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0_4to4;
wire   [30:0] MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR;
wire   [31:0] MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0;
wire   [30:0] MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0_30to0;
wire   [31:31]MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0_31to31;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0_3to0;
wire   [4:4]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0_4to4;
wire   [7:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN_0_3to0;
wire   [30:0] MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR;
wire   [31:0] MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0;
wire   [30:0] MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0_30to0;
wire   [31:31]MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0_31to31;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0_3to0;
wire   [4:4]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0_4to4;
wire   [7:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN_0_3to0;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID_0_3to0;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID_0_3to0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID;
wire   [4:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0;
wire   [3:0]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0_3to0;
wire   [4:4]  MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0_4to4;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net              = 1'b0;
assign GPIO_IN_const_net_0  = 4'h0;
assign VCC_net              = 1'b1;
assign IRQ_const_net_0      = 29'h00000000;
assign HPROT_M0_const_net_0 = 4'h0;
assign HPROT_M1_const_net_0 = 4'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1   = TDO_net_0;
assign TDO         = TDO_net_1;
assign TX_net_1    = TX_net_0;
assign TX          = TX_net_1;
assign LED_4_net_1 = LED_4_net_0[0];
assign LED_4       = LED_4_net_1;
assign LED_5_net_1 = LED_5_net_0[1];
assign LED_5       = LED_5_net_1;
assign LED_6_net_1 = LED_6_net_0[2];
assign LED_6       = LED_6_net_1;
assign LED_7_net_1 = LED_7_net_0[3];
assign LED_7       = LED_7_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign LED_4_net_0[0] = GPIO_OUT_net_0[0:0];
assign LED_5_net_0[1] = GPIO_OUT_net_0[1:1];
assign LED_6_net_0[2] = GPIO_OUT_net_0[2:2];
assign LED_7_net_0[3] = GPIO_OUT_net_0[3:3];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign IRQ_net_0     = { CoreTimer_C1_0_TIMINT , CoreTimer_C0_0_TIMINT , 29'h00000000 };
assign GPIO_IN_net_0 = { SW_8 , SW_7 };
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

assign CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP_0 = { CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP_0_0to0 };
assign CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP_0_0to0 = CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP[0:0];

assign CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP_0 = { CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP_0_0to0 };
assign CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP_0_0to0 = CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP[0:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0_4to4, MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID[3:0];
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0_4to4 = 1'b0;

assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN_0 = { MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN[3:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0_4to4, MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID[3:0];
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0_4to4 = 1'b0;

assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN_0 = { MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN[3:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID[3:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID[3:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0_4to4, MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID[3:0];
assign MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0_4to4 = 1'b0;

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0_31to31, MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0_30to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0_30to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR[30:0];
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0_31to31 = 1'b0;

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0_4to4, MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID[3:0];
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0_4to4 = 1'b0;

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN[3:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0_31to31, MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0_30to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0_30to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR[30:0];
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0_31to31 = 1'b0;

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0_4to4, MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID[3:0];
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0_4to4 = 1'b0;

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN[3:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID[3:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID[3:0];

assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0 = { MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0_4to4, MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0_3to0 };
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0_3to0 = MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID[3:0];
assign MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0_4to4 = 1'b0;

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAHBL_C0
CoreAHBL_C0 CoreAHBL_C0_0(
        // Inputs
        .HCLK         ( SYS_CLK ),
        .HRESETN      ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .REMAP_M0     ( GND_net ),
        .HADDR_M0     ( CoreAXITOAHBL_C0_0_AHBMasterIF_HADDR ),
        .HTRANS_M0    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HTRANS ),
        .HWRITE_M0    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HWRITE ),
        .HSIZE_M0     ( CoreAXITOAHBL_C0_0_AHBMasterIF_HSIZE ),
        .HBURST_M0    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HBURST ),
        .HPROT_M0     ( HPROT_M0_const_net_0 ), // tied to 4'h0 from definition
        .HWDATA_M0    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HWDATA ),
        .HMASTLOCK_M0 ( GND_net ), // tied to 1'b0 from definition
        .HADDR_M1     ( CoreAXITOAHBL_C1_0_AHBMasterIF_HADDR ),
        .HTRANS_M1    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HTRANS ),
        .HWRITE_M1    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HWRITE ),
        .HSIZE_M1     ( CoreAXITOAHBL_C1_0_AHBMasterIF_HSIZE ),
        .HBURST_M1    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HBURST ),
        .HPROT_M1     ( HPROT_M1_const_net_0 ), // tied to 4'h0 from definition
        .HWDATA_M1    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HWDATA ),
        .HMASTLOCK_M1 ( GND_net ), // tied to 1'b0 from definition
        .HRDATA_S7    ( CoreAHBL_C0_0_AHBmslave7_HRDATA ),
        .HREADYOUT_S7 ( CoreAHBL_C0_0_AHBmslave7_HREADYOUT ),
        .HRESP_S7     ( CoreAHBL_C0_0_AHBmslave7_HRESP ),
        .HRDATA_S8    ( CoreAHBL_C0_0_AHBmslave8_HRDATA ),
        .HREADYOUT_S8 ( CoreAHBL_C0_0_AHBmslave8_HREADYOUT ),
        .HRESP_S8     ( CoreAHBL_C0_0_AHBmslave8_HRESP ),
        // Outputs
        .HRDATA_M0    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HRDATA ),
        .HREADY_M0    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HREADY ),
        .HRESP_M0     ( CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP ),
        .HRDATA_M1    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HRDATA ),
        .HREADY_M1    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HREADY ),
        .HRESP_M1     ( CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP ),
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
        .HCLK      ( SYS_CLK ),
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

//--------CoreAXITOAHBL_C0
CoreAXITOAHBL_C0 CoreAXITOAHBL_C0_0(
        // Inputs
        .ACLK     ( SYS_CLK ),
        .ARESETN  ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .HCLK     ( SYS_CLK ),
        .HRESETN  ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .AWID     ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID_0 ),
        .AWADDR   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR_0 ),
        .AWLEN    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN_0 ),
        .AWSIZE   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWSIZE ),
        .AWBURST  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWBURST ),
        .AWVALID  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWVALID ),
        .WDATA    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WDATA ),
        .WSTRB    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WSTRB ),
        .WLAST    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WLAST ),
        .WVALID   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WVALID ),
        .BREADY   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BREADY ),
        .ARID     ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID_0 ),
        .ARADDR   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR_0 ),
        .ARLEN    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN_0 ),
        .ARSIZE   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARSIZE ),
        .ARBURST  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARBURST ),
        .ARVALID  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARVALID ),
        .RREADY   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RREADY ),
        .WID_BIF  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID_0 ),
        .HRDATA   ( CoreAXITOAHBL_C0_0_AHBMasterIF_HRDATA ),
        .HRESP    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HRESP_0 ),
        .HREADYIN ( CoreAXITOAHBL_C0_0_AHBMasterIF_HREADY ),
        // Outputs
        .AWREADY  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWREADY ),
        .WREADY   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WREADY ),
        .BID      ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID ),
        .BRESP    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BRESP ),
        .BVALID   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BVALID ),
        .ARREADY  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARREADY ),
        .RID      ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID ),
        .RDATA    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RDATA ),
        .RRESP    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RRESP ),
        .RLAST    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RLAST ),
        .RVALID   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RVALID ),
        .HADDR    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HADDR ),
        .HTRANS   ( CoreAXITOAHBL_C0_0_AHBMasterIF_HTRANS ),
        .HWRITE   ( CoreAXITOAHBL_C0_0_AHBMasterIF_HWRITE ),
        .HSIZE    ( CoreAXITOAHBL_C0_0_AHBMasterIF_HSIZE ),
        .HBURST   ( CoreAXITOAHBL_C0_0_AHBMasterIF_HBURST ),
        .HWDATA   ( CoreAXITOAHBL_C0_0_AHBMasterIF_HWDATA ) 
        );

//--------CoreAXITOAHBL_C1
CoreAXITOAHBL_C1 CoreAXITOAHBL_C1_0(
        // Inputs
        .ACLK     ( SYS_CLK ),
        .ARESETN  ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .HCLK     ( SYS_CLK ),
        .HRESETN  ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .AWID     ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID_0 ),
        .AWADDR   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWADDR ),
        .AWLEN    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN_0 ),
        .AWSIZE   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWSIZE ),
        .AWBURST  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWBURST ),
        .AWVALID  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWVALID ),
        .WDATA    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WDATA ),
        .WSTRB    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WSTRB ),
        .WLAST    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WLAST ),
        .WVALID   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WVALID ),
        .BREADY   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BREADY ),
        .ARID     ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID_0 ),
        .ARADDR   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARADDR ),
        .ARLEN    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN_0 ),
        .ARSIZE   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARSIZE ),
        .ARBURST  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARBURST ),
        .ARVALID  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARVALID ),
        .RREADY   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RREADY ),
        .WID_BIF  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID_0 ),
        .HRDATA   ( CoreAXITOAHBL_C1_0_AHBMasterIF_HRDATA ),
        .HRESP    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HRESP_0 ),
        .HREADYIN ( CoreAXITOAHBL_C1_0_AHBMasterIF_HREADY ),
        // Outputs
        .AWREADY  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWREADY ),
        .WREADY   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WREADY ),
        .BID      ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID ),
        .BRESP    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BRESP ),
        .BVALID   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BVALID ),
        .ARREADY  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARREADY ),
        .RID      ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID ),
        .RDATA    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RDATA ),
        .RRESP    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RRESP ),
        .RLAST    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RLAST ),
        .RVALID   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RVALID ),
        .HADDR    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HADDR ),
        .HTRANS   ( CoreAXITOAHBL_C1_0_AHBMasterIF_HTRANS ),
        .HWRITE   ( CoreAXITOAHBL_C1_0_AHBMasterIF_HWRITE ),
        .HSIZE    ( CoreAXITOAHBL_C1_0_AHBMasterIF_HSIZE ),
        .HBURST   ( CoreAXITOAHBL_C1_0_AHBMasterIF_HBURST ),
        .HWDATA   ( CoreAXITOAHBL_C1_0_AHBMasterIF_HWDATA ) 
        );

//--------CoreGPIO_IN_C0
CoreGPIO_IN_C0 CoreGPIO_IN_C0_0(
        // Inputs
        .PRESETN  ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .PCLK     ( SYS_CLK ),
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
        .PCLK     ( SYS_CLK ),
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
        .TGT_TDO_0  ( MIV_RV32IMA_L1_AXI_C0_0_TDO ),
        // Outputs
        .TDO        ( TDO_net_0 ),
        .TGT_TCK_0  ( CoreJTAGDebug_TRST_C0_0_TGT_TCK_0 ),
        .TGT_TMS_0  ( CoreJTAGDebug_TRST_C0_0_TGT_TMS_0 ),
        .TGT_TDI_0  ( CoreJTAGDebug_TRST_C0_0_TGT_TDI_0 ),
        .TGT_TRST_0 ( CoreJTAGDebug_TRST_C0_0_TGT_TRST_0 ) 
        );

//--------CoreRESET_PF_C0
CoreRESET_PF_C0 CORERESET_PF_C0_0(
        // Inputs
        .CLK                ( SYS_CLK ),
        .EXT_RST_N          ( USER_RST ),
        .BANK_x_VDDI_STATUS ( VCC_net ),
        .BANK_y_VDDI_STATUS ( VCC_net ),
        .PLL_LOCK           ( VCC_net ),
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
        .PCLK    ( SYS_CLK ),
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
        .PCLK    ( SYS_CLK ),
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
        .PCLK        ( SYS_CLK ),
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

//--------MIV_RV32IMA_L1_AXI_C0
MIV_RV32IMA_L1_AXI_C0 MIV_RV32IMA_L1_AXI_C0_0(
        // Inputs
        .CLK                      ( SYS_CLK ),
        .RESETN                   ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .IRQ                      ( IRQ_net_0 ),
        .TDI                      ( CoreJTAGDebug_TRST_C0_0_TGT_TDI_0 ),
        .TCK                      ( CoreJTAGDebug_TRST_C0_0_TGT_TCK_0 ),
        .TMS                      ( CoreJTAGDebug_TRST_C0_0_TGT_TMS_0 ),
        .TRST                     ( CoreJTAGDebug_TRST_C0_0_TGT_TRST_0 ),
        .MEM_AXI_0_AW_READY       ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWREADY ),
        .MEM_AXI_0_W_READY        ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WREADY ),
        .MEM_AXI_0_B_BITS_ID      ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BID_0 ),
        .MEM_AXI_0_B_BITS_RESP    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BRESP ),
        .MEM_AXI_0_B_VALID        ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BVALID ),
        .MEM_AXI_0_AR_READY       ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARREADY ),
        .MEM_AXI_0_R_BITS_ID      ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RID_0 ),
        .MEM_AXI_0_R_BITS_DATA    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RDATA ),
        .MEM_AXI_0_R_BITS_RESP    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RRESP ),
        .MEM_AXI_0_R_BITS_LAST    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RLAST ),
        .MEM_AXI_0_R_VALID        ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RVALID ),
        .MMIO_AXI_0_AW_READY      ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWREADY ),
        .MMIO_AXI_0_W_READY       ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WREADY ),
        .MMIO_AXI_0_B_BITS_ID     ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BID_0 ),
        .MMIO_AXI_0_B_BITS_RESP   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BRESP ),
        .MMIO_AXI_0_B_VALID       ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BVALID ),
        .MMIO_AXI_0_AR_READY      ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARREADY ),
        .MMIO_AXI_0_R_BITS_ID     ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RID_0 ),
        .MMIO_AXI_0_R_BITS_DATA   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RDATA ),
        .MMIO_AXI_0_R_BITS_RESP   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RRESP ),
        .MMIO_AXI_0_R_BITS_LAST   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RLAST ),
        .MMIO_AXI_0_R_VALID       ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RVALID ),
        // Outputs
        .TDO                      ( MIV_RV32IMA_L1_AXI_C0_0_TDO ),
        .DRV_TDO                  (  ),
        .EXT_RESETN               (  ),
        .MEM_AXI_0_AW_BITS_ID     ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWID ),
        .MEM_AXI_0_AW_BITS_ADDR   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWADDR ),
        .MEM_AXI_0_AW_BITS_LEN    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLEN ),
        .MEM_AXI_0_AW_BITS_SIZE   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWSIZE ),
        .MEM_AXI_0_AW_BITS_BURST  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWBURST ),
        .MEM_AXI_0_AW_BITS_LOCK   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWLOCK ),
        .MEM_AXI_0_AW_BITS_CACHE  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWCACHE ),
        .MEM_AXI_0_AW_BITS_PROT   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWPROT ),
        .MEM_AXI_0_AW_VALID       ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_AWVALID ),
        .MEM_AXI_0_W_BITS_DATA    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WDATA ),
        .MEM_AXI_0_W_BITS_STRB    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WSTRB ),
        .MEM_AXI_0_W_BITS_LAST    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WLAST ),
        .MEM_AXI_0_W_VALID        ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WVALID ),
        .MEM_AXI_0_B_READY        ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_BREADY ),
        .MEM_AXI_0_AR_BITS_ID     ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARID ),
        .MEM_AXI_0_AR_BITS_ADDR   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARADDR ),
        .MEM_AXI_0_AR_BITS_LEN    ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLEN ),
        .MEM_AXI_0_AR_BITS_SIZE   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARSIZE ),
        .MEM_AXI_0_AR_BITS_BURST  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARBURST ),
        .MEM_AXI_0_AR_BITS_LOCK   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARLOCK ),
        .MEM_AXI_0_AR_BITS_CACHE  ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARCACHE ),
        .MEM_AXI_0_AR_BITS_PROT   ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARPROT ),
        .MEM_AXI_0_AR_VALID       ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_ARVALID ),
        .MEM_AXI_0_R_READY        ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_RREADY ),
        .MEM_AXI_0_W_BITS_WID     ( MIV_RV32IMA_L1_AXI_C0_0_MEM_MST_AXI_WID ),
        .MMIO_AXI_0_AW_BITS_ID    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWID ),
        .MMIO_AXI_0_AW_BITS_ADDR  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWADDR ),
        .MMIO_AXI_0_AW_BITS_LEN   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLEN ),
        .MMIO_AXI_0_AW_BITS_SIZE  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWSIZE ),
        .MMIO_AXI_0_AW_BITS_BURST ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWBURST ),
        .MMIO_AXI_0_AW_BITS_CACHE ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWCACHE ),
        .MMIO_AXI_0_AW_BITS_LOCK  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWLOCK ),
        .MMIO_AXI_0_AR_BITS_PROT  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWPROT ),
        .MMIO_AXI_0_AW_VALID      ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_AWVALID ),
        .MMIO_AXI_0_W_BITS_DATA   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WDATA ),
        .MMIO_AXI_0_W_BITS_STRB   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WSTRB ),
        .MMIO_AXI_0_W_BITS_LAST   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WLAST ),
        .MMIO_AXI_0_W_VALID       ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WVALID ),
        .MMIO_AXI_0_B_READY       ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_BREADY ),
        .MMIO_AXI_0_AR_BITS_ID    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARID ),
        .MMIO_AXI_0_AR_BITS_ADDR  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARADDR ),
        .MMIO_AXI_0_AR_BITS_LEN   ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLEN ),
        .MMIO_AXI_0_AR_BITS_SIZE  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARSIZE ),
        .MMIO_AXI_0_AR_BITS_BURST ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARBURST ),
        .MMIO_AXI_0_AR_BITS_LOCK  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARLOCK ),
        .MMIO_AXI_0_AR_BITS_CACHE ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARCACHE ),
        .MMIO_AXI_0_AW_BITS_PROT  ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARPROT ),
        .MMIO_AXI_0_AR_VALID      ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_ARVALID ),
        .MMIO_AXI_0_R_READY       ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_RREADY ),
        .MMIO_AXI_0_W_BITS_WID    ( MIV_RV32IMA_L1_AXI_C0_0_MMIO_MST_AXI_WID ) 
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
        .HCLK      ( SYS_CLK ),
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
