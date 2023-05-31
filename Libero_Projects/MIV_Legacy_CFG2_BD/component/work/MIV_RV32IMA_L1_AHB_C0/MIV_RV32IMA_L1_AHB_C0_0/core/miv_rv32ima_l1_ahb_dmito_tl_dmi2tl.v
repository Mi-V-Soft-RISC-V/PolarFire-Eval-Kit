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
module MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_DMITO_TL_DMI2TL( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20268.2]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  output [8:0]  auto_out_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  input         auto_out_d_bits_error, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20271.4]
  output        io_dmi_req_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
  input         io_dmi_req_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
  input  [6:0]  io_dmi_req_bits_addr, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
  input  [31:0] io_dmi_req_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
  input  [1:0]  io_dmi_req_bits_op, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
  input         io_dmi_resp_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
  output        io_dmi_resp_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
  output [31:0] io_dmi_resp_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
  output [1:0]  io_dmi_resp_bits_resp // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20272.4]
);
  wire [8:0] _GEN_14; // @[Debug.scala 1114:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20284.4]
  wire [8:0] addr; // @[Debug.scala 1114:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20284.4]
  wire  _T_260; // @[Debug.scala 1128:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20410.4]
  wire  _T_262; // @[Debug.scala 1129:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20415.6]
  wire [2:0] _GEN_0; // @[Debug.scala 1129:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20416.6]
  wire [8:0] _GEN_4; // @[Debug.scala 1129:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20416.6]
  wire [3:0] _GEN_5; // @[Debug.scala 1129:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20416.6]
  wire [2:0] tl_a_bits_opcode; // @[Debug.scala 1128:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20411.4]
  wire [8:0] tl_a_bits_address; // @[Debug.scala 1128:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20411.4]
  wire [3:0] tl_a_bits_mask; // @[Debug.scala 1128:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20411.4]
  wire [31:0] tl_a_bits_data; // @[Debug.scala 1128:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20411.4]
  assign _GEN_14 = {{2'd0}, io_dmi_req_bits_addr}; // @[Debug.scala 1114:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20284.4]
  assign addr = _GEN_14 << 2; // @[Debug.scala 1114:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20284.4]
  assign _T_260 = io_dmi_req_bits_op == 2'h2; // @[Debug.scala 1128:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20410.4]
  assign _T_262 = io_dmi_req_bits_op == 2'h1; // @[Debug.scala 1129:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20415.6]
  assign _GEN_0 = _T_262 ? 3'h4 : 3'h1; // @[Debug.scala 1129:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20416.6]
  assign _GEN_4 = _T_262 ? addr : 9'h40; // @[Debug.scala 1129:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20416.6]
  assign _GEN_5 = _T_262 ? 4'hf : 4'h0; // @[Debug.scala 1129:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20416.6]
  assign tl_a_bits_opcode = _T_260 ? 3'h0 : _GEN_0; // @[Debug.scala 1128:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20411.4]
  assign tl_a_bits_address = _T_260 ? addr : _GEN_4; // @[Debug.scala 1128:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20411.4]
  assign tl_a_bits_mask = _T_260 ? 4'hf : _GEN_5; // @[Debug.scala 1128:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20411.4]
  assign tl_a_bits_data = _T_260 ? io_dmi_req_bits_data : 32'h0; // @[Debug.scala 1128:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@20411.4]
  assign auto_out_a_valid = io_dmi_req_valid;
  assign auto_out_a_bits_opcode = tl_a_bits_opcode;
  assign auto_out_a_bits_address = tl_a_bits_address;
  assign auto_out_a_bits_mask = tl_a_bits_mask;
  assign auto_out_a_bits_data = tl_a_bits_data;
  assign auto_out_d_ready = io_dmi_resp_ready;
  assign io_dmi_req_ready = auto_out_a_ready;
  assign io_dmi_resp_valid = auto_out_d_valid;
  assign io_dmi_resp_bits_data = auto_out_d_bits_data;
  assign io_dmi_resp_bits_resp = {{1'd0}, auto_out_d_bits_error};
endmodule
