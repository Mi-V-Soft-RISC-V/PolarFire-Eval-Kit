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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_QUEUE_SOURCE_1( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24214.2]
  input        clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24215.4]
  input        reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24216.4]
  output       io_enq_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  input        io_enq_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  input        io_enq_bits_resumereq, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  input  [9:0] io_enq_bits_hartsel, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  input        io_enq_bits_ackhavereset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  input        io_ridx, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  output       io_widx, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  output       io_mem_0_resumereq, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  output [9:0] io_mem_0_hartsel, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  output       io_mem_0_ackhavereset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  input        io_sink_reset_n, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  input        io_ridx_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
  output       io_widx_valid // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24217.4]
);
  reg  mem_0_resumereq; // @[AsyncQueue.scala 41:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24225.4]
  reg [31:0] _RAND_0;
  reg [9:0] mem_0_hartsel; // @[AsyncQueue.scala 41:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24225.4]
  reg [31:0] _RAND_1;
  reg  mem_0_ackhavereset; // @[AsyncQueue.scala 41:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24225.4]
  reg [31:0] _RAND_2;
  wire  widx_bin_clock; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24230.4]
  wire  widx_bin_reset; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24230.4]
  wire  widx_bin_io_d; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24230.4]
  wire  widx_bin_io_q; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24230.4]
  wire  ridx_gray_clock; // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24242.4]
  wire  ridx_gray_reset; // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24242.4]
  wire  ridx_gray_io_d; // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24242.4]
  wire  ridx_gray_io_q; // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24242.4]
  wire  ready_reg_clock; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24257.4]
  wire  ready_reg_reset; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24257.4]
  wire  ready_reg_io_d; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24257.4]
  wire  ready_reg_io_q; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24257.4]
  wire  widx_gray_clock; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24266.4]
  wire  widx_gray_reset; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24266.4]
  wire  widx_gray_io_d; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24266.4]
  wire  widx_gray_io_q; // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24266.4]
  wire  AsyncValidSync_clock; // @[AsyncQueue.scala 59:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24275.4]
  wire  AsyncValidSync_reset; // @[AsyncQueue.scala 59:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24275.4]
  wire  AsyncValidSync_io_out; // @[AsyncQueue.scala 59:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24275.4]
  wire  AsyncValidSync_1_clock; // @[AsyncQueue.scala 60:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24279.4]
  wire  AsyncValidSync_1_reset; // @[AsyncQueue.scala 60:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24279.4]
  wire  AsyncValidSync_1_io_in; // @[AsyncQueue.scala 60:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24279.4]
  wire  AsyncValidSync_1_io_out; // @[AsyncQueue.scala 60:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24279.4]
  wire  AsyncValidSync_2_clock; // @[AsyncQueue.scala 61:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24283.4]
  wire  AsyncValidSync_2_reset; // @[AsyncQueue.scala 61:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24283.4]
  wire  AsyncValidSync_2_io_in; // @[AsyncQueue.scala 61:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24283.4]
  wire  AsyncValidSync_2_io_out; // @[AsyncQueue.scala 61:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24283.4]
  wire  _T_26; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24226.4]
  wire  sink_ready; // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24222.4]
  wire  _T_28; // @[AsyncQueue.scala 42:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24227.4]
  wire [1:0] _T_33; // @[AsyncQueue.scala 11:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24236.4]
  wire  _T_34; // @[AsyncQueue.scala 11:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24237.4]
  wire  _T_35; // @[AsyncQueue.scala 11:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24238.4]
  wire  _T_37; // @[AsyncQueue.scala 12:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24240.4]
  wire  widx; // @[AsyncQueue.scala 12:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24241.4]
  wire  ridx; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24247.4]
  wire  _T_40; // @[AsyncQueue.scala 44:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24250.4]
  wire  _T_41; // @[AsyncQueue.scala 44:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24251.4]
  wire  ready; // @[AsyncQueue.scala 44:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24252.4]
  wire  _GEN_0; // @[AsyncQueue.scala 47:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24254.4]
  wire [9:0] _GEN_1; // @[AsyncQueue.scala 47:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24254.4]
  wire  _GEN_2; // @[AsyncQueue.scala 47:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24254.4]
  wire  ready_reg_1; // @[AsyncQueue.scala 49:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24263.4]
  wire  _T_46; // @[AsyncQueue.scala 50:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24264.4]
  wire  _T_51; // @[AsyncQueue.scala 62:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24288.4]
  wire  _T_52; // @[AsyncQueue.scala 62:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24289.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_RESET_REG_VEC_W1_I0 widx_bin ( // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24230.4]
    .clock(widx_bin_clock),
    .reset(widx_bin_reset),
    .io_d(widx_bin_io_d),
    .io_q(widx_bin_io_q)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_RESET_SYNCHRONIZER_SHIFT_REG_W1_D3_I0 ridx_gray ( // @[ShiftReg.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24242.4]
    .clock(ridx_gray_clock),
    .reset(ridx_gray_reset),
    .io_d(ridx_gray_io_d),
    .io_q(ridx_gray_io_q)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_RESET_REG_VEC_W1_I0 ready_reg ( // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24257.4]
    .clock(ready_reg_clock),
    .reset(ready_reg_reset),
    .io_d(ready_reg_io_d),
    .io_q(ready_reg_io_q)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_RESET_REG_VEC_W1_I0 widx_gray ( // @[AsyncResetReg.scala 90:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24266.4]
    .clock(widx_gray_clock),
    .reset(widx_gray_reset),
    .io_d(widx_gray_io_d),
    .io_q(widx_gray_io_q)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_VALID_SYNC MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_VALID_SYNC ( // @[AsyncQueue.scala 59:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24275.4]
    .clock(AsyncValidSync_clock),
    .reset(AsyncValidSync_reset),
    .io_out(AsyncValidSync_io_out)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_VALID_SYNC_1 MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_VALID_SYNC_1 ( // @[AsyncQueue.scala 60:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24279.4]
    .clock(AsyncValidSync_1_clock),
    .reset(AsyncValidSync_1_reset),
    .io_in(AsyncValidSync_1_io_in),
    .io_out(AsyncValidSync_1_io_out)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_VALID_SYNC_2 MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ASYNC_VALID_SYNC_2 ( // @[AsyncQueue.scala 61:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24283.4]
    .clock(AsyncValidSync_2_clock),
    .reset(AsyncValidSync_2_reset),
    .io_in(AsyncValidSync_2_io_in),
    .io_out(AsyncValidSync_2_io_out)
  );
  assign _T_26 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24226.4]
  assign sink_ready = AsyncValidSync_2_io_out; // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24222.4]
  assign _T_28 = sink_ready == 1'h0; // @[AsyncQueue.scala 42:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24227.4]
  assign _T_33 = widx_bin_io_q + _T_26; // @[AsyncQueue.scala 11:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24236.4]
  assign _T_34 = _T_33[0:0]; // @[AsyncQueue.scala 11:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24237.4]
  assign _T_35 = _T_28 ? 1'h0 : _T_34; // @[AsyncQueue.scala 11:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24238.4]
  assign _T_37 = _T_35 >> 1'h1; // @[AsyncQueue.scala 12:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24240.4]
  assign widx = _T_35 ^ _T_37; // @[AsyncQueue.scala 12:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24241.4]
  assign ridx = ridx_gray_io_q; // @[ShiftReg.scala 50:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24247.4]
  assign _T_40 = ridx ^ 1'h1; // @[AsyncQueue.scala 44:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24250.4]
  assign _T_41 = widx != _T_40; // @[AsyncQueue.scala 44:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24251.4]
  assign ready = sink_ready & _T_41; // @[AsyncQueue.scala 44:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24252.4]
  assign _GEN_0 = _T_26 ? io_enq_bits_resumereq : mem_0_resumereq; // @[AsyncQueue.scala 47:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24254.4]
  assign _GEN_1 = _T_26 ? io_enq_bits_hartsel : mem_0_hartsel; // @[AsyncQueue.scala 47:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24254.4]
  assign _GEN_2 = _T_26 ? io_enq_bits_ackhavereset : mem_0_ackhavereset; // @[AsyncQueue.scala 47:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24254.4]
  assign ready_reg_1 = ready_reg_io_q; // @[AsyncQueue.scala 49:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24263.4]
  assign _T_46 = ready_reg_1 & sink_ready; // @[AsyncQueue.scala 50:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24264.4]
  assign _T_51 = io_sink_reset_n == 1'h0; // @[AsyncQueue.scala 62:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24288.4]
  assign _T_52 = reset | _T_51; // @[AsyncQueue.scala 62:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@24289.4]
  assign io_enq_ready = _T_46;
  assign io_widx = widx_gray_io_q;
  assign io_mem_0_resumereq = mem_0_resumereq;
  assign io_mem_0_hartsel = mem_0_hartsel;
  assign io_mem_0_ackhavereset = mem_0_ackhavereset;
  assign io_widx_valid = AsyncValidSync_io_out;
  assign widx_bin_clock = clock;
  assign widx_bin_reset = reset;
  assign widx_bin_io_d = _T_35;
  assign ridx_gray_clock = clock;
  assign ridx_gray_reset = reset;
  assign ridx_gray_io_d = io_ridx;
  assign ready_reg_clock = clock;
  assign ready_reg_reset = reset;
  assign ready_reg_io_d = ready;
  assign widx_gray_clock = clock;
  assign widx_gray_reset = reset;
  assign widx_gray_io_d = widx;
  assign AsyncValidSync_clock = clock;
  assign AsyncValidSync_reset = _T_52;
  assign AsyncValidSync_1_clock = clock;
  assign AsyncValidSync_1_reset = _T_52;
  assign AsyncValidSync_1_io_in = io_ridx_valid;
  assign AsyncValidSync_2_clock = clock;
  assign AsyncValidSync_2_reset = reset;
  assign AsyncValidSync_2_io_in = AsyncValidSync_1_io_out;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  mem_0_resumereq = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  mem_0_hartsel = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  mem_0_ackhavereset = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_26) begin
      mem_0_resumereq <= io_enq_bits_resumereq;
    end
    if (_T_26) begin
      mem_0_hartsel <= io_enq_bits_hartsel;
    end
    if (_T_26) begin
      mem_0_ackhavereset <= io_enq_bits_ackhavereset;
    end
  end
endmodule
