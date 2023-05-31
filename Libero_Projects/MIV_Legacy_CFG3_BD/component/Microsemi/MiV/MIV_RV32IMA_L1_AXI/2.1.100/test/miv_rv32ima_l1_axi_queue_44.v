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
module MIV_RV32IMA_L1_AXI4_QUEUE_44( // @[:freechips.rocketchip.system.PicoRV.fir@157740.2]
  input         clock, // @[:freechips.rocketchip.system.PicoRV.fir@157741.4]
  input         reset, // @[:freechips.rocketchip.system.PicoRV.fir@157742.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  input  [3:0]  io_enq_bits_id, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  input  [11:0] io_enq_bits_addr, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  input  [7:0]  io_enq_bits_len, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  input  [2:0]  io_enq_bits_size, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  input  [1:0]  io_enq_bits_burst, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  output [3:0]  io_deq_bits_id, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  output [11:0] io_deq_bits_addr, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  output [7:0]  io_deq_bits_len, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  output [2:0]  io_deq_bits_size, // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
  output [1:0]  io_deq_bits_burst // @[:freechips.rocketchip.system.PicoRV.fir@157743.4]
);
  reg [3:0] ram_id [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg [31:0] _RAND_0;
  wire [3:0] ram_id__T_55_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_id__T_55_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire [3:0] ram_id__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_id__T_46_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_id__T_46_mask; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_id__T_46_en; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  _GEN_28;
  reg [11:0] ram_addr [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg [31:0] _RAND_1;
  wire [11:0] ram_addr__T_55_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_addr__T_55_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire [11:0] ram_addr__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_addr__T_46_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_addr__T_46_mask; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_addr__T_46_en; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg [7:0] ram_len [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg [31:0] _RAND_2;
  wire [7:0] ram_len__T_55_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_len__T_55_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire [7:0] ram_len__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_len__T_46_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_len__T_46_mask; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_len__T_46_en; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg [2:0] ram_size [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg [31:0] _RAND_3;
  wire [2:0] ram_size__T_55_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_size__T_55_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire [2:0] ram_size__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_size__T_46_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_size__T_46_mask; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_size__T_46_en; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg [1:0] ram_burst [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg [31:0] _RAND_4;
  wire [1:0] ram_burst__T_55_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_burst__T_55_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire [1:0] ram_burst__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_burst__T_46_addr; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_burst__T_46_mask; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  wire  ram_burst__T_46_en; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  reg  maybe_full; // @[Decoupled.scala 217:35:freechips.rocketchip.system.PicoRV.fir@157746.4]
  reg [31:0] _RAND_5;
  wire  empty; // @[Decoupled.scala 220:36:freechips.rocketchip.system.PicoRV.fir@157748.4]
  wire  _T_41; // @[Decoupled.scala 37:37:freechips.rocketchip.system.PicoRV.fir@157751.4]
  wire  _T_43; // @[Decoupled.scala 37:37:freechips.rocketchip.system.PicoRV.fir@157754.4]
  wire  _GEN_14; // @[Decoupled.scala 245:27:freechips.rocketchip.system.PicoRV.fir@157803.6]
  wire  do_deq; // @[Decoupled.scala 242:18:freechips.rocketchip.system.PicoRV.fir@157792.4]
  wire  _T_49; // @[Decoupled.scala 232:16:freechips.rocketchip.system.PicoRV.fir@157771.4]
  wire  _T_51; // @[Decoupled.scala 236:19:freechips.rocketchip.system.PicoRV.fir@157775.4]
  assign ram_id__T_55_addr = 1'h0;
  assign ram_id__T_55_data = ram_id[ram_id__T_55_addr]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  assign ram_id__T_46_data = io_enq_bits_id;
  assign ram_id__T_46_addr = 1'h0;
  assign ram_id__T_46_mask = empty ? _GEN_14 : _T_41;
  assign ram_id__T_46_en = empty ? _GEN_14 : _T_41;
  assign _GEN_28 = empty ? _GEN_14 : _T_41;
  assign ram_addr__T_55_addr = 1'h0;
  assign ram_addr__T_55_data = ram_addr[ram_addr__T_55_addr]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  assign ram_addr__T_46_data = io_enq_bits_addr;
  assign ram_addr__T_46_addr = 1'h0;
  assign ram_addr__T_46_mask = empty ? _GEN_14 : _T_41;
  assign ram_addr__T_46_en = empty ? _GEN_14 : _T_41;
  assign ram_len__T_55_addr = 1'h0;
  assign ram_len__T_55_data = ram_len[ram_len__T_55_addr]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  assign ram_len__T_46_data = io_enq_bits_len;
  assign ram_len__T_46_addr = 1'h0;
  assign ram_len__T_46_mask = empty ? _GEN_14 : _T_41;
  assign ram_len__T_46_en = empty ? _GEN_14 : _T_41;
  assign ram_size__T_55_addr = 1'h0;
  assign ram_size__T_55_data = ram_size[ram_size__T_55_addr]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  assign ram_size__T_46_data = io_enq_bits_size;
  assign ram_size__T_46_addr = 1'h0;
  assign ram_size__T_46_mask = empty ? _GEN_14 : _T_41;
  assign ram_size__T_46_en = empty ? _GEN_14 : _T_41;
  assign ram_burst__T_55_addr = 1'h0;
  assign ram_burst__T_55_data = ram_burst[ram_burst__T_55_addr]; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
  assign ram_burst__T_46_data = io_enq_bits_burst;
  assign ram_burst__T_46_addr = 1'h0;
  assign ram_burst__T_46_mask = empty ? _GEN_14 : _T_41;
  assign ram_burst__T_46_en = empty ? _GEN_14 : _T_41;
  assign empty = maybe_full == 1'h0; // @[Decoupled.scala 220:36:freechips.rocketchip.system.PicoRV.fir@157748.4]
  assign _T_41 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.PicoRV.fir@157751.4]
  assign _T_43 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 37:37:freechips.rocketchip.system.PicoRV.fir@157754.4]
  assign _GEN_14 = io_deq_ready ? 1'h0 : _T_41; // @[Decoupled.scala 245:27:freechips.rocketchip.system.PicoRV.fir@157803.6]
  assign do_deq = empty ? 1'h0 : _T_43; // @[Decoupled.scala 242:18:freechips.rocketchip.system.PicoRV.fir@157792.4]
  assign _T_49 = _GEN_28 != do_deq; // @[Decoupled.scala 232:16:freechips.rocketchip.system.PicoRV.fir@157771.4]
  assign _T_51 = empty == 1'h0; // @[Decoupled.scala 236:19:freechips.rocketchip.system.PicoRV.fir@157775.4]
  assign io_enq_ready = maybe_full == 1'h0;
  assign io_deq_valid = io_enq_valid ? 1'h1 : _T_51;
  assign io_deq_bits_id = empty ? io_enq_bits_id : ram_id__T_55_data;
  assign io_deq_bits_addr = empty ? io_enq_bits_addr : ram_addr__T_55_data;
  assign io_deq_bits_len = empty ? io_enq_bits_len : ram_len__T_55_data;
  assign io_deq_bits_size = empty ? io_enq_bits_size : ram_size__T_55_data;
  assign io_deq_bits_burst = empty ? io_enq_bits_burst : ram_burst__T_55_data;
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
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[11:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_len[initvar] = _RAND_2[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_burst[initvar] = _RAND_4[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  maybe_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram_id__T_46_en & ram_id__T_46_mask) begin
      ram_id[ram_id__T_46_addr] <= ram_id__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
    end
    if(ram_addr__T_46_en & ram_addr__T_46_mask) begin
      ram_addr[ram_addr__T_46_addr] <= ram_addr__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
    end
    if(ram_len__T_46_en & ram_len__T_46_mask) begin
      ram_len[ram_len__T_46_addr] <= ram_len__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
    end
    if(ram_size__T_46_en & ram_size__T_46_mask) begin
      ram_size[ram_size__T_46_addr] <= ram_size__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
    end
    if(ram_burst__T_46_en & ram_burst__T_46_mask) begin
      ram_burst[ram_burst__T_46_addr] <= ram_burst__T_46_data; // @[Decoupled.scala 214:24:freechips.rocketchip.system.PicoRV.fir@157745.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_49) begin
        if (empty) begin
          if (io_deq_ready) begin
            maybe_full <= 1'h0;
          end else begin
            maybe_full <= _T_41;
          end
        end else begin
          maybe_full <= _T_41;
        end
      end
    end
  end
endmodule
