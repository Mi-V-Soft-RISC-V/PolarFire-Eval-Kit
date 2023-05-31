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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_TLFIFOFIXER_SYSTEM_BUS_PBUS_TLFIFOFIXER( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1431.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1432.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1433.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [2:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [2:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [30:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [2:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [2:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output        auto_in_d_bits_sink, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output        auto_in_d_bits_error, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [2:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [2:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [30:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [2:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [2:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input         auto_out_d_bits_sink, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
  input         auto_out_d_bits_error // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1434.4]
);
  reg [3:0] _T_266; // @[Edges.scala 220:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1482.4]
  reg [31:0] _RAND_0;
  reg [3:0] _T_294; // @[Edges.scala 220:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1505.4]
  reg [31:0] _RAND_1;
  reg  _T_346_2; // @[FIFOFixer.scala 70:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1530.4]
  reg [31:0] _RAND_2;
  reg  _T_346_3; // @[FIFOFixer.scala 70:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1530.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_400; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1554.4]
  reg [31:0] _RAND_4;
  wire [31:0] _T_205; // @[Parameters.scala 153:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1446.4]
  wire [30:0] _T_213; // @[Parameters.scala 153:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1450.4]
  wire [31:0] _T_214; // @[Parameters.scala 153:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1451.4]
  wire [31:0] _T_216; // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1452.4]
  wire [31:0] _T_217; // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1453.4]
  wire  _T_219; // @[Parameters.scala 153:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1454.4]
  wire [30:0] _T_222; // @[Parameters.scala 153:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1455.4]
  wire [31:0] _T_223; // @[Parameters.scala 153:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1456.4]
  wire [31:0] _T_225; // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1457.4]
  wire [31:0] _T_226; // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1458.4]
  wire  _T_228; // @[Parameters.scala 153:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1459.4]
  wire [31:0] _T_234; // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1462.4]
  wire [31:0] _T_235; // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1463.4]
  wire  _T_237; // @[Parameters.scala 153:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1464.4]
  wire [1:0] _T_241; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1465.4]
  wire [1:0] _T_245; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1467.4]
  wire [1:0] _GEN_29; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1468.4]
  wire [1:0] _T_246; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1468.4]
  wire [1:0] _T_247; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1469.4]
  wire  _T_251; // @[FIFOFixer.scala 54:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1472.4]
  wire [1:0] _T_385; // @[Parameters.scala 51:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1544.4]
  wire  _T_387; // @[Parameters.scala 51:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1545.4]
  wire  _T_272; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1486.4]
  wire  _T_401; // @[FIFOFixer.scala 79:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1558.4]
  wire  _T_402; // @[FIFOFixer.scala 79:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1559.4]
  wire  _T_403; // @[FIFOFixer.scala 79:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1560.4]
  wire  _T_404; // @[FIFOFixer.scala 79:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1561.4]
  wire  _T_405; // @[FIFOFixer.scala 79:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1562.4]
  wire  _T_406; // @[FIFOFixer.scala 79:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1563.4]
  wire  _T_414; // @[FIFOFixer.scala 87:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1571.4]
  wire  _T_416; // @[FIFOFixer.scala 87:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1573.4]
  wire  _T_252; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1473.4]
  wire [12:0] _T_255; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1475.4]
  wire [5:0] _T_256; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1476.4]
  wire [5:0] _T_257; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1477.4]
  wire [3:0] _T_258; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1478.4]
  wire  _T_259; // @[Edges.scala 92:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1479.4]
  wire  _T_261; // @[Edges.scala 92:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1480.4]
  wire [3:0] _T_263; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1481.4]
  wire [4:0] _T_268; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1483.4]
  wire [4:0] _T_269; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1484.4]
  wire [3:0] _T_270; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1485.4]
  wire [3:0] _T_281; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1494.6]
  wire [3:0] _GEN_2; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1493.4]
  wire  _T_282; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1497.4]
  wire [12:0] _T_285; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1499.4]
  wire [5:0] _T_286; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1500.4]
  wire [5:0] _T_287; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1501.4]
  wire [3:0] _T_288; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1502.4]
  wire  _T_289; // @[Edges.scala 106:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1503.4]
  wire [3:0] _T_291; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1504.4]
  wire [4:0] _T_296; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1506.4]
  wire [4:0] _T_297; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1507.4]
  wire [3:0] _T_298; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1508.4]
  wire  _T_300; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1509.4]
  wire [3:0] _T_309; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1517.6]
  wire [3:0] _GEN_3; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1516.4]
  wire  _T_311; // @[FIFOFixer.scala 66:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1520.4]
  wire  _T_312; // @[FIFOFixer.scala 66:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1521.4]
  wire  _T_370; // @[FIFOFixer.scala 71:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1532.4]
  wire  _GEN_6; // @[FIFOFixer.scala 71:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1535.6]
  wire  _GEN_7; // @[FIFOFixer.scala 71:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1535.6]
  wire  _GEN_12; // @[FIFOFixer.scala 71:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1533.4]
  wire  _GEN_13; // @[FIFOFixer.scala 71:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1533.4]
  wire  _T_377; // @[FIFOFixer.scala 72:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1538.4]
  wire  _GEN_18; // @[FIFOFixer.scala 72:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1540.6]
  wire  _GEN_19; // @[FIFOFixer.scala 72:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1540.6]
  wire  _GEN_24; // @[FIFOFixer.scala 72:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1539.4]
  wire  _GEN_25; // @[FIFOFixer.scala 72:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1539.4]
  wire  _T_395; // @[FIFOFixer.scala 76:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1551.4]
  wire [1:0] _GEN_28; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1555.4]
  wire  _T_412; // @[FIFOFixer.scala 86:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1569.4]
  assign _T_205 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 153:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1446.4]
  assign _T_213 = auto_in_a_bits_address ^ 31'h44000000; // @[Parameters.scala 153:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1450.4]
  assign _T_214 = {1'b0,$signed(_T_213)}; // @[Parameters.scala 153:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1451.4]
  assign _T_216 = $signed(_T_214) & $signed(32'sh44000000); // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1452.4]
  assign _T_217 = $signed(_T_216); // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1453.4]
  assign _T_219 = $signed(_T_217) == $signed(32'sh0); // @[Parameters.scala 153:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1454.4]
  assign _T_222 = auto_in_a_bits_address ^ 31'h40000000; // @[Parameters.scala 153:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1455.4]
  assign _T_223 = {1'b0,$signed(_T_222)}; // @[Parameters.scala 153:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1456.4]
  assign _T_225 = $signed(_T_223) & $signed(32'sh44000000); // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1457.4]
  assign _T_226 = $signed(_T_225); // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1458.4]
  assign _T_228 = $signed(_T_226) == $signed(32'sh0); // @[Parameters.scala 153:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1459.4]
  assign _T_234 = $signed(_T_205) & $signed(32'sh44000000); // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1462.4]
  assign _T_235 = $signed(_T_234); // @[Parameters.scala 153:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1463.4]
  assign _T_237 = $signed(_T_235) == $signed(32'sh0); // @[Parameters.scala 153:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1464.4]
  assign _T_241 = _T_219 ? 2'h2 : 2'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1465.4]
  assign _T_245 = _T_237 ? 2'h3 : 2'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1467.4]
  assign _GEN_29 = {{1'd0}, _T_228}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1468.4]
  assign _T_246 = _T_241 | _GEN_29; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1468.4]
  assign _T_247 = _T_246 | _T_245; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1469.4]
  assign _T_251 = _T_247 == 2'h0; // @[FIFOFixer.scala 54:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1472.4]
  assign _T_385 = auto_in_a_bits_source[2:1]; // @[Parameters.scala 51:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1544.4]
  assign _T_387 = _T_385 == 2'h1; // @[Parameters.scala 51:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1545.4]
  assign _T_272 = _T_266 == 4'h0; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1486.4]
  assign _T_401 = _T_387 & _T_272; // @[FIFOFixer.scala 79:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1558.4]
  assign _T_402 = _T_346_2 | _T_346_3; // @[FIFOFixer.scala 79:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1559.4]
  assign _T_403 = _T_401 & _T_402; // @[FIFOFixer.scala 79:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1560.4]
  assign _T_404 = _T_400 != _T_247; // @[FIFOFixer.scala 79:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1561.4]
  assign _T_405 = _T_251 | _T_404; // @[FIFOFixer.scala 79:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1562.4]
  assign _T_406 = _T_403 & _T_405; // @[FIFOFixer.scala 79:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1563.4]
  assign _T_414 = _T_406 == 1'h0; // @[FIFOFixer.scala 87:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1571.4]
  assign _T_416 = auto_out_a_ready & _T_414; // @[FIFOFixer.scala 87:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1573.4]
  assign _T_252 = _T_416 & auto_in_a_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1473.4]
  assign _T_255 = 13'h3f << auto_in_a_bits_size; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1475.4]
  assign _T_256 = _T_255[5:0]; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1476.4]
  assign _T_257 = ~ _T_256; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1477.4]
  assign _T_258 = _T_257[5:2]; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1478.4]
  assign _T_259 = auto_in_a_bits_opcode[2]; // @[Edges.scala 92:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1479.4]
  assign _T_261 = _T_259 == 1'h0; // @[Edges.scala 92:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1480.4]
  assign _T_263 = _T_261 ? _T_258 : 4'h0; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1481.4]
  assign _T_268 = _T_266 - 4'h1; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1483.4]
  assign _T_269 = $unsigned(_T_268); // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1484.4]
  assign _T_270 = _T_269[3:0]; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1485.4]
  assign _T_281 = _T_272 ? _T_263 : _T_270; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1494.6]
  assign _GEN_2 = _T_252 ? _T_281 : _T_266; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1493.4]
  assign _T_282 = auto_in_d_ready & auto_out_d_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1497.4]
  assign _T_285 = 13'h3f << auto_out_d_bits_size; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1499.4]
  assign _T_286 = _T_285[5:0]; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1500.4]
  assign _T_287 = ~ _T_286; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1501.4]
  assign _T_288 = _T_287[5:2]; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1502.4]
  assign _T_289 = auto_out_d_bits_opcode[0]; // @[Edges.scala 106:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1503.4]
  assign _T_291 = _T_289 ? _T_288 : 4'h0; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1504.4]
  assign _T_296 = _T_294 - 4'h1; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1506.4]
  assign _T_297 = $unsigned(_T_296); // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1507.4]
  assign _T_298 = _T_297[3:0]; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1508.4]
  assign _T_300 = _T_294 == 4'h0; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1509.4]
  assign _T_309 = _T_300 ? _T_291 : _T_298; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1517.6]
  assign _GEN_3 = _T_282 ? _T_309 : _T_294; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1516.4]
  assign _T_311 = auto_out_d_bits_opcode != 3'h6; // @[FIFOFixer.scala 66:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1520.4]
  assign _T_312 = _T_300 & _T_311; // @[FIFOFixer.scala 66:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1521.4]
  assign _T_370 = _T_272 & _T_252; // @[FIFOFixer.scala 71:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1532.4]
  assign _GEN_6 = 3'h2 == auto_in_a_bits_source ? 1'h1 : _T_346_2; // @[FIFOFixer.scala 71:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1535.6]
  assign _GEN_7 = 3'h3 == auto_in_a_bits_source ? 1'h1 : _T_346_3; // @[FIFOFixer.scala 71:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1535.6]
  assign _GEN_12 = _T_370 ? _GEN_6 : _T_346_2; // @[FIFOFixer.scala 71:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1533.4]
  assign _GEN_13 = _T_370 ? _GEN_7 : _T_346_3; // @[FIFOFixer.scala 71:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1533.4]
  assign _T_377 = _T_312 & _T_282; // @[FIFOFixer.scala 72:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1538.4]
  assign _GEN_18 = 3'h2 == auto_out_d_bits_source ? 1'h0 : _GEN_12; // @[FIFOFixer.scala 72:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1540.6]
  assign _GEN_19 = 3'h3 == auto_out_d_bits_source ? 1'h0 : _GEN_13; // @[FIFOFixer.scala 72:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1540.6]
  assign _GEN_24 = _T_377 ? _GEN_18 : _GEN_12; // @[FIFOFixer.scala 72:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1539.4]
  assign _GEN_25 = _T_377 ? _GEN_19 : _GEN_13; // @[FIFOFixer.scala 72:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1539.4]
  assign _T_395 = _T_252 & _T_387; // @[FIFOFixer.scala 76:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1551.4]
  assign _GEN_28 = _T_395 ? _T_247 : _T_400; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1555.4]
  assign _T_412 = auto_in_a_valid & _T_414; // @[FIFOFixer.scala 86:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@1569.4]
  assign auto_in_a_ready = _T_416;
  assign auto_in_d_valid = auto_out_d_valid;
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode;
  assign auto_in_d_bits_param = auto_out_d_bits_param;
  assign auto_in_d_bits_size = auto_out_d_bits_size;
  assign auto_in_d_bits_source = auto_out_d_bits_source;
  assign auto_in_d_bits_sink = auto_out_d_bits_sink;
  assign auto_in_d_bits_data = auto_out_d_bits_data;
  assign auto_in_d_bits_error = auto_out_d_bits_error;
  assign auto_out_a_valid = _T_412;
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode;
  assign auto_out_a_bits_param = auto_in_a_bits_param;
  assign auto_out_a_bits_size = auto_in_a_bits_size;
  assign auto_out_a_bits_source = auto_in_a_bits_source;
  assign auto_out_a_bits_address = auto_in_a_bits_address;
  assign auto_out_a_bits_mask = auto_in_a_bits_mask;
  assign auto_out_a_bits_data = auto_in_a_bits_data;
  assign auto_out_d_ready = auto_in_d_ready;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_266 = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_294 = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_346_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_346_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_400 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_266 <= 4'h0;
    end else begin
      if (_T_252) begin
        if (_T_272) begin
          if (_T_261) begin
            _T_266 <= _T_258;
          end else begin
            _T_266 <= 4'h0;
          end
        end else begin
          _T_266 <= _T_270;
        end
      end
    end
    if (reset) begin
      _T_294 <= 4'h0;
    end else begin
      if (_T_282) begin
        if (_T_300) begin
          if (_T_289) begin
            _T_294 <= _T_288;
          end else begin
            _T_294 <= 4'h0;
          end
        end else begin
          _T_294 <= _T_298;
        end
      end
    end
    if (reset) begin
      _T_346_2 <= 1'h0;
    end else begin
      if (_T_377) begin
        if (3'h2 == auto_out_d_bits_source) begin
          _T_346_2 <= 1'h0;
        end else begin
          if (_T_370) begin
            if (3'h2 == auto_in_a_bits_source) begin
              _T_346_2 <= 1'h1;
            end
          end
        end
      end else begin
        if (_T_370) begin
          if (3'h2 == auto_in_a_bits_source) begin
            _T_346_2 <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      _T_346_3 <= 1'h0;
    end else begin
      if (_T_377) begin
        if (3'h3 == auto_out_d_bits_source) begin
          _T_346_3 <= 1'h0;
        end else begin
          if (_T_370) begin
            if (3'h3 == auto_in_a_bits_source) begin
              _T_346_3 <= 1'h1;
            end
          end
        end
      end else begin
        if (_T_370) begin
          if (3'h3 == auto_in_a_bits_source) begin
            _T_346_3 <= 1'h1;
          end
        end
      end
    end
    if (_T_395) begin
      _T_400 <= _T_247;
    end
  end
endmodule
