// Copyright (c) 2017, Microsemi Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2017, Microsemi Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`ifndef RANDOMIZE_REG_INIT 
	 `define RANDOMIZE_REG_INIT 
 `endif
`ifndef RANDOMIZE_MEM_INIT 
	 `define RANDOMIZE_MEM_INIT 
 `endif
`ifndef RANDOMIZE 
	 `define RANDOMIZE 
`endif

`timescale 1ns/10ps
module MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_INT_XING( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111331.2]
  input   clock, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111332.4]
  input   auto_int_in_0, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_1, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_2, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_3, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_4, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_5, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_6, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_7, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_8, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_9, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_10, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_11, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_12, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_13, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_14, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_15, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_16, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_17, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_18, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_19, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_20, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_21, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_22, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_23, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_24, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_25, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_26, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_27, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_28, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_29, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  input   auto_int_in_30, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_0, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_1, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_2, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_3, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_4, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_5, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_6, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_7, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_8, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_9, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_10, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_11, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_12, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_13, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_14, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_15, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_16, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_17, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_18, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_19, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_20, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_21, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_22, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_23, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_24, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_25, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_26, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_27, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_28, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_29, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
  output  auto_int_out_30 // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111334.4]
);
  wire  SynchronizerShiftReg_w31_d3_clock; // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111345.4]
  wire [30:0] SynchronizerShiftReg_w31_d3_io_d; // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111345.4]
  wire [30:0] SynchronizerShiftReg_w31_d3_io_q; // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111345.4]
  wire [1:0] _T_304; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111349.4]
  wire [2:0] _T_305; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111350.4]
  wire [1:0] _T_306; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111351.4]
  wire [1:0] _T_307; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111352.4]
  wire [3:0] _T_308; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111353.4]
  wire [6:0] _T_309; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111354.4]
  wire [1:0] _T_310; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111355.4]
  wire [1:0] _T_311; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111356.4]
  wire [3:0] _T_312; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111357.4]
  wire [1:0] _T_313; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111358.4]
  wire [1:0] _T_314; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111359.4]
  wire [3:0] _T_315; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111360.4]
  wire [7:0] _T_316; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111361.4]
  wire [14:0] _T_317; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111362.4]
  wire [1:0] _T_318; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111363.4]
  wire [1:0] _T_319; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111364.4]
  wire [3:0] _T_320; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111365.4]
  wire [1:0] _T_321; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111366.4]
  wire [1:0] _T_322; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111367.4]
  wire [3:0] _T_323; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111368.4]
  wire [7:0] _T_324; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111369.4]
  wire [1:0] _T_325; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111370.4]
  wire [1:0] _T_326; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111371.4]
  wire [3:0] _T_327; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111372.4]
  wire [1:0] _T_328; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111373.4]
  wire [1:0] _T_329; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111374.4]
  wire [3:0] _T_330; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111375.4]
  wire [7:0] _T_331; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111376.4]
  wire [15:0] _T_332; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111377.4]
  wire [30:0] _T_333; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111378.4]
  wire [30:0] _T_499; // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111382.4]
  wire  _T_500; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111385.4]
  wire  _T_501; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111387.4]
  wire  _T_502; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111389.4]
  wire  _T_503; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111391.4]
  wire  _T_504; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111393.4]
  wire  _T_505; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111395.4]
  wire  _T_506; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111397.4]
  wire  _T_507; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111399.4]
  wire  _T_508; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111401.4]
  wire  _T_509; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111403.4]
  wire  _T_510; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111405.4]
  wire  _T_511; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111407.4]
  wire  _T_512; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111409.4]
  wire  _T_513; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111411.4]
  wire  _T_514; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111413.4]
  wire  _T_515; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111415.4]
  wire  _T_516; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111417.4]
  wire  _T_517; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111419.4]
  wire  _T_518; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111421.4]
  wire  _T_519; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111423.4]
  wire  _T_520; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111425.4]
  wire  _T_521; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111427.4]
  wire  _T_522; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111429.4]
  wire  _T_523; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111431.4]
  wire  _T_524; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111433.4]
  wire  _T_525; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111435.4]
  wire  _T_526; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111437.4]
  wire  _T_527; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111439.4]
  wire  _T_528; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111441.4]
  wire  _T_529; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111443.4]
  wire  _T_530; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111445.4]
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_SYNCHRONIZER_SHIFT_REG_W31_D3 MIV_RV32IMA_L1_AHB_SYNCHRONIZER_SHIFT_REG_W31_D3 ( // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111345.4]
    .clock(SynchronizerShiftReg_w31_d3_clock),
    .io_d(SynchronizerShiftReg_w31_d3_io_d),
    .io_q(SynchronizerShiftReg_w31_d3_io_q)
  );
  assign _T_304 = {auto_int_in_2,auto_int_in_1}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111349.4]
  assign _T_305 = {_T_304,auto_int_in_0}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111350.4]
  assign _T_306 = {auto_int_in_4,auto_int_in_3}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111351.4]
  assign _T_307 = {auto_int_in_6,auto_int_in_5}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111352.4]
  assign _T_308 = {_T_307,_T_306}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111353.4]
  assign _T_309 = {_T_308,_T_305}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111354.4]
  assign _T_310 = {auto_int_in_8,auto_int_in_7}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111355.4]
  assign _T_311 = {auto_int_in_10,auto_int_in_9}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111356.4]
  assign _T_312 = {_T_311,_T_310}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111357.4]
  assign _T_313 = {auto_int_in_12,auto_int_in_11}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111358.4]
  assign _T_314 = {auto_int_in_14,auto_int_in_13}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111359.4]
  assign _T_315 = {_T_314,_T_313}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111360.4]
  assign _T_316 = {_T_315,_T_312}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111361.4]
  assign _T_317 = {_T_316,_T_309}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111362.4]
  assign _T_318 = {auto_int_in_16,auto_int_in_15}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111363.4]
  assign _T_319 = {auto_int_in_18,auto_int_in_17}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111364.4]
  assign _T_320 = {_T_319,_T_318}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111365.4]
  assign _T_321 = {auto_int_in_20,auto_int_in_19}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111366.4]
  assign _T_322 = {auto_int_in_22,auto_int_in_21}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111367.4]
  assign _T_323 = {_T_322,_T_321}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111368.4]
  assign _T_324 = {_T_323,_T_320}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111369.4]
  assign _T_325 = {auto_int_in_24,auto_int_in_23}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111370.4]
  assign _T_326 = {auto_int_in_26,auto_int_in_25}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111371.4]
  assign _T_327 = {_T_326,_T_325}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111372.4]
  assign _T_328 = {auto_int_in_28,auto_int_in_27}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111373.4]
  assign _T_329 = {auto_int_in_30,auto_int_in_29}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111374.4]
  assign _T_330 = {_T_329,_T_328}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111375.4]
  assign _T_331 = {_T_330,_T_327}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111376.4]
  assign _T_332 = {_T_331,_T_324}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111377.4]
  assign _T_333 = {_T_332,_T_317}; // @[ShiftReg.scala 49:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111378.4]
  assign _T_499 = SynchronizerShiftReg_w31_d3_io_q; // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111382.4]
  assign _T_500 = _T_499[0]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111385.4]
  assign _T_501 = _T_499[1]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111387.4]
  assign _T_502 = _T_499[2]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111389.4]
  assign _T_503 = _T_499[3]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111391.4]
  assign _T_504 = _T_499[4]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111393.4]
  assign _T_505 = _T_499[5]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111395.4]
  assign _T_506 = _T_499[6]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111397.4]
  assign _T_507 = _T_499[7]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111399.4]
  assign _T_508 = _T_499[8]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111401.4]
  assign _T_509 = _T_499[9]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111403.4]
  assign _T_510 = _T_499[10]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111405.4]
  assign _T_511 = _T_499[11]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111407.4]
  assign _T_512 = _T_499[12]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111409.4]
  assign _T_513 = _T_499[13]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111411.4]
  assign _T_514 = _T_499[14]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111413.4]
  assign _T_515 = _T_499[15]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111415.4]
  assign _T_516 = _T_499[16]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111417.4]
  assign _T_517 = _T_499[17]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111419.4]
  assign _T_518 = _T_499[18]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111421.4]
  assign _T_519 = _T_499[19]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111423.4]
  assign _T_520 = _T_499[20]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111425.4]
  assign _T_521 = _T_499[21]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111427.4]
  assign _T_522 = _T_499[22]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111429.4]
  assign _T_523 = _T_499[23]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111431.4]
  assign _T_524 = _T_499[24]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111433.4]
  assign _T_525 = _T_499[25]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111435.4]
  assign _T_526 = _T_499[26]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111437.4]
  assign _T_527 = _T_499[27]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111439.4]
  assign _T_528 = _T_499[28]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111441.4]
  assign _T_529 = _T_499[29]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111443.4]
  assign _T_530 = _T_499[30]; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111445.4]
  assign auto_int_out_0 = _T_500;
  assign auto_int_out_1 = _T_501;
  assign auto_int_out_2 = _T_502;
  assign auto_int_out_3 = _T_503;
  assign auto_int_out_4 = _T_504;
  assign auto_int_out_5 = _T_505;
  assign auto_int_out_6 = _T_506;
  assign auto_int_out_7 = _T_507;
  assign auto_int_out_8 = _T_508;
  assign auto_int_out_9 = _T_509;
  assign auto_int_out_10 = _T_510;
  assign auto_int_out_11 = _T_511;
  assign auto_int_out_12 = _T_512;
  assign auto_int_out_13 = _T_513;
  assign auto_int_out_14 = _T_514;
  assign auto_int_out_15 = _T_515;
  assign auto_int_out_16 = _T_516;
  assign auto_int_out_17 = _T_517;
  assign auto_int_out_18 = _T_518;
  assign auto_int_out_19 = _T_519;
  assign auto_int_out_20 = _T_520;
  assign auto_int_out_21 = _T_521;
  assign auto_int_out_22 = _T_522;
  assign auto_int_out_23 = _T_523;
  assign auto_int_out_24 = _T_524;
  assign auto_int_out_25 = _T_525;
  assign auto_int_out_26 = _T_526;
  assign auto_int_out_27 = _T_527;
  assign auto_int_out_28 = _T_528;
  assign auto_int_out_29 = _T_529;
  assign auto_int_out_30 = _T_530;
  assign SynchronizerShiftReg_w31_d3_clock = clock;
  assign SynchronizerShiftReg_w31_d3_io_d = _T_333;
endmodule
