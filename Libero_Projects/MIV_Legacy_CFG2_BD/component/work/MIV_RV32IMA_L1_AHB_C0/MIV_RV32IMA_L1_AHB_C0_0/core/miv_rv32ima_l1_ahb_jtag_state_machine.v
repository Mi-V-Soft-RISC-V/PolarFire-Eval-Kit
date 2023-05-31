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
module MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_JTAG_STATE_MACHINE( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113379.2]
  input        clock, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113380.4]
  input        io_tms, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113382.4]
  output [3:0] io_currState, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113382.4]
  input        io_jtag_reset // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113382.4]
);
  wire  currStateReg_clock; // @[JtagStateMachine.scala 84:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113389.4]
  wire  currStateReg_reset; // @[JtagStateMachine.scala 84:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113389.4]
  wire [3:0] currStateReg_io_d; // @[JtagStateMachine.scala 84:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113389.4]
  wire [3:0] currStateReg_io_q; // @[JtagStateMachine.scala 84:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113389.4]
  wire  _T_8; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113397.4]
  wire [3:0] _T_11; // @[JtagStateMachine.scala 96:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113399.6]
  wire  _T_13; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113403.6]
  wire [3:0] _T_16; // @[JtagStateMachine.scala 99:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113405.8]
  wire  _T_18; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113409.8]
  wire [3:0] _T_21; // @[JtagStateMachine.scala 102:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113411.10]
  wire  _T_23; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113415.10]
  wire [3:0] _T_26; // @[JtagStateMachine.scala 105:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113417.12]
  wire  _T_28; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113421.12]
  wire  _T_33; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113427.14]
  wire [3:0] _T_36; // @[JtagStateMachine.scala 111:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113429.16]
  wire  _T_38; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113433.16]
  wire [3:0] _T_41; // @[JtagStateMachine.scala 114:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113435.18]
  wire  _T_43; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113439.18]
  wire [3:0] _T_46; // @[JtagStateMachine.scala 117:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113441.20]
  wire  _T_48; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113445.20]
  wire  _T_53; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113451.22]
  wire [3:0] _T_56; // @[JtagStateMachine.scala 123:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113453.24]
  wire  _T_58; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113457.24]
  wire [3:0] _T_61; // @[JtagStateMachine.scala 126:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113459.26]
  wire  _T_63; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113463.26]
  wire  _T_68; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113469.28]
  wire [3:0] _T_71; // @[JtagStateMachine.scala 132:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113471.30]
  wire  _T_73; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113475.30]
  wire [3:0] _T_76; // @[JtagStateMachine.scala 135:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113477.32]
  wire  _T_78; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113481.32]
  wire [3:0] _T_81; // @[JtagStateMachine.scala 138:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113483.34]
  wire [3:0] _GEN_1; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113482.32]
  wire [3:0] _GEN_2; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113476.30]
  wire [3:0] _GEN_3; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113470.28]
  wire [3:0] _GEN_4; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113464.26]
  wire [3:0] _GEN_5; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113458.24]
  wire [3:0] _GEN_6; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113452.22]
  wire [3:0] _GEN_7; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113446.20]
  wire [3:0] _GEN_8; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113440.18]
  wire [3:0] _GEN_9; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113434.16]
  wire [3:0] _GEN_10; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113428.14]
  wire [3:0] _GEN_11; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113422.12]
  wire [3:0] _GEN_12; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113416.10]
  wire [3:0] _GEN_13; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113410.8]
  wire [3:0] _GEN_14; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113404.6]
  wire [3:0] nextState; // @[Conditional.scala 40:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113398.4]
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_W4_I15 currStateReg ( // @[JtagStateMachine.scala 84:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113389.4]
    .clock(currStateReg_clock),
    .reset(currStateReg_reset),
    .io_d(currStateReg_io_d),
    .io_q(currStateReg_io_q)
  );
  assign _T_8 = 4'hf == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113397.4]
  assign _T_11 = io_tms ? 4'hf : 4'hc; // @[JtagStateMachine.scala 96:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113399.6]
  assign _T_13 = 4'hc == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113403.6]
  assign _T_16 = io_tms ? 4'h7 : 4'hc; // @[JtagStateMachine.scala 99:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113405.8]
  assign _T_18 = 4'h7 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113409.8]
  assign _T_21 = io_tms ? 4'h4 : 4'h6; // @[JtagStateMachine.scala 102:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113411.10]
  assign _T_23 = 4'h6 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113415.10]
  assign _T_26 = io_tms ? 4'h1 : 4'h2; // @[JtagStateMachine.scala 105:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113417.12]
  assign _T_28 = 4'h2 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113421.12]
  assign _T_33 = 4'h1 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113427.14]
  assign _T_36 = io_tms ? 4'h5 : 4'h3; // @[JtagStateMachine.scala 111:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113429.16]
  assign _T_38 = 4'h3 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113433.16]
  assign _T_41 = io_tms ? 4'h0 : 4'h3; // @[JtagStateMachine.scala 114:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113435.18]
  assign _T_43 = 4'h0 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113439.18]
  assign _T_46 = io_tms ? 4'h5 : 4'h2; // @[JtagStateMachine.scala 117:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113441.20]
  assign _T_48 = 4'h5 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113445.20]
  assign _T_53 = 4'h4 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113451.22]
  assign _T_56 = io_tms ? 4'hf : 4'he; // @[JtagStateMachine.scala 123:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113453.24]
  assign _T_58 = 4'he == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113457.24]
  assign _T_61 = io_tms ? 4'h9 : 4'ha; // @[JtagStateMachine.scala 126:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113459.26]
  assign _T_63 = 4'ha == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113463.26]
  assign _T_68 = 4'h9 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113469.28]
  assign _T_71 = io_tms ? 4'hd : 4'hb; // @[JtagStateMachine.scala 132:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113471.30]
  assign _T_73 = 4'hb == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113475.30]
  assign _T_76 = io_tms ? 4'h8 : 4'hb; // @[JtagStateMachine.scala 135:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113477.32]
  assign _T_78 = 4'h8 == currStateReg_io_q; // @[Conditional.scala 37:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113481.32]
  assign _T_81 = io_tms ? 4'hd : 4'ha; // @[JtagStateMachine.scala 138:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113483.34]
  assign _GEN_1 = _T_78 ? _T_81 : _T_16; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113482.32]
  assign _GEN_2 = _T_73 ? _T_76 : _GEN_1; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113476.30]
  assign _GEN_3 = _T_68 ? _T_71 : _GEN_2; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113470.28]
  assign _GEN_4 = _T_63 ? _T_61 : _GEN_3; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113464.26]
  assign _GEN_5 = _T_58 ? _T_61 : _GEN_4; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113458.24]
  assign _GEN_6 = _T_53 ? _T_56 : _GEN_5; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113452.22]
  assign _GEN_7 = _T_48 ? _T_16 : _GEN_6; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113446.20]
  assign _GEN_8 = _T_43 ? _T_46 : _GEN_7; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113440.18]
  assign _GEN_9 = _T_38 ? _T_41 : _GEN_8; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113434.16]
  assign _GEN_10 = _T_33 ? _T_36 : _GEN_9; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113428.14]
  assign _GEN_11 = _T_28 ? _T_26 : _GEN_10; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113422.12]
  assign _GEN_12 = _T_23 ? _T_26 : _GEN_11; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113416.10]
  assign _GEN_13 = _T_18 ? _T_21 : _GEN_12; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113410.8]
  assign _GEN_14 = _T_13 ? _T_16 : _GEN_13; // @[Conditional.scala 39:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113404.6]
  assign nextState = _T_8 ? _T_11 : _GEN_14; // @[Conditional.scala 40:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@113398.4]
  assign io_currState = currStateReg_io_q;
  assign currStateReg_clock = clock;
  assign currStateReg_reset = io_jtag_reset;
  assign currStateReg_io_d = nextState;
endmodule
