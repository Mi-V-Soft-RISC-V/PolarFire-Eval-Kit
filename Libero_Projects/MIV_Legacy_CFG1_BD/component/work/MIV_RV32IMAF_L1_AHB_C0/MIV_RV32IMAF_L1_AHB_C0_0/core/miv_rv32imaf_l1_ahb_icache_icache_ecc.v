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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ICACHE_ICACHE( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104297.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104298.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104299.4]
  input         auto_master_out_a_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104300.4]
  output        auto_master_out_a_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104300.4]
  output [31:0] auto_master_out_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104300.4]
  input         auto_master_out_d_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104300.4]
  input  [2:0]  auto_master_out_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104300.4]
  input  [3:0]  auto_master_out_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104300.4]
  input  [31:0] auto_master_out_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104300.4]
  input         auto_master_out_d_bits_error, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104300.4]
  output        io_req_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  input         io_req_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  input  [31:0] io_req_bits_addr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  input  [31:0] io_s1_paddr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  input         io_s1_kill, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  input         io_s2_kill, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  output        io_resp_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  output [31:0] io_resp_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  output        io_resp_bits_replay, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  output        io_resp_bits_ae, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  input         io_invalidate, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104301.4]
  output        sb_correct,
  output        db_detect,
  output        icache_ram_init_done,
  input         reset_flag
);
  parameter ECC_EN = 1;
  reg  s1_valid; // @[ICache.scala 138:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104317.4]
  reg [31:0] _RAND_0;
  reg  s2_valid; // @[ICache.scala 141:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104324.4]
  reg [31:0] _RAND_1;
  reg  s2_hit; // @[ICache.scala 142:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104326.4]
  reg [31:0] _RAND_2;
  reg  invalidated; // @[ICache.scala 144:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104328.4]
  reg [31:0] _RAND_3;
  reg  refill_valid; // @[ICache.scala 145:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104329.4]
  reg [31:0] _RAND_4;
  reg  _T_148; // @[ICache.scala 149:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104339.4]
  reg [31:0] _RAND_5;
  reg [31:0] refill_addr; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104346.4]
  reg [31:0] _RAND_6;
  reg [9:0] _T_174; // @[Edges.scala 220:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104369.4]
  reg [31:0] _RAND_7;
  wire [6:0] tag_array_RW0_addr; // @[ICache.scala 177:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104387.4]
  wire  tag_array_RW0_en; // @[ICache.scala 177:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104387.4]
  wire  tag_array_RW0_clk; // @[ICache.scala 177:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104387.4]
  wire  tag_array_RW0_wmode; // @[ICache.scala 177:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104387.4]
  wire [19:0] tag_array_RW0_wdata_0; // @[ICache.scala 177:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104387.4]
  wire [19:0] tag_array_RW0_rdata_0; // @[ICache.scala 177:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104387.4]
  wire  tag_array_RW0_wmask_0; // @[ICache.scala 177:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104387.4]
  reg [127:0] vb_array; // @[ICache.scala 187:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104411.4]
  reg [127:0] _RAND_8;
  wire [10:0] data_arrays_0_RW0_addr; // @[ICache.scala 225:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104481.4]
  wire  data_arrays_0_RW0_en; // @[ICache.scala 225:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104481.4]
  wire  data_arrays_0_RW0_clk; // @[ICache.scala 225:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104481.4]
  wire  data_arrays_0_RW0_wmode; // @[ICache.scala 225:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104481.4]
  wire [31:0] data_arrays_0_RW0_wdata_0; // @[ICache.scala 225:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104481.4]
  wire [31:0] data_arrays_0_RW0_rdata_0; // @[ICache.scala 225:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104481.4]
  wire  data_arrays_0_RW0_wmask_0; // @[ICache.scala 225:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104481.4]
  reg [31:0] s2_dout_0; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104536.4]
  reg [31:0] _RAND_9;
  reg  s2_tag_disparity; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104540.4]
  reg [31:0] _RAND_10;
  reg  s2_tl_error; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104546.4]
  reg [31:0] _RAND_11;
  wire [6:0] _T_263; // @[ICache.scala 208:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104439.4]
  wire [7:0] _T_285; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104451.4]
  wire [127:0] _T_286; // @[ICache.scala 214:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104452.4]
  wire  _T_287; // @[ICache.scala 214:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104453.4]
  wire [18:0] _T_292; // @[Misc.scala 161:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104457.4]
  wire [18:0] _T_264; // @[ICache.scala 209:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104440.4]
  wire  _T_293; // @[ICache.scala 217:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104458.4]
  wire  s1_tag_hit_0; // @[ICache.scala 217:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104459.4]
  wire  _T_126; // @[ICache.scala 141:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104322.4]
  wire  _T_127; // @[ICache.scala 141:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104323.4]
  wire  _T_142; // @[ICache.scala 149:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104335.4]
  wire  _T_143; // @[ICache.scala 149:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104336.4]
  wire  _T_145; // @[ICache.scala 149:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104337.4]
  wire  _T_146; // @[ICache.scala 149:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104338.4]
  wire  _T_150; // @[ICache.scala 149:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104341.4]
  wire  s2_miss; // @[ICache.scala 149:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104342.4]
  wire  _T_453; // @[ICache.scala 361:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104577.4]
  wire  tl_out_a_valid; // @[ICache.scala 361:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104578.4]
  wire  refill_fire; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104331.4]
  wire  _T_151; // @[ICache.scala 150:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104343.4]
  wire  _T_153; // @[ICache.scala 150:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104344.4]
  wire  _T_154; // @[ICache.scala 150:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104345.4]
  wire [31:0] _GEN_0; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104347.4]
  wire [18:0] refill_tag; // @[ICache.scala 151:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104350.4]
  wire [6:0] refill_idx; // @[ICache.scala 152:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104351.4]
  wire  _T_157; // @[Edges.scala 106:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104353.4]
  wire  refill_one_beat; // @[ICache.scala 153:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104354.4]
  wire  _T_161; // @[ICache.scala 155:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104357.4]
  wire  s0_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104359.4]
  wire [26:0] _T_165; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104363.4]
  wire [11:0] _T_166; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104364.4]
  wire [11:0] _T_167; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104365.4]
  wire [9:0] _T_168; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104366.4]
  wire [9:0] _T_171; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104368.4]
  wire [10:0] _T_176; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104370.4]
  wire [10:0] _T_177; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104371.4]
  wire [9:0] _T_178; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104372.4]
  wire  _T_180; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104373.4]
  wire  _T_182; // @[Edges.scala 223:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104374.4]
  wire  _T_184; // @[Edges.scala 223:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104375.4]
  wire  _T_185; // @[Edges.scala 223:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104376.4]
  wire  d_done; // @[Edges.scala 224:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104377.4]
  wire [9:0] _T_186; // @[Edges.scala 225:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104378.4]
  wire [9:0] refill_cnt; // @[Edges.scala 225:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104379.4]
  wire [9:0] _T_187; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104381.6]
  wire [9:0] _GEN_1; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104380.4]
  wire  refill_done; // @[ICache.scala 161:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104384.4]
  wire [6:0] _T_197; // @[ICache.scala 178:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104388.4]
  wire  _T_199; // @[ICache.scala 178:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104389.4]
  wire  _T_200; // @[ICache.scala 178:83:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104390.4]
  wire [19:0] _T_212; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104401.6]
  wire [7:0] _T_229; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104413.6]
  wire  _T_231; // @[ICache.scala 190:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104414.6]
  wire  _T_232; // @[ICache.scala 190:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104415.6]
  wire [255:0] _T_234; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104416.6]
  wire [255:0] _GEN_37; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104417.6]
  wire [255:0] _T_235; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104417.6]
  wire [127:0] _T_236; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104418.6]
  wire [255:0] _GEN_38; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104419.6]
  wire [255:0] _T_237; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104419.6]
  wire [255:0] _T_238; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104420.6]
  wire [255:0] _T_239; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104421.6]
  wire [255:0] _GEN_13; // @[ICache.scala 188:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104412.4]
  wire  _T_449; // @[ICache.scala 276:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104568.4]
  wire  invalidate; // @[ICache.scala 276:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104569.4]
  wire [255:0] _GEN_14; // @[ICache.scala 193:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104427.4]
  wire  _GEN_15; // @[ICache.scala 193:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104427.4]
  wire  _T_291; // @[Misc.scala 161:7:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104456.4]
  wire  s1_tl_error_0; // @[ICache.scala 219:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104464.4]
  wire  _T_333; // @[ICache.scala 230:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104488.4]
  wire [10:0] _GEN_39; // @[ICache.scala 231:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104492.4]
  wire [10:0] _T_339; // @[ICache.scala 231:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104492.4]
  wire [10:0] _GEN_40; // @[ICache.scala 231:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104493.4]
  wire [10:0] _T_340; // @[ICache.scala 231:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104493.4]
  wire [10:0] _T_343; // @[ICache.scala 228:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104495.4]
  wire [10:0] _T_346; // @[ICache.scala 231:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104498.4]
  wire  _T_366; // @[ICache.scala 240:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104512.4]
  wire  _T_367; // @[ICache.scala 240:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104513.4]
  wire [31:0] s1_dout_0; // @[ICache.scala 241:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104524.4]
  wire [31:0] _GEN_29; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104537.4]
  wire  _GEN_30; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104541.4]
  wire  _GEN_31; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104547.4]
  wire  _T_451; // @[ICache.scala 281:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104575.4]
  wire [25:0] _T_456; // @[ICache.scala 364:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104580.4]
  wire [31:0] _GEN_41; // @[ICache.scala 364:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104581.4]
  wire [31:0] tl_out_a_bits_address; // @[ICache.scala 364:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104581.4]
  wire  _GEN_34; // @[ICache.scala 401:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104670.4]
  wire  _GEN_35; // @[ICache.scala 402:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104673.4]
  wire  _GEN_36; // @[ICache.scala 403:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104676.4]
  wire icache_data_sb_correct;
  wire icache_data_db_detect;
  wire icache_tag_sb_correct;
  wire icache_tag_db_detect;
  assign sb_correct =  icache_tag_sb_correct || icache_data_sb_correct; //
  assign db_detect  =  icache_tag_db_detect || icache_data_db_detect; // 
  
  wire [31:0] icache_ram_init_data;
  wire [10:0] icache_ram_init_addr;
  wire icache_ram_init_wen;
  
  wire [31:0] icache_data_init_data_out;
  wire [10:0] icache_data_init_addr_out;
  wire        icache_data_init_wen_out;
  wire        icache_data_init_en_out;
  wire [3:0]  icache_data_init_mask_out;
  
  wire [31:0] icache_tag_init_data_out;
  wire [10:0] icache_tag_init_addr_out;
  wire        icache_tag_init_wen_out;
  wire        icache_tag_init_en_out;
  wire [3:0]  icache_tag_init_mask_out;
  
  localparam RAM_INITIALIZATION = 1;
  
    MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_RAM_INIT  #(.ECC_EN(RAM_INITIALIZATION))
                    RAM_INIT( .CLK(clock),
                              .RESET(reset),
                              .DONE(icache_ram_init_done),
                              .DATA(icache_ram_init_data),
                              .ADDR(icache_ram_init_addr),
                              .WEN(icache_ram_init_wen)
    );
  
    MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_RAM_INIT_MUX DATA_ARRAYS_INIT( .SEL(icache_ram_init_done),
                                          //
                                          .MASK_0(4'hF),
                                          .DATA_0(icache_ram_init_data),
                                          .ADDR_0(icache_ram_init_addr),
                                          .WEN_0 (icache_ram_init_wen),
                                          .EN_0  (1'b1),
                                          //
                                          .MASK_1({3'b111, data_arrays_0_RW0_wmask_0}),
                                          .DATA_1(data_arrays_0_RW0_wdata_0),
                                          .ADDR_1(data_arrays_0_RW0_addr),
                                          .WEN_1 (data_arrays_0_RW0_wmode),
                                          .EN_1  (data_arrays_0_RW0_en),
                                          //
                                          .MASK_OUT(icache_data_init_mask_out),
                                          .DATA_OUT(icache_data_init_data_out),
                                          .ADDR_OUT(icache_data_init_addr_out),
                                          .WEN_OUT (icache_data_init_wen_out),
                                          .EN_OUT  (icache_data_init_en_out)
    );
  
    MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_RAM_INIT_MUX TAG_ARRAYS_MUX( .SEL(icache_ram_init_done),
                                          //
                                          .MASK_0(4'hF),
                                          .DATA_0(icache_ram_init_data),
                                          .ADDR_0(icache_ram_init_addr),
                                          .WEN_0 (icache_ram_init_wen),
                                          .EN_0  (1'b1),
                                          //
                                          .MASK_1({3'b111, tag_array_RW0_wmask_0}),
                                          .DATA_1({12'b0, tag_array_RW0_wdata_0}),
                                          .ADDR_1({4'b0, tag_array_RW0_addr}),
                                          .WEN_1 (tag_array_RW0_wmode),
                                          .EN_1  (tag_array_RW0_en),
                                          //
                                          .MASK_OUT(icache_tag_init_mask_out),
                                          .DATA_OUT(icache_tag_init_data_out),
                                          .ADDR_OUT(icache_tag_init_addr_out),
                                          .WEN_OUT (icache_tag_init_wen_out),
                                          .EN_OUT  (icache_tag_init_en_out)
    );
  
    MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_TAG_ARRAY_0 #(
    .ECC_EN(ECC_EN)
    ) MIV_RV32IMAF_L1_AHB_TAG_ARRAY ( // @[ICache.scala 177:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104387.4]
    .RW0_clk(tag_array_RW0_clk),
    .RW0_addr(icache_tag_init_addr_out[6:0]),
    .RW0_en(icache_tag_init_en_out),
    .RW0_wmode(icache_tag_init_wen_out),
    .RW0_wdata_0(icache_tag_init_data_out[19:0]),
    .RW0_wmask_0(icache_tag_init_mask_out[0]),
    .RW0_rdata_0(tag_array_RW0_rdata_0),
    .sb_correct(icache_tag_sb_correct),
    .db_detect(icache_tag_db_detect),
	.reset_flag(reset_flag)
    );
    
    MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_DATA_ARRAYS_0_0 #(
    .ECC_EN(ECC_EN)
    )  MIV_RV32IMAF_L1_AHB_DATA_ARRAYS_0 ( // @[ICache.scala 225:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104481.4]
    .RW0_clk(data_arrays_0_RW0_clk),
    .RW0_addr(icache_data_init_addr_out),
    .RW0_en(icache_data_init_en_out),
    .RW0_wmode(icache_data_init_wen_out),
    .RW0_wdata_0(icache_data_init_data_out),
    .RW0_wmask_0(icache_data_init_mask_out[0]),
    .RW0_rdata_0(data_arrays_0_RW0_rdata_0),
    .sb_correct(icache_data_sb_correct),
    .db_detect(icache_data_db_detect),
	.reset_flag(reset_flag)
    );
  assign _T_263 = io_s1_paddr[12:6]; // @[ICache.scala 208:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104439.4]
  assign _T_285 = {1'h0,_T_263}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104451.4]
  assign _T_286 = vb_array >> _T_285; // @[ICache.scala 214:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104452.4]
  assign _T_287 = _T_286[0]; // @[ICache.scala 214:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104453.4]
  assign _T_292 = tag_array_RW0_rdata_0[18:0]; // @[Misc.scala 161:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104457.4]
  assign _T_264 = io_s1_paddr[31:13]; // @[ICache.scala 209:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104440.4]
  assign _T_293 = _T_292 == _T_264; // @[ICache.scala 217:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104458.4]
  assign s1_tag_hit_0 = _T_287 & _T_293; // @[ICache.scala 217:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104459.4]
  assign _T_126 = io_s1_kill == 1'h0; // @[ICache.scala 141:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104322.4]
  assign _T_127 = s1_valid & _T_126; // @[ICache.scala 141:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104323.4]
  assign _T_142 = s2_hit == 1'h0; // @[ICache.scala 149:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104335.4]
  assign _T_143 = s2_valid & _T_142; // @[ICache.scala 149:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104336.4]
  assign _T_145 = io_s2_kill == 1'h0; // @[ICache.scala 149:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104337.4]
  assign _T_146 = _T_143 & _T_145; // @[ICache.scala 149:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104338.4]
  assign _T_150 = _T_148 == 1'h0; // @[ICache.scala 149:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104341.4]
  assign s2_miss = _T_146 & _T_150; // @[ICache.scala 149:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104342.4]
  assign _T_453 = refill_valid == 1'h0; // @[ICache.scala 361:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104577.4]
  assign tl_out_a_valid = s2_miss & _T_453; // @[ICache.scala 361:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104578.4]
  assign refill_fire = auto_master_out_a_ready & tl_out_a_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104331.4]
  assign _T_151 = refill_valid | s2_miss; // @[ICache.scala 150:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104343.4]
  assign _T_153 = _T_151 == 1'h0; // @[ICache.scala 150:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104344.4]
  assign _T_154 = s1_valid & _T_153; // @[ICache.scala 150:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104345.4]
  assign _GEN_0 = _T_154 ? io_s1_paddr : refill_addr; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104347.4]
  assign refill_tag = refill_addr[31:13]; // @[ICache.scala 151:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104350.4]
  assign refill_idx = refill_addr[12:6]; // @[ICache.scala 152:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104351.4]
  assign _T_157 = auto_master_out_d_bits_opcode[0]; // @[Edges.scala 106:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104353.4]
  assign refill_one_beat = auto_master_out_d_valid & _T_157; // @[ICache.scala 153:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104354.4]
  assign _T_161 = refill_one_beat == 1'h0; // @[ICache.scala 155:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104357.4]
  assign s0_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104359.4]
  assign _T_165 = 27'hfff << auto_master_out_d_bits_size; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104363.4]
  assign _T_166 = _T_165[11:0]; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104364.4]
  assign _T_167 = ~ _T_166; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104365.4]
  assign _T_168 = _T_167[11:2]; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104366.4]
  assign _T_171 = _T_157 ? _T_168 : 10'h0; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104368.4]
  assign _T_176 = _T_174 - 10'h1; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104370.4]
  assign _T_177 = $unsigned(_T_176); // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104371.4]
  assign _T_178 = _T_177[9:0]; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104372.4]
  assign _T_180 = _T_174 == 10'h0; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104373.4]
  assign _T_182 = _T_174 == 10'h1; // @[Edges.scala 223:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104374.4]
  assign _T_184 = _T_171 == 10'h0; // @[Edges.scala 223:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104375.4]
  assign _T_185 = _T_182 | _T_184; // @[Edges.scala 223:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104376.4]
  assign d_done = _T_185 & auto_master_out_d_valid; // @[Edges.scala 224:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104377.4]
  assign _T_186 = ~ _T_178; // @[Edges.scala 225:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104378.4]
  assign refill_cnt = _T_171 & _T_186; // @[Edges.scala 225:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104379.4]
  assign _T_187 = _T_180 ? _T_171 : _T_178; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104381.6]
  assign _GEN_1 = auto_master_out_d_valid ? _T_187 : _T_174; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104380.4]
  assign refill_done = refill_one_beat & d_done; // @[ICache.scala 161:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104384.4]
  assign _T_197 = io_req_bits_addr[12:6]; // @[ICache.scala 178:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104388.4]
  assign _T_199 = refill_done == 1'h0; // @[ICache.scala 178:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104389.4]
  assign _T_200 = _T_199 & s0_valid; // @[ICache.scala 178:83:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104390.4]
  assign _T_212 = {auto_master_out_d_bits_error,refill_tag}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104401.6]
  assign _T_229 = {1'h0,refill_idx}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104413.6]
  assign _T_231 = invalidated == 1'h0; // @[ICache.scala 190:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104414.6]
  assign _T_232 = refill_done & _T_231; // @[ICache.scala 190:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104415.6]
  assign _T_234 = 256'h1 << _T_229; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104416.6]
  assign _GEN_37 = {{128'd0}, vb_array}; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104417.6]
  assign _T_235 = _GEN_37 | _T_234; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104417.6]
  assign _T_236 = ~ vb_array; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104418.6]
  assign _GEN_38 = {{128'd0}, _T_236}; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104419.6]
  assign _T_237 = _GEN_38 | _T_234; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104419.6]
  assign _T_238 = ~ _T_237; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104420.6]
  assign _T_239 = _T_232 ? _T_235 : _T_238; // @[ICache.scala 190:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104421.6]
  assign _GEN_13 = refill_one_beat ? _T_239 : {{128'd0}, vb_array}; // @[ICache.scala 188:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104412.4]
  assign _T_449 = s2_valid & s2_tag_disparity; // @[ICache.scala 276:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104568.4]
  assign invalidate = _T_449 ? 1'h1 : io_invalidate; // @[ICache.scala 276:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104569.4]
  assign _GEN_14 = invalidate ? 256'h0 : _GEN_13; // @[ICache.scala 193:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104427.4]
  assign _GEN_15 = invalidate ? 1'h1 : invalidated; // @[ICache.scala 193:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104427.4]
  assign _T_291 = tag_array_RW0_rdata_0[19]; // @[Misc.scala 161:7:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104456.4]
  assign s1_tl_error_0 = s1_tag_hit_0 & _T_291; // @[ICache.scala 219:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104464.4]
  assign _T_333 = refill_one_beat & _T_231; // @[ICache.scala 230:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104488.4]
  assign _GEN_39 = {{4'd0}, refill_idx}; // @[ICache.scala 231:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104492.4]
  assign _T_339 = _GEN_39 << 4; // @[ICache.scala 231:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104492.4]
  assign _GEN_40 = {{1'd0}, refill_cnt}; // @[ICache.scala 231:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104493.4]
  assign _T_340 = _T_339 | _GEN_40; // @[ICache.scala 231:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104493.4]
  assign _T_343 = io_req_bits_addr[12:2]; // @[ICache.scala 228:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104495.4]
  assign _T_346 = refill_one_beat ? _T_340 : _T_343; // @[ICache.scala 231:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104498.4]
  assign _T_366 = _T_333 == 1'h0; // @[ICache.scala 240:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104512.4]
  assign _T_367 = _T_366 & s0_valid; // @[ICache.scala 240:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104513.4]
  assign s1_dout_0 = data_arrays_0_RW0_rdata_0; // @[ICache.scala 241:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104524.4]
  assign _GEN_29 = s1_valid ? s1_dout_0 : s2_dout_0; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104537.4]
  assign _GEN_30 = s1_valid ? 1'h0 : s2_tag_disparity; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104541.4]
  assign _GEN_31 = s1_valid ? s1_tl_error_0 : s2_tl_error; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104547.4]
  assign _T_451 = s2_valid & s2_hit; // @[ICache.scala 281:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104575.4]
  assign _T_456 = refill_addr[31:6]; // @[ICache.scala 364:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104580.4]
  assign _GEN_41 = {{6'd0}, _T_456}; // @[ICache.scala 364:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104581.4]
  assign tl_out_a_bits_address = _GEN_41 << 6; // @[ICache.scala 364:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104581.4]
  assign _GEN_34 = _T_453 ? 1'h0 : _GEN_15; // @[ICache.scala 401:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104670.4]
  assign _GEN_35 = refill_fire ? 1'h1 : refill_valid; // @[ICache.scala 402:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104673.4]
  assign _GEN_36 = refill_done ? 1'h0 : _GEN_35; // @[ICache.scala 403:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104676.4]
  assign auto_master_out_a_valid = tl_out_a_valid;
  assign auto_master_out_a_bits_address = tl_out_a_bits_address;
  assign io_req_ready = _T_161;
  assign io_resp_valid = _T_451;
  assign io_resp_bits_data = s2_dout_0;
  assign io_resp_bits_replay = s2_tag_disparity;
  assign io_resp_bits_ae = s2_tl_error;
  assign tag_array_RW0_wmode = refill_done;
  assign tag_array_RW0_wdata_0 = _T_212;
  assign tag_array_RW0_wmask_0 = refill_done;
  assign data_arrays_0_RW0_wmode = _T_333;
  assign data_arrays_0_RW0_wdata_0 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wmask_0 = _T_333;
  assign tag_array_RW0_clk = clock;
  assign tag_array_RW0_en = _T_200 | refill_done;
  assign tag_array_RW0_addr = refill_done ? refill_idx : _T_197;
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = _T_367 | _T_333;
  assign data_arrays_0_RW0_addr = _T_346;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  s1_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  s2_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  s2_hit = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  invalidated = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  refill_valid = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_148 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  refill_addr = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_174 = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {4{$random}};
  vb_array = _RAND_8[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  s2_dout_0 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  s2_tag_disparity = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  s2_tl_error = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= s0_valid;
    end
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _T_127;
    end
    s2_hit <= s1_tag_hit_0;
    if (_T_453) begin
      invalidated <= 1'h0;
    end else begin
      if (invalidate) begin
        invalidated <= 1'h1;
      end
    end
    if (reset) begin
      refill_valid <= 1'h0;
    end else begin
      if (refill_done) begin
        refill_valid <= 1'h0;
      end else begin
        if (refill_fire) begin
          refill_valid <= 1'h1;
        end
      end
    end
    _T_148 <= refill_valid;
    if (_T_154) begin
      refill_addr <= io_s1_paddr;
    end
    if (reset) begin
      _T_174 <= 10'h0;
    end else begin
      if (auto_master_out_d_valid) begin
        if (_T_180) begin
          if (_T_157) begin
            _T_174 <= _T_168;
          end else begin
            _T_174 <= 10'h0;
          end
        end else begin
          _T_174 <= _T_178;
        end
      end
    end
    if (reset) begin
      vb_array <= 128'h0;
    end else begin
      vb_array <= _GEN_14[127:0];
    end
    if (s1_valid) begin
      s2_dout_0 <= s1_dout_0;
    end
    if (s1_valid) begin
      s2_tag_disparity <= 1'h0;
    end
    if (s1_valid) begin
      s2_tl_error <= s1_tl_error_0;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:222 assert(!(s1_valid || s1_slaveValid) || PopCount(s1_tag_hit zip s1_tag_disparity map { case (h, d) => h && !d }) <= 1)\n"); // @[ICache.scala 222:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104478.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal; // @[ICache.scala 222:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104479.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:399 assert(!(tl_out.a.valid && addrMaybeInScratchpad(tl_out.a.bits.address)))\n"); // @[ICache.scala 399:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104666.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal; // @[ICache.scala 399:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@104667.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
