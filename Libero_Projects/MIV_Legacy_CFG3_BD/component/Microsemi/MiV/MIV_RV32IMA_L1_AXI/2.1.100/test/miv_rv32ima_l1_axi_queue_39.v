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
`timescale 1ns/10ps
`ifndef RANDOMIZE_REG_INIT 
	 `define RANDOMIZE_REG_INIT 
 `endif
`ifndef RANDOMIZE_MEM_INIT 
	 `define RANDOMIZE_MEM_INIT 
 `endif
`ifndef RANDOMIZE 
	 `define RANDOMIZE 
`endif
module MIV_RV32IMA_L1_AXI4_QUEUE_39( // @[:freechips.rocketchip.system.PicoRV.fir@157316.2]
  input         clock, // @[:freechips.rocketchip.system.PicoRV.fir@157317.4]
  input         reset, // @[:freechips.rocketchip.system.PicoRV.fir@157318.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  input  [3:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  input  [11:0] io_enq_bits_addr, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  input         io_enq_bits_user, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  output [3:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  output [11:0] io_deq_bits_addr, // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
  output        io_deq_bits_user // @[:freechips.rocketchip.system.PicoRV.fir@157319.4]
);
  reg [3:0] ram_id [0:1] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  reg [31:0] _RAND_0;
  wire [3:0] ram_id__T_63_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_id__T_63_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire [3:0] ram_id__T_49_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_id__T_49_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_id__T_49_mask; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_id__T_49_en; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  _GEN_18;
  reg [11:0] ram_addr [0:1] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  reg [31:0] _RAND_1;
  wire [11:0] ram_addr__T_63_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_addr__T_63_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire [11:0] ram_addr__T_49_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_addr__T_49_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_addr__T_49_mask; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_addr__T_49_en; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  reg  ram_user [0:1]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  reg [31:0] _RAND_2;
  wire  ram_user__T_63_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_user__T_63_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_user__T_49_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_user__T_49_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_user__T_49_mask; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  wire  ram_user__T_49_en; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  reg  value; // @[Counter.scala 26:33:freechips.rocketchip.system.PicoRV.fir@157322.4]
  reg [31:0] _RAND_3;
  reg  value_1; // @[Counter.scala 26:33:freechips.rocketchip.system.PicoRV.fir@157323.4]
  reg [31:0] _RAND_4;
  reg  maybe_full; // @[Decoupled.scala 217:35:freechips.rocketchip.system.PicoRV.fir@157324.4]
  reg [31:0] _RAND_5;
  wire  _T_41; // @[Decoupled.scala 219:41:freechips.rocketchip.system.PicoRV.fir@157325.4]
  wire  _T_43; // @[Decoupled.scala 220:36:freechips.rocketchip.system.PicoRV.fir@157326.4]
  wire  empty; // @[Decoupled.scala 220:33:freechips.rocketchip.system.PicoRV.fir@157327.4]
  wire  _T_44; // @[Decoupled.scala 221:32:freechips.rocketchip.system.PicoRV.fir@157328.4]
  wire  do_deq; // @[Decoupled.scala 37:37:freechips.rocketchip.system.PicoRV.fir@157332.4]
  wire [1:0] _T_52; // @[Counter.scala 35:22:freechips.rocketchip.system.PicoRV.fir@157348.6]
  wire  _T_53; // @[Counter.scala 35:22:freechips.rocketchip.system.PicoRV.fir@157349.6]
  wire [1:0] _T_56; // @[Counter.scala 35:22:freechips.rocketchip.system.PicoRV.fir@157354.6]
  wire  _T_57; // @[Counter.scala 35:22:freechips.rocketchip.system.PicoRV.fir@157355.6]
  wire  _T_58; // @[Decoupled.scala 232:16:freechips.rocketchip.system.PicoRV.fir@157358.4]
  assign ram_id__T_63_addr = value_1;
  assign ram_id__T_63_data = ram_id[ram_id__T_63_addr]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  assign ram_id__T_49_data = io_enq_bits_id;
  assign ram_id__T_49_addr = value;
  assign ram_id__T_49_mask = io_enq_ready & io_enq_valid;
  assign ram_id__T_49_en = io_enq_ready & io_enq_valid;
  assign _GEN_18 = io_enq_ready & io_enq_valid;
  assign ram_addr__T_63_addr = value_1;
  assign ram_addr__T_63_data = ram_addr[ram_addr__T_63_addr]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  assign ram_addr__T_49_data = io_enq_bits_addr;
  assign ram_addr__T_49_addr = value;
  assign ram_addr__T_49_mask = io_enq_ready & io_enq_valid;
  assign ram_addr__T_49_en = io_enq_ready & io_enq_valid;
  assign ram_user__T_63_addr = value_1;
  assign ram_user__T_63_data = ram_user[ram_user__T_63_addr]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
  assign ram_user__T_49_data = io_enq_bits_user;
  assign ram_user__T_49_addr = value;
  assign ram_user__T_49_mask = io_enq_ready & io_enq_valid;
  assign ram_user__T_49_en = io_enq_ready & io_enq_valid;
  assign _T_41 = value == value_1; // @[Decoupled.scala 219:41:freechips.rocketchip.system.PicoRV.fir@157325.4]
  assign _T_43 = maybe_full == 1'h0; // @[Decoupled.scala 220:36:freechips.rocketchip.system.PicoRV.fir@157326.4]
  assign empty = _T_41 & _T_43; // @[Decoupled.scala 220:33:freechips.rocketchip.system.PicoRV.fir@157327.4]
  assign _T_44 = _T_41 & maybe_full; // @[Decoupled.scala 221:32:freechips.rocketchip.system.PicoRV.fir@157328.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.PicoRV.fir@157332.4]
  assign _T_52 = value + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.PicoRV.fir@157348.6]
  assign _T_53 = _T_52[0:0]; // @[Counter.scala 35:22:freechips.rocketchip.system.PicoRV.fir@157349.6]
  assign _T_56 = value_1 + 1'h1; // @[Counter.scala 35:22:freechips.rocketchip.system.PicoRV.fir@157354.6]
  assign _T_57 = _T_56[0:0]; // @[Counter.scala 35:22:freechips.rocketchip.system.PicoRV.fir@157355.6]
  assign _T_58 = _GEN_18 != do_deq; // @[Decoupled.scala 232:16:freechips.rocketchip.system.PicoRV.fir@157358.4]
  assign io_enq_ready = _T_44 == 1'h0;
  assign io_deq_valid = empty == 1'h0;
  assign io_deq_bits_id = ram_id__T_63_data;
  assign io_deq_bits_addr = ram_addr__T_63_data;
  assign io_deq_bits_user = ram_user__T_63_data;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[11:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_user[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  value = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  value_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  maybe_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram_id__T_49_en & ram_id__T_49_mask) begin
      ram_id[ram_id__T_49_addr] <= ram_id__T_49_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
    end
    if(ram_addr__T_49_en & ram_addr__T_49_mask) begin
      ram_addr[ram_addr__T_49_addr] <= ram_addr__T_49_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
    end
    if(ram_user__T_49_en & ram_user__T_49_mask) begin
      ram_user[ram_user__T_49_addr] <= ram_user__T_49_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157321.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_GEN_18) begin
        value <= _T_53;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (do_deq) begin
        value_1 <= _T_57;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_58) begin
        maybe_full <= _GEN_18;
      end
    end
  end
endmodule
