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
module MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_SYNCHRONIZER_SHIFT_REG_W1_D4_I0( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22437.2]
  input   clock, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22438.4]
  input   reset, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22439.4]
  output  io_q // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22440.4]
);
  wire  sync_0_clock; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22445.4]
  wire  sync_0_reset; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22445.4]
  wire  sync_0_io_d; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22445.4]
  wire  sync_0_io_q; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22445.4]
  wire  sync_1_clock; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22449.4]
  wire  sync_1_reset; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22449.4]
  wire  sync_1_io_d; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22449.4]
  wire  sync_1_io_q; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22449.4]
  wire  sync_2_clock; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22453.4]
  wire  sync_2_reset; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22453.4]
  wire  sync_2_io_d; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22453.4]
  wire  sync_2_io_q; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22453.4]
  wire  sync_3_clock; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22457.4]
  wire  sync_3_reset; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22457.4]
  wire  sync_3_io_d; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22457.4]
  wire  sync_3_io_q; // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22457.4]
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_W1_I0 sync_0 ( // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22445.4]
    .clock(sync_0_clock),
    .reset(sync_0_reset),
    .io_d(sync_0_io_d),
    .io_q(sync_0_io_q)
  );
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_W1_I0 sync_1 ( // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22449.4]
    .clock(sync_1_clock),
    .reset(sync_1_reset),
    .io_d(sync_1_io_d),
    .io_q(sync_1_io_q)
  );
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_W1_I0 sync_2 ( // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22453.4]
    .clock(sync_2_clock),
    .reset(sync_2_reset),
    .io_d(sync_2_io_d),
    .io_q(sync_2_io_q)
  );
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_W1_I0 sync_3 ( // @[ShiftReg.scala 60:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@22457.4]
    .clock(sync_3_clock),
    .reset(sync_3_reset),
    .io_d(sync_3_io_d),
    .io_q(sync_3_io_q)
  );
  assign io_q = sync_0_io_q;
  assign sync_0_clock = clock;
  assign sync_0_reset = reset;
  assign sync_0_io_d = sync_1_io_q;
  assign sync_1_clock = clock;
  assign sync_1_reset = reset;
  assign sync_1_io_d = sync_2_io_q;
  assign sync_2_clock = clock;
  assign sync_2_reset = reset;
  assign sync_2_io_d = sync_3_io_q;
  assign sync_3_clock = clock;
  assign sync_3_reset = reset;
  assign sync_3_io_d = 1'h1;
endmodule
