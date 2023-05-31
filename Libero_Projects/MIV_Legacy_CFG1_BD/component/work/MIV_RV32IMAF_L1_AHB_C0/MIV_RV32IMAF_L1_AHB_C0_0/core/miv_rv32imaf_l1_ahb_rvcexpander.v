// Copyright (c) 2019, Microchip Corporation
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
// Copyright (c) 2019, Microchip Corporation 
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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_RVCEXPANDER( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110829.2]
  input  [31:0] io_in, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110832.4]
  output [31:0] io_out_bits, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110832.4]
  output [4:0]  io_out_rd, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110832.4]
  output [4:0]  io_out_rs1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110832.4]
  output [4:0]  io_out_rs2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110832.4]
  output [4:0]  io_out_rs3 // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110832.4]
);
  wire [4:0] _T_5; // @[RVC.scala 20:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110838.4]
  wire [4:0] _T_6; // @[RVC.scala 20:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110839.4]
  wire [4:0] _T_7; // @[RVC.scala 20:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110840.4]
  wire [4:0] _T_8; // @[RVC.scala 20:101:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110841.4]
  assign _T_5 = io_in[11:7]; // @[RVC.scala 20:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110838.4]
  assign _T_6 = io_in[19:15]; // @[RVC.scala 20:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110839.4]
  assign _T_7 = io_in[24:20]; // @[RVC.scala 20:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110840.4]
  assign _T_8 = io_in[31:27]; // @[RVC.scala 20:101:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110841.4]
  assign io_out_bits = io_in;
  assign io_out_rd = _T_5;
  assign io_out_rs1 = _T_6;
  assign io_out_rs2 = _T_7;
  assign io_out_rs3 = _T_8;
endmodule
