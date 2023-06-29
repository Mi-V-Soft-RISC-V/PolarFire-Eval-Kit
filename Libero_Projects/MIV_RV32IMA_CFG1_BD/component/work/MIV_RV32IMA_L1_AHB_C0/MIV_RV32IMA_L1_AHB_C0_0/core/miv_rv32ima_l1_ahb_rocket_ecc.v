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
//         220618 KOH ECC implementation CSR
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
module MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_ROCKET( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109345.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109346.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109347.4]
  input         io_interrupts_debug, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_interrupts_mtip, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_interrupts_msip, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_interrupts_meip, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_interrupts_ided, // #
  input         io_interrupts_dded, // #
  output        io_imem_req_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output [31:0] io_imem_req_bits_pc, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output        io_imem_req_bits_speculative, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output        io_imem_resp_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_imem_resp_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_imem_resp_bits_btb_taken, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_imem_resp_bits_btb_bridx, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input  [31:0] io_imem_resp_bits_pc, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input  [31:0] io_imem_resp_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_imem_resp_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_imem_resp_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_imem_resp_bits_replay, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output        io_imem_flush_icache, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_req_ready, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output        io_dmem_req_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output [31:0] io_dmem_req_bits_addr, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output [5:0]  io_dmem_req_bits_tag, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output [4:0]  io_dmem_req_bits_cmd, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output [2:0]  io_dmem_req_bits_typ, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output        io_dmem_s1_kill, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output [31:0] io_dmem_s1_data_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_s2_nack, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_resp_valid, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input  [5:0]  io_dmem_resp_bits_tag, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input  [31:0] io_dmem_resp_bits_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_resp_bits_replay, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_resp_bits_has_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input  [31:0] io_dmem_resp_bits_data_word_bypass, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_replay_next, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_s2_xcpt_ma_ld, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_s2_xcpt_ma_st, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_s2_xcpt_pf_ld, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_s2_xcpt_pf_st, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_s2_xcpt_ae_st, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output        io_dmem_invalidate_lr, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  input         io_dmem_ordered, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109348.4]
  output        io_mpu_halted //#
);
  reg  ex_ctrl_fp; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_0;
  reg  ex_ctrl_rocc; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_1;
  reg  ex_ctrl_branch; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_2;
  reg  ex_ctrl_jal; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_3;
  reg  ex_ctrl_jalr; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_4;
  reg  ex_ctrl_rxs2; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_5;
  reg [1:0] ex_ctrl_sel_alu2; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_6;
  reg [1:0] ex_ctrl_sel_alu1; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_7;
  reg [2:0] ex_ctrl_sel_imm; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_8;
  reg [3:0] ex_ctrl_alu_fn; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_9;
  reg  ex_ctrl_mem; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_10;
  reg [4:0] ex_ctrl_mem_cmd; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_11;
  reg [2:0] ex_ctrl_mem_type; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_12;
  reg  ex_ctrl_div; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_13;
  reg  ex_ctrl_wxd; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_14;
  reg [2:0] ex_ctrl_csr; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_15;
  reg  ex_ctrl_fence_i; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109353.4]
  reg [31:0] _RAND_16;
  reg  mem_ctrl_fp; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_17;
  reg  mem_ctrl_rocc; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_18;
  reg  mem_ctrl_branch; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_19;
  reg  mem_ctrl_jal; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_20;
  reg  mem_ctrl_jalr; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_21;
  reg  mem_ctrl_mem; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_22;
  reg  mem_ctrl_div; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_23;
  reg  mem_ctrl_wxd; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_24;
  reg [2:0] mem_ctrl_csr; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_25;
  reg  mem_ctrl_fence_i; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109354.4]
  reg [31:0] _RAND_26;
  reg  wb_ctrl_rocc; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109355.4]
  reg [31:0] _RAND_27;
  reg  wb_ctrl_mem; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109355.4]
  reg [31:0] _RAND_28;
  reg  wb_ctrl_div; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109355.4]
  reg [31:0] _RAND_29;
  reg  wb_ctrl_wxd; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109355.4]
  reg [31:0] _RAND_30;
  reg [2:0] wb_ctrl_csr; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109355.4]
  reg [31:0] _RAND_31;
  reg  wb_ctrl_fence_i; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109355.4]
  reg [31:0] _RAND_32;
  reg  ex_reg_xcpt_interrupt; // @[RocketCore.scala 124:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109356.4]
  reg [31:0] _RAND_33;
  reg  ex_reg_valid; // @[RocketCore.scala 125:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109357.4]
  reg [31:0] _RAND_34;
  reg  ex_reg_rvc; // @[RocketCore.scala 126:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109358.4]
  reg [31:0] _RAND_35;
  reg  ex_reg_xcpt; // @[RocketCore.scala 128:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109360.4]
  reg [31:0] _RAND_36;
  reg  ex_reg_flush_pipe; // @[RocketCore.scala 129:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109361.4]
  reg [31:0] _RAND_37;
  reg  ex_reg_load_use; // @[RocketCore.scala 130:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109362.4]
  reg [31:0] _RAND_38;
  reg [31:0] ex_cause; // @[RocketCore.scala 131:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109363.4]
  reg [31:0] _RAND_39;
  reg  ex_reg_replay; // @[RocketCore.scala 132:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109364.4]
  reg [31:0] _RAND_40;
  reg [31:0] ex_reg_pc; // @[RocketCore.scala 133:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109365.4]
  reg [31:0] _RAND_41;
  reg [31:0] ex_reg_inst; // @[RocketCore.scala 134:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109366.4]
  reg [31:0] _RAND_42;
  reg  mem_reg_xcpt_interrupt; // @[RocketCore.scala 137:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109368.4]
  reg [31:0] _RAND_43;
  reg  mem_reg_valid; // @[RocketCore.scala 138:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109369.4]
  reg [31:0] _RAND_44;
  reg  mem_reg_rvc; // @[RocketCore.scala 139:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109370.4]
  reg [31:0] _RAND_45;
  reg  mem_reg_xcpt; // @[RocketCore.scala 141:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109372.4]
  reg [31:0] _RAND_46;
  reg  mem_reg_replay; // @[RocketCore.scala 142:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109373.4]
  reg [31:0] _RAND_47;
  reg  mem_reg_flush_pipe; // @[RocketCore.scala 143:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109374.4]
  reg [31:0] _RAND_48;
  reg [31:0] mem_reg_cause; // @[RocketCore.scala 144:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109375.4]
  reg [31:0] _RAND_49;
  reg  mem_reg_slow_bypass; // @[RocketCore.scala 145:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109376.4]
  reg [31:0] _RAND_50;
  reg  mem_reg_load; // @[RocketCore.scala 146:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109377.4]
  reg [31:0] _RAND_51;
  reg  mem_reg_store; // @[RocketCore.scala 147:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109378.4]
  reg [31:0] _RAND_52;
  reg  mem_reg_sfence; // @[RocketCore.scala 148:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109379.4]
  reg [31:0] _RAND_53;
  reg [31:0] mem_reg_pc; // @[RocketCore.scala 149:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109380.4]
  reg [31:0] _RAND_54;
  reg [31:0] mem_reg_inst; // @[RocketCore.scala 150:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109381.4]
  reg [31:0] _RAND_55;
  reg [31:0] bypass_mux_1; // @[RocketCore.scala 152:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109383.4]
  reg [31:0] _RAND_56;
  reg [31:0] mem_reg_rs2; // @[RocketCore.scala 153:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109384.4]
  reg [31:0] _RAND_57;
  reg  mem_br_taken; // @[RocketCore.scala 154:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109385.4]
  reg [31:0] _RAND_58;
  reg  wb_reg_valid; // @[RocketCore.scala 157:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109388.4]
  reg [31:0] _RAND_59;
  reg  wb_reg_xcpt; // @[RocketCore.scala 158:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109389.4]
  reg [31:0] _RAND_60;
  reg  wb_reg_replay; // @[RocketCore.scala 159:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109390.4]
  reg [31:0] _RAND_61;
  reg  wb_reg_flush_pipe; // @[RocketCore.scala 160:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109391.4]
  reg [31:0] _RAND_62;
  reg [31:0] wb_reg_cause; // @[RocketCore.scala 161:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109392.4]
  reg [31:0] _RAND_63;
  reg [31:0] wb_reg_pc; // @[RocketCore.scala 163:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109394.4]
  reg [31:0] _RAND_64;
  reg [31:0] wb_reg_inst; // @[RocketCore.scala 164:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109395.4]
  reg [31:0] _RAND_65;
  reg [31:0] bypass_mux_2; // @[RocketCore.scala 166:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109397.4]
  reg [31:0] _RAND_66;
  wire  ibuf_clock; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_imem_ready; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_imem_valid; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_imem_bits_btb_taken; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_imem_bits_btb_bridx; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire [31:0] ibuf_io_imem_bits_pc; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire [31:0] ibuf_io_imem_bits_data; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_imem_bits_xcpt_pf_inst; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_imem_bits_xcpt_ae_inst; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_imem_bits_replay; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire [31:0] ibuf_io_pc; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_inst_0_ready; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_inst_0_valid; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire  ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire [31:0] ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  wire [31:0] ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
  reg  id_reg_fence; // @[RocketCore.scala 188:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109739.4]
  reg [31:0] _RAND_67;
  reg [31:0] _T_1151 [0:30]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  reg [31:0] _RAND_68;
  wire [31:0] _T_1151__T_1160_data; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  wire [4:0] _T_1151__T_1160_addr; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  reg [31:0] _RAND_69;
  wire [31:0] _T_1151__T_1170_data; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  wire [4:0] _T_1151__T_1170_addr; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  reg [31:0] _RAND_70;
  wire [31:0] _T_1151__T_2133_data; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  wire [4:0] _T_1151__T_2133_addr; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  wire  _T_1151__T_2133_mask; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  wire  _T_1151__T_2133_en; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  wire  csr_clock; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_reset; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_interrupts_debug; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_interrupts_mtip; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_interrupts_msip; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_interrupts_meip; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_interrupts_ided; //#
  wire  csr_io_interrupts_dded; //#
  wire [11:0] csr_io_rw_addr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [2:0] csr_io_rw_cmd; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_rw_rdata; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_rw_wdata; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [11:0] csr_io_decode_0_csr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_decode_0_read_illegal; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_decode_0_write_illegal; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_decode_0_write_flush; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_csr_stall; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_eret; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_singleStep; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_debug; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_status_isa; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_status_dprv; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_status_prv; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_sd; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [26:0] csr_io_status_zero2; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_status_sxl; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_status_uxl; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_sd_rv32; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [7:0] csr_io_status_zero1; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_tsr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_tw; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_tvm; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_mxr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_sum; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_mprv; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_status_xs; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_status_fs; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_status_mpp; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_status_hpp; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_spp; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_mpie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_hpie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_spie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_upie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_mie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_hie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_sie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_status_uie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_evec; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_exception; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_retire; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_cause; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_pc; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_badaddr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_time; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_interrupt; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_interrupt_cause; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_0_control_action; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_0_control_chain; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_bp_0_control_tmatch; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_0_control_x; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_0_control_w; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_0_control_r; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_bp_0_address; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_1_control_action; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [1:0] csr_io_bp_1_control_tmatch; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_1_control_x; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_1_control_w; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_bp_1_control_r; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_bp_1_address; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_inst_0; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_trace_0_valid; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_trace_0_iaddr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire [31:0] csr_io_trace_0_insn; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  csr_io_trace_0_exception; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109828.4]
  wire  bpu_io_status_debug; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_0_control_action; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_0_control_chain; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire [1:0] bpu_io_bp_0_control_tmatch; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_0_control_x; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_0_control_w; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_0_control_r; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire [31:0] bpu_io_bp_0_address; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_1_control_action; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire [1:0] bpu_io_bp_1_control_tmatch; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_1_control_x; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_1_control_w; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_bp_1_control_r; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire [31:0] bpu_io_bp_1_address; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire [31:0] bpu_io_pc; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire [31:0] bpu_io_ea; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_xcpt_if; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_xcpt_ld; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_xcpt_st; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_debug_if; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_debug_ld; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  wire  bpu_io_debug_st; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
  reg  ex_reg_rs_bypass_0; // @[RocketCore.scala 270:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109967.4]
  reg [31:0] _RAND_71;
  reg  ex_reg_rs_bypass_1; // @[RocketCore.scala 270:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109967.4]
  reg [31:0] _RAND_72;
  reg [1:0] ex_reg_rs_lsb_0; // @[RocketCore.scala 271:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109968.4]
  reg [31:0] _RAND_73;
  reg [1:0] ex_reg_rs_lsb_1; // @[RocketCore.scala 271:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109968.4]
  reg [31:0] _RAND_74;
  reg [29:0] ex_reg_rs_msb_0; // @[RocketCore.scala 272:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109969.4]
  reg [31:0] _RAND_75;
  reg [29:0] ex_reg_rs_msb_1; // @[RocketCore.scala 272:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109969.4]
  reg [31:0] _RAND_76;
  wire [3:0] alu_io_fn; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110062.4]
  wire [31:0] alu_io_in2; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110062.4]
  wire [31:0] alu_io_in1; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110062.4]
  wire [31:0] alu_io_out; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110062.4]
  wire [31:0] alu_io_adder_out; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110062.4]
  wire  alu_io_cmp_out; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110062.4]
  wire  div_clock; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire  div_reset; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire  div_io_req_ready; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire  div_io_req_valid; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire [3:0] div_io_req_bits_fn; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire [31:0] div_io_req_bits_in1; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire [31:0] div_io_req_bits_in2; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire [4:0] div_io_req_bits_tag; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire  div_io_kill; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire  div_io_resp_ready; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire  div_io_resp_valid; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire [31:0] div_io_resp_bits_data; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  wire [4:0] div_io_resp_bits_tag; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
  reg  _T_2033; // @[RocketCore.scala 450:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110538.4]
  reg [31:0] _RAND_77;
  reg [31:0] _T_2151; // @[RocketCore.scala 784:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110703.4]
  reg [31:0] _RAND_78;
  reg  dcache_blocked; // @[RocketCore.scala 605:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110833.4]
  reg [31:0] _RAND_79;
  reg [31:0] _T_2405; // @[RocketCore.scala 745:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111000.4]
  reg [31:0] _RAND_80;
  reg [31:0] _T_2407; // @[RocketCore.scala 745:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111002.4]
  reg [31:0] _RAND_81;
  reg [31:0] _T_2410; // @[RocketCore.scala 746:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111005.4]
  reg [31:0] _RAND_82;
  reg [31:0] _T_2412; // @[RocketCore.scala 746:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111007.4]
  reg [31:0] _RAND_83;
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 24:11:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111014.4]
  wire  replay_wb_common; // @[RocketCore.scala 493:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110611.4]
  wire  replay_wb_rocc; // @[RocketCore.scala 494:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110612.4]
  wire  replay_wb; // @[RocketCore.scala 495:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110615.4]
  wire  _T_2053; // @[RocketCore.scala 473:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110572.4]
  wire  _T_2054; // @[RocketCore.scala 473:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110573.4]
  wire  _T_2071; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110584.4]
  wire  _T_2057; // @[RocketCore.scala 474:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110575.4]
  wire  _T_2072; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110585.4]
  wire  _T_2060; // @[RocketCore.scala 475:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110577.4]
  wire  _T_2073; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110586.4]
  wire  _T_2063; // @[RocketCore.scala 476:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110579.4]
  wire  _T_2074; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110587.4]
  wire  _T_2066; // @[RocketCore.scala 477:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110581.4]
  wire  _T_2075; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110588.4]
  wire  _T_2069; // @[RocketCore.scala 478:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110583.4]
  wire  wb_xcpt; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110589.4]
  wire  _T_2103; // @[RocketCore.scala 496:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110616.4]
  wire  _T_2104; // @[RocketCore.scala 496:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110617.4]
  wire  take_pc_wb; // @[RocketCore.scala 496:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110618.4]
  wire  _T_1882; // @[RocketCore.scala 386:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110390.4]
  wire  _T_1883; // @[RocketCore.scala 386:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110391.4]
  wire  mem_cfi_taken; // @[RocketCore.scala 386:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110392.4]
  wire  _T_1887; // @[RocketCore.scala 389:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110396.4]
  wire  take_pc_mem; // @[RocketCore.scala 389:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110397.4]
  wire  take_pc; // @[RocketCore.scala 170:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109401.4]
  wire [31:0] _T_628; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109410.4]
  wire  _T_630; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109411.4]
  wire [31:0] _T_632; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109412.4]
  wire  _T_634; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109413.4]
  wire [31:0] _T_636; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109414.4]
  wire  _T_638; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109415.4]
  wire [31:0] _T_640; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109416.4]
  wire  _T_642; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109417.4]
  wire [31:0] _T_644; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109418.4]
  wire  _T_646; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109419.4]
  wire [31:0] _T_648; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109420.4]
  wire  _T_650; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109421.4]
  wire [31:0] _T_652; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109422.4]
  wire  _T_654; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109423.4]
  wire [31:0] _T_656; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109424.4]
  wire  _T_658; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109425.4]
  wire [31:0] _T_660; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109426.4]
  wire  _T_662; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109427.4]
  wire [31:0] _T_664; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109428.4]
  wire  _T_666; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109429.4]
  wire  _T_670; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109431.4]
  wire [31:0] _T_672; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109432.4]
  wire  _T_674; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109433.4]
  wire  _T_678; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109435.4]
  wire [31:0] _T_680; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109436.4]
  wire  _T_682; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109437.4]
  wire  _T_686; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109439.4]
  wire [31:0] _T_688; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109440.4]
  wire  _T_690; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109441.4]
  wire [31:0] _T_692; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109442.4]
  wire  _T_694; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109443.4]
  wire  _T_696; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109444.4]
  wire  _T_698; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109445.4]
  wire  _T_700; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109446.4]
  wire [31:0] _T_702; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109447.4]
  wire  _T_704; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109448.4]
  wire [31:0] _T_706; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109449.4]
  wire  _T_708; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109450.4]
  wire [31:0] _T_710; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109451.4]
  wire  _T_712; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109452.4]
  wire  _T_716; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109454.4]
  wire  _T_719; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109456.4]
  wire  _T_720; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109457.4]
  wire  _T_721; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109458.4]
  wire  _T_722; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109459.4]
  wire  _T_723; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109460.4]
  wire  _T_724; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109461.4]
  wire  _T_725; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109462.4]
  wire  _T_726; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109463.4]
  wire  _T_727; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109464.4]
  wire  _T_728; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109465.4]
  wire  _T_729; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109466.4]
  wire  _T_730; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109467.4]
  wire  _T_731; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109468.4]
  wire  _T_732; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109469.4]
  wire  _T_733; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109470.4]
  wire  _T_734; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109471.4]
  wire  _T_735; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109472.4]
  wire  _T_736; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109473.4]
  wire  _T_737; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109474.4]
  wire  _T_738; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109475.4]
  wire  _T_739; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109476.4]
  wire  _T_740; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109477.4]
  wire  id_ctrl_legal; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109478.4]
  wire [31:0] _T_745; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109479.4]
  wire  id_ctrl_branch; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109480.4]
  wire [31:0] _T_751; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109482.4]
  wire  id_ctrl_jal; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109483.4]
  wire [31:0] _T_757; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109485.4]
  wire  id_ctrl_jalr; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109486.4]
  wire [31:0] _T_763; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109488.4]
  wire  _T_765; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109489.4]
  wire [31:0] _T_767; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109490.4]
  wire  _T_769; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109491.4]
  wire [31:0] _T_771; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109492.4]
  wire  _T_773; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109493.4]
  wire  _T_776; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109495.4]
  wire  id_ctrl_rxs2; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109496.4]
  wire [31:0] _T_779; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109497.4]
  wire  _T_781; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109498.4]
  wire [31:0] _T_783; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109499.4]
  wire  _T_785; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109500.4]
  wire [31:0] _T_787; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109501.4]
  wire  _T_789; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109502.4]
  wire [31:0] _T_791; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109503.4]
  wire  _T_793; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109504.4]
  wire  _T_796; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109506.4]
  wire  _T_797; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109507.4]
  wire  id_ctrl_rxs1; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109508.4]
  wire [31:0] _T_800; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109509.4]
  wire  _T_802; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109510.4]
  wire [31:0] _T_804; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109511.4]
  wire  _T_806; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109512.4]
  wire [31:0] _T_808; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109513.4]
  wire  _T_810; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109514.4]
  wire [31:0] _T_812; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109515.4]
  wire  _T_814; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109516.4]
  wire  _T_817; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109518.4]
  wire  _T_818; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109519.4]
  wire  _T_819; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109520.4]
  wire  _T_820; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109521.4]
  wire  _T_824; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109523.4]
  wire [31:0] _T_826; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109524.4]
  wire  _T_828; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109525.4]
  wire  _T_831; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109527.4]
  wire  _T_832; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109528.4]
  wire [1:0] id_ctrl_sel_alu2; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109529.4]
  wire [31:0] _T_835; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109530.4]
  wire  _T_837; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109531.4]
  wire  _T_840; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109533.4]
  wire  _T_841; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109534.4]
  wire  _T_842; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109535.4]
  wire [31:0] _T_844; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109536.4]
  wire  _T_846; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109537.4]
  wire  _T_849; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109539.4]
  wire [1:0] id_ctrl_sel_alu1; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109540.4]
  wire [31:0] _T_852; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109541.4]
  wire  _T_854; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109542.4]
  wire  _T_858; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109544.4]
  wire  _T_861; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109546.4]
  wire  _T_865; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109548.4]
  wire  _T_868; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109550.4]
  wire  _T_872; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109552.4]
  wire [31:0] _T_874; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109553.4]
  wire  _T_876; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109554.4]
  wire  _T_879; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109556.4]
  wire  _T_880; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109557.4]
  wire [1:0] _T_881; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109558.4]
  wire [2:0] id_ctrl_sel_imm; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109559.4]
  wire [31:0] _T_890; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109563.4]
  wire  _T_892; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109564.4]
  wire [31:0] _T_894; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109565.4]
  wire  _T_896; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109566.4]
  wire [31:0] _T_898; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109567.4]
  wire  _T_900; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109568.4]
  wire  _T_903; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109570.4]
  wire  _T_904; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109571.4]
  wire [31:0] _T_906; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109572.4]
  wire  _T_908; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109573.4]
  wire [31:0] _T_910; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109574.4]
  wire  _T_912; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109575.4]
  wire [31:0] _T_914; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109576.4]
  wire  _T_916; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109577.4]
  wire [31:0] _T_918; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109578.4]
  wire  _T_920; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109579.4]
  wire [31:0] _T_922; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109580.4]
  wire  _T_924; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109581.4]
  wire [31:0] _T_926; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109582.4]
  wire  _T_928; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109583.4]
  wire  _T_931; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109585.4]
  wire  _T_932; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109586.4]
  wire  _T_933; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109587.4]
  wire  _T_934; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109588.4]
  wire  _T_935; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109589.4]
  wire [31:0] _T_937; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109590.4]
  wire  _T_939; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109591.4]
  wire [31:0] _T_941; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109592.4]
  wire  _T_943; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109593.4]
  wire [31:0] _T_945; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109594.4]
  wire  _T_947; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109595.4]
  wire [31:0] _T_949; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109596.4]
  wire  _T_951; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109597.4]
  wire  _T_954; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109599.4]
  wire  _T_955; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109600.4]
  wire  _T_956; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109601.4]
  wire [31:0] _T_958; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109602.4]
  wire  _T_960; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109603.4]
  wire [31:0] _T_962; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109604.4]
  wire  _T_964; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109605.4]
  wire  _T_967; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109607.4]
  wire  _T_968; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109608.4]
  wire  _T_969; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109609.4]
  wire [1:0] _T_970; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109610.4]
  wire [1:0] _T_971; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109611.4]
  wire [3:0] id_ctrl_alu_fn; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109612.4]
  wire [31:0] _T_974; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109613.4]
  wire  _T_976; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109614.4]
  wire [31:0] _T_978; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109615.4]
  wire  _T_980; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109616.4]
  wire  _T_983; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109618.4]
  wire  _T_984; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109619.4]
  wire  _T_985; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109620.4]
  wire  _T_986; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109621.4]
  wire  _T_987; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109622.4]
  wire  id_ctrl_mem; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109623.4]
  wire [31:0] _T_990; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109624.4]
  wire  _T_992; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109625.4]
  wire [31:0] _T_994; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109626.4]
  wire  _T_996; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109627.4]
  wire [31:0] _T_998; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109628.4]
  wire  _T_1000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109629.4]
  wire [31:0] _T_1002; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109630.4]
  wire  _T_1004; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109631.4]
  wire  _T_1007; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109633.4]
  wire  _T_1008; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109634.4]
  wire  _T_1009; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109635.4]
  wire [31:0] _T_1011; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109636.4]
  wire  _T_1013; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109637.4]
  wire [31:0] _T_1015; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109638.4]
  wire  _T_1017; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109639.4]
  wire  _T_1020; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109641.4]
  wire [31:0] _T_1022; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109642.4]
  wire  _T_1024; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109643.4]
  wire [31:0] _T_1026; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109644.4]
  wire  _T_1028; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109645.4]
  wire [31:0] _T_1030; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109646.4]
  wire  _T_1032; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109647.4]
  wire  _T_1035; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109649.4]
  wire  _T_1036; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109650.4]
  wire  _T_1037; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109651.4]
  wire [31:0] _T_1039; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109652.4]
  wire  _T_1041; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109653.4]
  wire [1:0] _T_1045; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109655.4]
  wire [1:0] _T_1046; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109656.4]
  wire [2:0] _T_1047; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109657.4]
  wire [4:0] id_ctrl_mem_cmd; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109658.4]
  wire [31:0] _T_1050; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109659.4]
  wire  _T_1052; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109660.4]
  wire [31:0] _T_1056; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109662.4]
  wire  _T_1058; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109663.4]
  wire [31:0] _T_1062; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109665.4]
  wire  _T_1064; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109666.4]
  wire [1:0] _T_1067; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109668.4]
  wire [2:0] id_ctrl_mem_type; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109669.4]
  wire [31:0] _T_1074; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109670.4]
  wire  id_ctrl_div; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109671.4]
  wire  _T_1082; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109674.4]
  wire  _T_1086; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109676.4]
  wire [31:0] _T_1088; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109677.4]
  wire  _T_1090; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109678.4]
  wire  _T_1094; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109680.4]
  wire [31:0] _T_1096; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109681.4]
  wire  _T_1098; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109682.4]
  wire  _T_1101; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109684.4]
  wire  _T_1102; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109685.4]
  wire  _T_1103; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109686.4]
  wire  _T_1104; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109687.4]
  wire  _T_1105; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109688.4]
  wire  id_ctrl_wxd; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109689.4]
  wire [31:0] _T_1108; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109690.4]
  wire  _T_1110; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109691.4]
  wire  _T_1116; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109694.4]
  wire [31:0] _T_1120; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109696.4]
  wire  _T_1122; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109697.4]
  wire [1:0] _T_1125; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109699.4]
  wire [2:0] id_ctrl_csr; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109700.4]
  wire [31:0] _T_1128; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109701.4]
  wire  id_ctrl_fence_i; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109702.4]
  wire [31:0] _T_1134; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109704.4]
  wire  id_ctrl_fence; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109705.4]
  wire [31:0] _T_1140; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109707.4]
  wire  id_ctrl_amo; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109708.4]
  wire  _T_1155; // @[RocketCore.scala 805:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109743.4]
  wire [4:0] _T_1158; // @[RocketCore.scala 799:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109745.4]
  wire [4:0] _T_1159; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109746.4]
  wire [31:0] _T_1161; // @[RocketCore.scala 805:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109748.4]
  wire [4:0] _T_1168; // @[RocketCore.scala 799:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109754.4]
  wire [4:0] _T_1169; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109755.4]
  wire [31:0] _T_1171; // @[RocketCore.scala 805:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109757.4]
  wire  _T_1265; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109832.4]
  wire  _T_1266; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109833.4]
  wire  _T_1267; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109834.4]
  wire  _T_1268; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109835.4]
  wire  id_csr_en; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109836.4]
  wire  id_system_insn; // @[RocketCore.scala 198:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109837.4]
  wire  id_csr_ren; // @[RocketCore.scala 199:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109842.4]
  wire [2:0] id_csr; // @[RocketCore.scala 200:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109843.4]
  wire  _T_1279; // @[RocketCore.scala 201:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109844.4]
  wire  id_sfence; // @[RocketCore.scala 201:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109845.4]
  wire  _T_1280; // @[RocketCore.scala 202:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109846.4]
  wire  _T_1282; // @[RocketCore.scala 202:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109847.4]
  wire  _T_1283; // @[RocketCore.scala 202:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109848.4]
  wire  _T_1284; // @[RocketCore.scala 202:79:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109849.4]
  wire  id_csr_flush; // @[RocketCore.scala 202:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109850.4]
  wire  _T_1286; // @[RocketCore.scala 204:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109851.4]
  wire  _T_1287; // @[RocketCore.scala 205:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109852.4]
  wire  _T_1289; // @[RocketCore.scala 205:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109853.4]
  wire  _T_1290; // @[RocketCore.scala 205:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109854.4]
  wire  _T_1291; // @[RocketCore.scala 204:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109855.4]
  wire  _T_1292; // @[RocketCore.scala 206:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109856.4]
  wire  _T_1294; // @[RocketCore.scala 206:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109857.4]
  wire  _T_1295; // @[RocketCore.scala 206:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109858.4]
  wire  _T_1296; // @[RocketCore.scala 205:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109859.4]
  wire  _T_1305; // @[RocketCore.scala 209:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109867.4]
  wire  _T_1307; // @[RocketCore.scala 209:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109868.4]
  wire  _T_1314; // @[RocketCore.scala 211:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109874.4]
  wire  _T_1315; // @[RocketCore.scala 211:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109875.4]
  wire  _T_1316; // @[RocketCore.scala 211:15:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109876.4]
  wire  id_illegal_insn; // @[RocketCore.scala 210:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109877.4]
  wire  id_amo_aq; // @[RocketCore.scala 214:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109883.4]
  wire  id_amo_rl; // @[RocketCore.scala 215:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109884.4]
  wire  _T_1323; // @[RocketCore.scala 216:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109885.4]
  wire  id_fence_next; // @[RocketCore.scala 216:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109886.4]
  wire  _T_1325; // @[RocketCore.scala 217:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109887.4]
  wire  id_mem_busy; // @[RocketCore.scala 217:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109888.4]
  wire  _T_1327; // @[RocketCore.scala 218:9:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109889.4]
  wire  _GEN_0; // @[RocketCore.scala 218:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109890.4]
  wire  _T_1337; // @[RocketCore.scala 223:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109901.4]
  wire  _T_1338; // @[RocketCore.scala 223:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109902.4]
  wire  _T_1340; // @[RocketCore.scala 223:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109904.4]
  wire  _T_1341; // @[RocketCore.scala 223:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109905.4]
  wire  id_do_fence; // @[RocketCore.scala 223:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109906.4]
  wire  _T_1352; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109919.4]
  wire  _T_1353; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109920.4]
  wire  _T_1354; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109921.4]
  wire  _T_1355; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109922.4]
  wire  id_xcpt; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109925.4]
  wire [3:0] _T_1360; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109928.4]
  wire [3:0] _T_1361; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109929.4]
  wire [3:0] _T_1362; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109930.4]
  wire [3:0] _T_1363; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109931.4]
  wire [31:0] id_cause; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109932.4]
  wire [4:0] ex_waddr; // @[RocketCore.scala 258:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109943.4]
  wire [4:0] mem_waddr; // @[RocketCore.scala 259:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109944.4]
  wire [4:0] wb_waddr; // @[RocketCore.scala 260:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109945.4]
  wire  _T_1381; // @[RocketCore.scala 263:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109946.4]
  wire  _T_1382; // @[RocketCore.scala 264:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109947.4]
  wire  _T_1384; // @[RocketCore.scala 264:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109948.4]
  wire  _T_1385; // @[RocketCore.scala 264:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109949.4]
  wire  id_bypass_src_0_0; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109951.4]
  wire  _T_1388; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109953.4]
  wire  id_bypass_src_0_1; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109954.4]
  wire  _T_1389; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109955.4]
  wire  id_bypass_src_0_2; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109956.4]
  wire  id_bypass_src_0_3; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109958.4]
  wire  id_bypass_src_1_0; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109959.4]
  wire  _T_1392; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109961.4]
  wire  id_bypass_src_1_1; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109962.4]
  wire  _T_1393; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109963.4]
  wire  id_bypass_src_1_2; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109964.4]
  wire  id_bypass_src_1_3; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109966.4]
  wire  _T_1417; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109970.4]
  wire [31:0] _T_1418; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109971.4]
  wire  _T_1420; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109972.4]
  wire [31:0] _T_1421; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109973.4]
  wire  _T_1423; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109974.4]
  wire [31:0] _T_1424; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109975.4]
  wire [31:0] _T_1425; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109976.4]
  wire [31:0] ex_rs_0; // @[RocketCore.scala 274:14:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109977.4]
  wire  _T_1427; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109978.4]
  wire [31:0] _T_1428; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109979.4]
  wire  _T_1430; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109980.4]
  wire [31:0] _T_1431; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109981.4]
  wire  _T_1433; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109982.4]
  wire [31:0] _T_1434; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109983.4]
  wire [31:0] _T_1435; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109984.4]
  wire [31:0] ex_rs_1; // @[RocketCore.scala 274:14:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109985.4]
  wire  _T_1437; // @[RocketCore.scala 820:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109986.4]
  wire  _T_1439; // @[RocketCore.scala 820:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109987.4]
  wire  _T_1440; // @[RocketCore.scala 820:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109988.4]
  wire  _T_1441; // @[RocketCore.scala 820:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109989.4]
  wire  _T_1443; // @[RocketCore.scala 821:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109990.4]
  wire [10:0] _T_1444; // @[RocketCore.scala 821:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109991.4]
  wire [10:0] _T_1445; // @[RocketCore.scala 821:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109992.4]
  wire [10:0] _T_1446; // @[RocketCore.scala 821:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109993.4]
  wire  _T_1448; // @[RocketCore.scala 822:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109994.4]
  wire  _T_1450; // @[RocketCore.scala 822:43:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109995.4]
  wire  _T_1451; // @[RocketCore.scala 822:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109996.4]
  wire [7:0] _T_1452; // @[RocketCore.scala 822:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109997.4]
  wire [7:0] _T_1453; // @[RocketCore.scala 822:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109998.4]
  wire [7:0] _T_1454; // @[RocketCore.scala 822:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109999.4]
  wire  _T_1459; // @[RocketCore.scala 823:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110002.4]
  wire  _T_1462; // @[RocketCore.scala 824:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110003.4]
  wire  _T_1463; // @[RocketCore.scala 824:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110004.4]
  wire  _T_1464; // @[RocketCore.scala 824:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110005.4]
  wire  _T_1466; // @[RocketCore.scala 825:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110006.4]
  wire  _T_1467; // @[RocketCore.scala 825:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110007.4]
  wire  _T_1468; // @[RocketCore.scala 825:43:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110008.4]
  wire  _T_1469; // @[RocketCore.scala 825:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110009.4]
  wire  _T_1470; // @[RocketCore.scala 824:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110010.4]
  wire  _T_1471; // @[RocketCore.scala 823:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110011.4]
  wire [5:0] _T_1478; // @[RocketCore.scala 826:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110015.4]
  wire [5:0] _T_1479; // @[RocketCore.scala 826:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110016.4]
  wire  _T_1484; // @[RocketCore.scala 828:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110018.4]
  wire  _T_1487; // @[RocketCore.scala 828:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110020.4]
  wire [3:0] _T_1488; // @[RocketCore.scala 828:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110021.4]
  wire [3:0] _T_1491; // @[RocketCore.scala 829:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110023.4]
  wire [3:0] _T_1492; // @[RocketCore.scala 829:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110024.4]
  wire [3:0] _T_1493; // @[RocketCore.scala 829:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110025.4]
  wire [3:0] _T_1494; // @[RocketCore.scala 828:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110026.4]
  wire [3:0] _T_1495; // @[RocketCore.scala 827:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110027.4]
  wire  _T_1500; // @[RocketCore.scala 831:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110030.4]
  wire  _T_1504; // @[RocketCore.scala 832:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110033.4]
  wire  _T_1506; // @[RocketCore.scala 832:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110034.4]
  wire  _T_1507; // @[RocketCore.scala 831:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110035.4]
  wire  _T_1508; // @[RocketCore.scala 830:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110036.4]
  wire [9:0] _T_1509; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110037.4]
  wire [10:0] _T_1510; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110038.4]
  wire  _T_1511; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110039.4]
  wire [7:0] _T_1512; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110040.4]
  wire [8:0] _T_1513; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110041.4]
  wire [10:0] _T_1514; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110042.4]
  wire  _T_1515; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110043.4]
  wire [11:0] _T_1516; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110044.4]
  wire [20:0] _T_1517; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110045.4]
  wire [31:0] _T_1518; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110046.4]
  wire [31:0] ex_imm; // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110047.4]
  wire [31:0] _T_1521; // @[RocketCore.scala 277:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110048.4]
  wire [31:0] _T_1523; // @[RocketCore.scala 278:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110049.4]
  wire  _T_1524; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110050.4]
  wire [31:0] _T_1525; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110051.4]
  wire  _T_1526; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110052.4]
  wire [31:0] ex_op1; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110053.4]
  wire [31:0] _T_1529; // @[RocketCore.scala 280:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110054.4]
  wire [3:0] _T_1534; // @[RocketCore.scala 282:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110055.4]
  wire  _T_1535; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110056.4]
  wire [3:0] _T_1536; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110057.4]
  wire  _T_1537; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110058.4]
  wire [31:0] _T_1538; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110059.4]
  wire  _T_1539; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110060.4]
  wire [31:0] ex_op2; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110061.4]
  wire [31:0] _T_1540; // @[RocketCore.scala 287:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110068.4]
  wire [31:0] _T_1541; // @[RocketCore.scala 288:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110070.4]
  wire  _T_1542; // @[RocketCore.scala 292:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110076.4]
  wire  _T_2309; // @[RocketCore.scala 619:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110867.4]
  wire  _T_2310; // @[RocketCore.scala 619:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110868.4]
  wire  _T_2311; // @[RocketCore.scala 619:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110869.4]
  wire  _T_2141; // @[RocketCore.scala 557:55:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110697.4]
  wire  _T_2142; // @[RocketCore.scala 557:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110698.4]
  wire  _T_2200; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110751.4]
  wire  _T_2201; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110752.4]
  wire  _T_2144; // @[RocketCore.scala 558:55:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110699.4]
  wire  _T_2145; // @[RocketCore.scala 558:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110700.4]
  wire  _T_2202; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110753.4]
  wire  _T_2203; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110754.4]
  wire  _T_2206; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110757.4]
  wire  _T_2147; // @[RocketCore.scala 559:55:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110701.4]
  wire  _T_2148; // @[RocketCore.scala 559:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110702.4]
  wire  _T_2204; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110755.4]
  wire  _T_2205; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110756.4]
  wire  _T_2207; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110758.4]
  wire  data_hazard_ex; // @[RocketCore.scala 577:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110759.4]
  wire  _T_2195; // @[RocketCore.scala 576:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110745.4]
  wire  _T_2196; // @[RocketCore.scala 576:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110746.4]
  wire  _T_2197; // @[RocketCore.scala 576:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110747.4]
  wire  _T_2198; // @[RocketCore.scala 576:79:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110748.4]
  wire  _T_2199; // @[RocketCore.scala 576:94:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110749.4]
  wire  ex_cannot_bypass; // @[RocketCore.scala 576:108:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110750.4]
  wire  _T_2219; // @[RocketCore.scala 579:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110772.4]
  wire  id_ex_hazard; // @[RocketCore.scala 579:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110774.4]
  wire  _T_2228; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110782.4]
  wire  _T_2229; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110783.4]
  wire  _T_2230; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110784.4]
  wire  _T_2231; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110785.4]
  wire  _T_2234; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110788.4]
  wire  _T_2232; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110786.4]
  wire  _T_2233; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110787.4]
  wire  _T_2235; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110789.4]
  wire  data_hazard_mem; // @[RocketCore.scala 586:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110790.4]
  wire  _T_2223; // @[RocketCore.scala 585:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110776.4]
  wire  _T_2224; // @[RocketCore.scala 585:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110777.4]
  wire  _T_2225; // @[RocketCore.scala 585:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110778.4]
  wire  _T_2226; // @[RocketCore.scala 585:84:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110779.4]
  wire  _T_2227; // @[RocketCore.scala 585:100:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110780.4]
  wire  mem_cannot_bypass; // @[RocketCore.scala 585:115:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110781.4]
  wire  _T_2247; // @[RocketCore.scala 588:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110803.4]
  wire  id_mem_hazard; // @[RocketCore.scala 588:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110805.4]
  wire  _T_2285; // @[RocketCore.scala 611:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110845.4]
  wire  _T_2251; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110809.4]
  wire  _T_2252; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110810.4]
  wire  _T_2253; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110811.4]
  wire  _T_2254; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110812.4]
  wire  _T_2257; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110815.4]
  wire  _T_2255; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110813.4]
  wire  _T_2256; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110814.4]
  wire  _T_2258; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110816.4]
  wire  data_hazard_wb; // @[RocketCore.scala 592:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110817.4]
  wire  _T_1622; // @[RocketCore.scala 357:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110187.4]
  wire  wb_dcache_miss; // @[RocketCore.scala 357:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110188.4]
  wire  _T_2099; // @[RocketCore.scala 492:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110609.4]
  wire  wb_set_sboard; // @[RocketCore.scala 492:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110610.4]
  wire  _T_2270; // @[RocketCore.scala 594:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110830.4]
  wire  id_wb_hazard; // @[RocketCore.scala 594:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110832.4]
  wire  _T_2286; // @[RocketCore.scala 611:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110846.4]
  wire [30:0] _T_2152; // @[RocketCore.scala 785:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110704.4]
  wire [31:0] _GEN_230; // @[RocketCore.scala 785:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110705.4]
  wire [31:0] _T_2153; // @[RocketCore.scala 785:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110705.4]
  wire [31:0] _T_2162; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110714.4]
  wire  _T_2163; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110715.4]
  wire  dmem_resp_valid; // @[RocketCore.scala 502:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110626.4]
  wire  dmem_resp_replay; // @[RocketCore.scala 503:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110627.4]
  wire  _T_2106; // @[RocketCore.scala 499:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110620.4]
  wire  dmem_resp_xpu; // @[RocketCore.scala 499:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110622.4]
  wire  _T_2116; // @[RocketCore.scala 518:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110640.4]
  wire  _T_2114; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110636.4]
  wire  ll_wen; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110641.4]
  wire [4:0] dmem_resp_waddr; // @[RocketCore.scala 501:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110625.4]
  wire [4:0] ll_waddr; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110641.4]
  wire  _T_2164; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110716.4]
  wire  _T_2165; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110717.4]
  wire  _T_2167; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110718.4]
  wire  _T_2168; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110719.4]
  wire  _T_2169; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110720.4]
  wire [31:0] _T_2170; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110721.4]
  wire  _T_2171; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110722.4]
  wire  _T_2172; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110723.4]
  wire  _T_2173; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110724.4]
  wire  _T_2175; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110725.4]
  wire  _T_2176; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110726.4]
  wire  _T_2177; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110727.4]
  wire  _T_2186; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110735.4]
  wire [31:0] _T_2178; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110728.4]
  wire  _T_2179; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110729.4]
  wire  _T_2180; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110730.4]
  wire  _T_2181; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110731.4]
  wire  _T_2183; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110732.4]
  wire  _T_2184; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110733.4]
  wire  _T_2185; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110734.4]
  wire  id_sboard_hazard; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110736.4]
  wire  _T_2287; // @[RocketCore.scala 611:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110847.4]
  wire  _T_2288; // @[RocketCore.scala 612:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110848.4]
  wire  _T_2289; // @[RocketCore.scala 612:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110849.4]
  wire  _T_2290; // @[RocketCore.scala 612:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110850.4]
  wire  _T_2291; // @[RocketCore.scala 611:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110851.4]
  wire  _T_2294; // @[RocketCore.scala 614:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110854.4]
  wire  _T_2295; // @[RocketCore.scala 613:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110855.4]
  wire  wb_wxd; // @[RocketCore.scala 491:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110608.4]
  wire  _T_2299; // @[RocketCore.scala 616:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110858.4]
  wire  _T_2300; // @[RocketCore.scala 616:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110859.4]
  wire  _T_2301; // @[RocketCore.scala 616:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110860.4]
  wire  _T_2303; // @[RocketCore.scala 616:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110861.4]
  wire  _T_2304; // @[RocketCore.scala 616:75:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110862.4]
  wire  _T_2305; // @[RocketCore.scala 616:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110863.4]
  wire  _T_2306; // @[RocketCore.scala 615:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110864.4]
  wire  _T_2307; // @[RocketCore.scala 616:96:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110865.4]
  wire  ctrl_stalld; // @[RocketCore.scala 617:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110866.4]
  wire  _T_2312; // @[RocketCore.scala 619:89:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110870.4]
  wire  ctrl_killd; // @[RocketCore.scala 619:104:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110871.4]
  wire  _T_1544; // @[RocketCore.scala 299:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110083.4]
  wire  _T_1546; // @[RocketCore.scala 300:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110085.4]
  wire  _T_1547; // @[RocketCore.scala 300:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110086.4]
  wire  _T_1548; // @[RocketCore.scala 300:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110087.4]
  wire  _T_1551; // @[RocketCore.scala 301:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110090.4]
  wire  _T_1555; // @[RocketCore.scala 302:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110094.4]
  wire  _GEN_1; // @[RocketCore.scala 308:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110101.6]
  wire [1:0] _T_1569; // @[RocketCore.scala 319:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110116.8]
  wire  _T_1571; // @[RocketCore.scala 319:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110117.8]
  wire  _T_1572; // @[RocketCore.scala 319:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110118.8]
  wire [1:0] _GEN_5; // @[RocketCore.scala 319:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110119.8]
  wire [3:0] _GEN_7; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110104.6]
  wire [1:0] _GEN_9; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110104.6]
  wire [1:0] _GEN_10; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110104.6]
  wire  _T_1575; // @[RocketCore.scala 324:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110124.6]
  wire [1:0] _T_1580; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110130.8]
  wire [2:0] _GEN_12; // @[RocketCore.scala 326:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110127.6]
  wire  _T_1581; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110133.6]
  wire  _T_1582; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110134.6]
  wire  _T_1583; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110135.6]
  wire [1:0] _T_1588; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110136.6]
  wire [1:0] _T_1589; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110137.6]
  wire [1:0] _T_1590; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110138.6]
  wire  _T_1592; // @[RocketCore.scala 335:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110141.6]
  wire  _T_1593; // @[RocketCore.scala 335:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110142.6]
  wire  _T_2120; // @[RocketCore.scala 526:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110646.4]
  wire  _T_2121; // @[RocketCore.scala 526:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110647.4]
  wire  _T_2123; // @[RocketCore.scala 526:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110648.4]
  wire  wb_valid; // @[RocketCore.scala 526:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110649.4]
  wire  wb_wen; // @[RocketCore.scala 527:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110650.4]
  wire  rf_wen; // @[RocketCore.scala 528:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110651.4]
  wire [4:0] rf_waddr; // @[RocketCore.scala 529:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110652.4]
  wire  _T_2130; // @[RocketCore.scala 810:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110659.6]
  wire  _T_2134; // @[RocketCore.scala 813:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110665.8]
  wire  _T_2124; // @[RocketCore.scala 530:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110653.4]
  wire [31:0] ll_wdata; // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110630.4]
  wire  _T_2126; // @[RocketCore.scala 532:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110654.4]
  wire [31:0] _T_2127; // @[RocketCore.scala 532:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110655.4]
  wire [31:0] _T_2128; // @[RocketCore.scala 531:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110656.4]
  wire [31:0] rf_wdata; // @[RocketCore.scala 530:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110657.4]
  wire [31:0] _GEN_206; // @[RocketCore.scala 813:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110666.8]
  wire [31:0] _GEN_212; // @[RocketCore.scala 810:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110660.6]
  wire [31:0] id_rs_0; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110658.4]
  wire [1:0] _T_1594; // @[RocketCore.scala 336:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110144.8]
  wire [29:0] _T_1595; // @[RocketCore.scala 337:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110146.8]
  wire [1:0] _GEN_13; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110143.6]
  wire [29:0] _GEN_14; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110143.6]
  wire  _T_1596; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110149.6]
  wire  _T_1597; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110150.6]
  wire  _T_1598; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110151.6]
  wire [1:0] _T_1603; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110152.6]
  wire [1:0] _T_1604; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110153.6]
  wire [1:0] _T_1605; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110154.6]
  wire  _T_1607; // @[RocketCore.scala 335:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110157.6]
  wire  _T_1608; // @[RocketCore.scala 335:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110158.6]
  wire  _T_2135; // @[RocketCore.scala 813:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110669.8]
  wire [31:0] _GEN_207; // @[RocketCore.scala 813:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110670.8]
  wire [31:0] _GEN_213; // @[RocketCore.scala 810:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110660.6]
  wire [31:0] id_rs_1; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110658.4]
  wire [1:0] _T_1609; // @[RocketCore.scala 336:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110160.8]
  wire [29:0] _T_1610; // @[RocketCore.scala 337:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110162.8]
  wire [1:0] _GEN_15; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110159.6]
  wire [29:0] _GEN_16; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110159.6]
  wire [31:0] _T_1612; // @[RocketCore.scala 341:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110167.8]
  wire [1:0] _T_1614; // @[RocketCore.scala 343:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110169.8]
  wire [29:0] _T_1615; // @[RocketCore.scala 344:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110171.8]
  wire  _GEN_17; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110165.6]
  wire [1:0] _GEN_18; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110165.6]
  wire [29:0] _GEN_19; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110165.6]
  wire  _GEN_21; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_22; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_23; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_24; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_25; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_26; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [1:0] _GEN_28; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [1:0] _GEN_29; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [2:0] _GEN_30; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [3:0] _GEN_32; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_33; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [4:0] _GEN_34; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [2:0] _GEN_35; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_40; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_41; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [2:0] _GEN_42; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_43; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_47; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_48; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_49; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _T_2249; // @[RocketCore.scala 589:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110806.4]
  wire  id_load_use; // @[RocketCore.scala 589:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110807.4]
  wire  _GEN_50; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_51; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [1:0] _GEN_52; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [29:0] _GEN_53; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _GEN_54; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [1:0] _GEN_55; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire [29:0] _GEN_56; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  wire  _T_1618; // @[RocketCore.scala 347:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110176.4]
  wire  _T_1619; // @[RocketCore.scala 347:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110177.4]
  wire [31:0] _GEN_57; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110178.4]
  wire [31:0] _GEN_58; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110178.4]
  wire [31:0] _GEN_60; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110178.4]
  wire  _T_1620; // @[RocketCore.scala 356:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110185.4]
  wire  ex_pc_valid; // @[RocketCore.scala 356:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110186.4]
  wire  _T_1624; // @[RocketCore.scala 358:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110189.4]
  wire  _T_1625; // @[RocketCore.scala 358:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110190.4]
  wire  _T_1627; // @[RocketCore.scala 359:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110191.4]
  wire  _T_1628; // @[RocketCore.scala 359:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110192.4]
  wire  replay_ex_structural; // @[RocketCore.scala 358:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110193.4]
  wire  replay_ex_load_use; // @[RocketCore.scala 360:43:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110194.4]
  wire  _T_1629; // @[RocketCore.scala 361:75:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110195.4]
  wire  _T_1630; // @[RocketCore.scala 361:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110196.4]
  wire  replay_ex; // @[RocketCore.scala 361:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110197.4]
  wire  _T_1631; // @[RocketCore.scala 362:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110198.4]
  wire  _T_1633; // @[RocketCore.scala 362:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110199.4]
  wire  ctrl_killx; // @[RocketCore.scala 362:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110200.4]
  wire  _T_1635; // @[RocketCore.scala 364:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110201.4]
  wire  _T_1649; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110208.4]
  wire  _T_1650; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110209.4]
  wire  _T_1651; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110210.4]
  wire  _T_1652; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110211.4]
  wire  _T_1655; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110213.4]
  wire  _T_1656; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110214.4]
  wire  _T_1657; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110215.4]
  wire  ex_slow_bypass; // @[RocketCore.scala 364:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110216.4]
  wire  ex_xcpt; // @[RocketCore.scala 368:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110220.4]
  wire  _T_1677; // @[RocketCore.scala 374:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110231.4]
  wire  mem_pc_valid; // @[RocketCore.scala 374:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110232.4]
  wire [31:0] _T_1678; // @[RocketCore.scala 375:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110233.4]
  wire  _T_1684; // @[RocketCore.scala 820:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110236.4]
  wire  _T_1685; // @[RocketCore.scala 820:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110237.4]
  wire [10:0] _T_1691; // @[RocketCore.scala 821:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110242.4]
  wire [7:0] _T_1697; // @[RocketCore.scala 822:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110246.4]
  wire [7:0] _T_1698; // @[RocketCore.scala 822:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110247.4]
  wire [7:0] _T_1699; // @[RocketCore.scala 822:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110248.4]
  wire  _T_1708; // @[RocketCore.scala 824:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110253.4]
  wire  _T_1709; // @[RocketCore.scala 824:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110254.4]
  wire  _T_1712; // @[RocketCore.scala 825:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110256.4]
  wire  _T_1713; // @[RocketCore.scala 825:43:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110257.4]
  wire [5:0] _T_1723; // @[RocketCore.scala 826:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110264.4]
  wire [3:0] _T_1733; // @[RocketCore.scala 828:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110270.4]
  wire [3:0] _T_1737; // @[RocketCore.scala 829:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110273.4]
  wire [9:0] _T_1754; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110286.4]
  wire [10:0] _T_1755; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110287.4]
  wire  _T_1756; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110288.4]
  wire [7:0] _T_1757; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110289.4]
  wire [8:0] _T_1758; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110290.4]
  wire [10:0] _T_1759; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110291.4]
  wire  _T_1760; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110292.4]
  wire [11:0] _T_1761; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110293.4]
  wire [20:0] _T_1762; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110294.4]
  wire [31:0] _T_1763; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110295.4]
  wire [31:0] _T_1764; // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110296.4]
  wire [9:0] _T_1839; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110348.4]
  wire [10:0] _T_1840; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110349.4]
  wire  _T_1841; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110350.4]
  wire [7:0] _T_1842; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110351.4]
  wire [8:0] _T_1843; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110352.4]
  wire [20:0] _T_1847; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110356.4]
  wire [31:0] _T_1848; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110357.4]
  wire [31:0] _T_1849; // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110358.4]
  wire [3:0] _T_1852; // @[RocketCore.scala 378:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110359.4]
  wire [31:0] _T_1853; // @[RocketCore.scala 377:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110360.4]
  wire [31:0] _T_1854; // @[RocketCore.scala 376:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110361.4]
  wire [32:0] _T_1855; // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110362.4]
  wire [31:0] _T_1856; // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110363.4]
  wire [31:0] mem_br_target; // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110364.4]
  wire  _T_1857; // @[RocketCore.scala 379:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110365.4]
  wire [31:0] _T_1858; // @[RocketCore.scala 379:106:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110366.4]
  wire [31:0] _T_1859; // @[RocketCore.scala 379:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110367.4]
  wire [31:0] _T_1861; // @[RocketCore.scala 379:129:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110368.4]
  wire [31:0] _T_1862; // @[RocketCore.scala 379:129:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110369.4]
  wire [31:0] mem_npc; // @[RocketCore.scala 379:141:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110370.4]
  wire  _T_1871; // @[RocketCore.scala 383:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110378.4]
  wire  _T_1872; // @[RocketCore.scala 383:56:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110379.4]
  wire  _T_1874; // @[RocketCore.scala 383:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110380.4]
  wire  mem_npc_misaligned; // @[RocketCore.scala 383:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110381.4]
  wire  _T_1876; // @[RocketCore.scala 384:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110382.4]
  wire  _T_1877; // @[RocketCore.scala 384:59:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110383.4]
  wire  _T_1878; // @[RocketCore.scala 384:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110384.4]
  wire [31:0] _T_1880; // @[RocketCore.scala 384:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110386.4]
  wire [31:0] mem_int_wdata; // @[RocketCore.scala 384:119:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110387.4]
  wire  _T_1890; // @[RocketCore.scala 391:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110399.4]
  wire  _T_1893; // @[RocketCore.scala 392:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110402.4]
  wire  _T_1896; // @[RocketCore.scala 393:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110405.4]
  wire  _T_1899; // @[RocketCore.scala 394:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110408.4]
  wire  _T_1900; // @[RocketCore.scala 398:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110410.4]
  wire  _T_1903; // @[Consts.scala 93:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110418.8]
  wire  _T_1905; // @[Consts.scala 93:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110419.8]
  wire  _T_1906; // @[Consts.scala 93:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110420.8]
  wire  _T_1909; // @[Consts.scala 93:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110422.8]
  wire  _T_1914; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110423.8]
  wire  _T_1915; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110424.8]
  wire  _T_1916; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110425.8]
  wire  _T_1917; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110426.8]
  wire  _T_1918; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110427.8]
  wire  _T_1919; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110428.8]
  wire  _T_1920; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110429.8]
  wire  _T_1926; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110430.8]
  wire  _T_1927; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110431.8]
  wire  _T_1928; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110432.8]
  wire  _T_1929; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110433.8]
  wire  _T_1930; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110434.8]
  wire  _T_1931; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110435.8]
  wire  _T_1932; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110436.8]
  wire  _T_1933; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110437.8]
  wire  _T_1934; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110438.8]
  wire  _T_1935; // @[Consts.scala 91:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110439.8]
  wire  _T_1936; // @[Consts.scala 93:75:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110440.8]
  wire  _T_1937; // @[RocketCore.scala 403:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110441.8]
  wire  _T_1939; // @[Consts.scala 94:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110443.8]
  wire  _T_1941; // @[Consts.scala 94:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110444.8]
  wire  _T_1942; // @[Consts.scala 94:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110445.8]
  wire  _T_1945; // @[Consts.scala 94:59:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110447.8]
  wire  _T_1972; // @[Consts.scala 94:76:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110465.8]
  wire  _T_1973; // @[RocketCore.scala 404:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110466.8]
  wire  _T_1974; // @[RocketCore.scala 417:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110478.8]
  wire  _T_1976; // @[RocketCore.scala 417:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110480.8]
  wire [2:0] _T_1978; // @[RocketCore.scala 418:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110482.10]
  wire [1:0] _T_1980; // @[AMOALU.scala 10:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110483.10]
  wire  _T_1982; // @[AMOALU.scala 26:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110484.10]
  wire [7:0] _T_1983; // @[AMOALU.scala 26:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110485.10]
  wire [15:0] _T_1984; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110486.10]
  wire [31:0] _T_1985; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110487.10]
  wire  _T_1987; // @[AMOALU.scala 26:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110488.10]
  wire [15:0] _T_1988; // @[AMOALU.scala 26:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110489.10]
  wire [31:0] _T_1989; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110490.10]
  wire [31:0] _T_1990; // @[AMOALU.scala 26:13:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110491.10]
  wire [31:0] _T_1991; // @[AMOALU.scala 26:13:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110492.10]
  wire [31:0] _GEN_69; // @[RocketCore.scala 417:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110481.8]
  wire  _T_1992; // @[RocketCore.scala 421:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110495.8]
  wire  _GEN_70; // @[RocketCore.scala 421:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110496.8]
  wire  _GEN_71; // @[RocketCore.scala 421:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110496.8]
  wire  _GEN_73; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_74; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_75; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_76; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_77; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_85; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_92; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_93; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire [2:0] _GEN_94; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_95; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_99; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_100; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_101; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_102; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_111; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_112; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire [31:0] _GEN_113; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire [31:0] _GEN_114; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire [31:0] _GEN_116; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire [31:0] _GEN_117; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_118; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire [31:0] _GEN_119; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  wire  _GEN_120; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_122; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_123; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_124; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_125; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_126; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_134; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_141; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_142; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire [2:0] _GEN_143; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_144; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_148; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_149; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_150; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_159; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_160; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire [31:0] _GEN_161; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire [31:0] _GEN_162; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire [31:0] _GEN_164; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire [31:0] _GEN_165; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _GEN_166; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire [31:0] _GEN_167; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  wire  _T_1995; // @[RocketCore.scala 428:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110501.4]
  wire  _T_1996; // @[RocketCore.scala 428:75:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110502.4]
  wire  mem_breakpoint; // @[RocketCore.scala 428:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110503.4]
  wire  _T_1997; // @[RocketCore.scala 429:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110504.4]
  wire  _T_1998; // @[RocketCore.scala 429:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110505.4]
  wire  mem_debug_breakpoint; // @[RocketCore.scala 429:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110506.4]
  wire  _T_2002; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110507.4]
  wire  mem_new_xcpt; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110508.4]
  wire [1:0] _T_2003; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110509.4]
  wire [3:0] mem_new_cause; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110510.4]
  wire  _T_2004; // @[RocketCore.scala 436:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110511.4]
  wire  _T_2005; // @[RocketCore.scala 437:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110512.4]
  wire  mem_xcpt; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110513.4]
  wire [31:0] mem_cause; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110514.4]
  wire  dcache_kill_mem; // @[RocketCore.scala 446:55:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110528.4]
  wire  replay_mem; // @[RocketCore.scala 448:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110531.4]
  wire  _T_2027; // @[RocketCore.scala 449:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110533.4]
  wire  _T_2028; // @[RocketCore.scala 449:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110534.4]
  wire  _T_2030; // @[RocketCore.scala 449:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110535.4]
  wire  killm_common; // @[RocketCore.scala 449:68:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110536.4]
  wire  _T_2031; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110537.4]
  wire  _T_2034; // @[RocketCore.scala 450:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110540.4]
  wire  ctrl_killm; // @[RocketCore.scala 451:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110542.4]
  wire  _T_2037; // @[RocketCore.scala 454:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110544.4]
  wire  _T_2039; // @[RocketCore.scala 455:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110546.4]
  wire  _T_2040; // @[RocketCore.scala 455:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110547.4]
  wire  _T_2043; // @[RocketCore.scala 456:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110550.4]
  wire  _T_2046; // @[RocketCore.scala 457:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110553.4]
  wire  _T_2049; // @[RocketCore.scala 461:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110559.6]
  wire  _T_2050; // @[RocketCore.scala 461:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110560.6]
  wire [31:0] _T_2051; // @[RocketCore.scala 461:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110561.6]
  wire  _GEN_171; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire  _GEN_182; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire  _GEN_189; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire  _GEN_190; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire [2:0] _GEN_191; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire  _GEN_192; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire [31:0] _GEN_197; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire [31:0] _GEN_199; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire [31:0] _GEN_200; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire [31:0] _GEN_202; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  wire [2:0] _T_2076; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110590.4]
  wire [3:0] _T_2077; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110591.4]
  wire [3:0] _T_2078; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110592.4]
  wire [3:0] _T_2079; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110593.4]
  wire [3:0] _T_2080; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110594.4]
  wire [31:0] wb_cause; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110595.4]
  wire  _GEN_203; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110641.4]
  wire [4:0] _T_2132; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110662.8]
  wire  _GEN_216; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110658.4]
  wire [11:0] _T_2136; // @[RocketCore.scala 537:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110675.4]
  wire [11:0] _T_2137; // @[RocketCore.scala 552:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110691.4]
  wire [2:0] _T_2139; // @[RocketCore.scala 553:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110693.4]
  wire [31:0] _T_2156; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110706.4]
  wire [31:0] _T_2158; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110707.4]
  wire [31:0] _T_2159; // @[RocketCore.scala 780:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110708.4]
  wire [31:0] _T_2160; // @[RocketCore.scala 780:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110709.4]
  wire [31:0] _GEN_220; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110711.4]
  wire  _T_2187; // @[RocketCore.scala 573:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110737.4]
  wire [31:0] _T_2189; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110738.4]
  wire [31:0] _T_2191; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110739.4]
  wire [31:0] _T_2192; // @[RocketCore.scala 779:60:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110740.4]
  wire  _T_2193; // @[RocketCore.scala 791:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110741.4]
  wire [31:0] _GEN_221; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110742.4]
  wire  _T_2275; // @[RocketCore.scala 606:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110835.4]
  wire  _T_2276; // @[RocketCore.scala 606:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110836.4]
  wire  _T_2316; // @[RocketCore.scala 624:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110876.4]
  wire [31:0] _T_2317; // @[RocketCore.scala 625:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110877.4]
  wire [31:0] _T_2318; // @[RocketCore.scala 624:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110878.4]
  wire  _T_2319; // @[RocketCore.scala 627:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110880.4]
  wire  _T_2321; // @[RocketCore.scala 627:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110881.4]
  wire  _T_2322; // @[RocketCore.scala 627:59:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110882.4]
  wire  _T_2327; // @[RocketCore.scala 635:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110893.4]
  wire  _T_2364; // @[RocketCore.scala 666:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110942.4]
  wire [5:0] ex_dcache_tag; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110944.4]
  wire [31:0] _T_2366; // @[RocketCore.scala 675:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110951.4]
  wire  _T_2367; // @[RocketCore.scala 676:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110953.4]
  wire [4:0] _T_2385; // @[RocketCore.scala 681:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110978.4]
  wire [4:0] _T_2386; // @[RocketCore.scala 681:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110980.4]
  wire [31:0] _T_2392; // @[RocketCore.scala 742:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110991.4]
  wire  _T_2394; // @[RocketCore.scala 742:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110992.4]
  wire  _T_2395; // @[RocketCore.scala 742:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110993.4]
  wire [31:0] _T_2396; // @[RocketCore.scala 743:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110994.4]
  wire  _T_2399; // @[RocketCore.scala 744:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110996.4]
  wire  _T_2400; // @[RocketCore.scala 744:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110997.4]
  wire [4:0] _T_2402; // @[RocketCore.scala 744:13:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110998.4]
  wire  _T_2415; // @[RocketCore.scala 741:11:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111010.4]
  wire  _T_2417; // @[RocketCore.scala 753:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111016.4]
  wire  _T_2418; // @[RocketCore.scala 754:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111018.6]
  wire  _T_2420; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111020.6]
  wire  _T_2422; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111021.6]
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_IBUF ibuf ( // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109402.4]
    .clock(ibuf_clock),
    .io_imem_ready(ibuf_io_imem_ready),
    .io_imem_valid(ibuf_io_imem_valid),
    .io_imem_bits_btb_taken(ibuf_io_imem_bits_btb_taken),
    .io_imem_bits_btb_bridx(ibuf_io_imem_bits_btb_bridx),
    .io_imem_bits_pc(ibuf_io_imem_bits_pc),
    .io_imem_bits_data(ibuf_io_imem_bits_data),
    .io_imem_bits_xcpt_pf_inst(ibuf_io_imem_bits_xcpt_pf_inst),
    .io_imem_bits_xcpt_ae_inst(ibuf_io_imem_bits_xcpt_ae_inst),
    .io_imem_bits_replay(ibuf_io_imem_bits_replay),
    .io_pc(ibuf_io_pc),
    .io_inst_0_ready(ibuf_io_inst_0_ready),
    .io_inst_0_valid(ibuf_io_inst_0_valid),
    .io_inst_0_bits_xcpt0_pf_inst(ibuf_io_inst_0_bits_xcpt0_pf_inst),
    .io_inst_0_bits_xcpt0_ae_inst(ibuf_io_inst_0_bits_xcpt0_ae_inst),
    .io_inst_0_bits_replay(ibuf_io_inst_0_bits_replay),
    .io_inst_0_bits_inst_bits(ibuf_io_inst_0_bits_inst_bits),
    .io_inst_0_bits_inst_rd(ibuf_io_inst_0_bits_inst_rd),
    .io_inst_0_bits_inst_rs1(ibuf_io_inst_0_bits_inst_rs1),
    .io_inst_0_bits_inst_rs2(ibuf_io_inst_0_bits_inst_rs2),
    .io_inst_0_bits_raw(ibuf_io_inst_0_bits_raw)
  );
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_CSRFILE csr ( //#
    .clock(csr_clock),
    .reset(csr_reset),
    .io_interrupts_debug(csr_io_interrupts_debug),
    .io_interrupts_mtip(csr_io_interrupts_mtip),
    .io_interrupts_msip(csr_io_interrupts_msip),
    .io_interrupts_meip(csr_io_interrupts_meip),
	.io_interrupts_ided(csr_io_interrupts_ided), //#
    .io_interrupts_dded(csr_io_interrupts_dded), //#
	.io_rw_addr(csr_io_rw_addr),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_decode_0_csr(csr_io_decode_0_csr),
    .io_decode_0_read_illegal(csr_io_decode_0_read_illegal),
    .io_decode_0_write_illegal(csr_io_decode_0_write_illegal),
    .io_decode_0_write_flush(csr_io_decode_0_write_flush),
    .io_csr_stall(csr_io_csr_stall),
    .io_eret(csr_io_eret),
    .io_singleStep(csr_io_singleStep),
    .io_status_debug(csr_io_status_debug),
    .io_status_isa(csr_io_status_isa),
    .io_status_dprv(csr_io_status_dprv),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero2(csr_io_status_zero2),
    .io_status_sxl(csr_io_status_sxl),
    .io_status_uxl(csr_io_status_uxl),
    .io_status_sd_rv32(csr_io_status_sd_rv32),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_hpp(csr_io_status_hpp),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_cause(csr_io_cause),
    .io_pc(csr_io_pc),
    .io_badaddr(csr_io_badaddr),
    .io_time(csr_io_time),
    .io_interrupt(csr_io_interrupt),
    .io_interrupt_cause(csr_io_interrupt_cause),
    .io_bp_0_control_action(csr_io_bp_0_control_action),
    .io_bp_0_control_chain(csr_io_bp_0_control_chain),
    .io_bp_0_control_tmatch(csr_io_bp_0_control_tmatch),
    .io_bp_0_control_x(csr_io_bp_0_control_x),
    .io_bp_0_control_w(csr_io_bp_0_control_w),
    .io_bp_0_control_r(csr_io_bp_0_control_r),
    .io_bp_0_address(csr_io_bp_0_address),
    .io_bp_1_control_action(csr_io_bp_1_control_action),
    .io_bp_1_control_tmatch(csr_io_bp_1_control_tmatch),
    .io_bp_1_control_x(csr_io_bp_1_control_x),
    .io_bp_1_control_w(csr_io_bp_1_control_w),
    .io_bp_1_control_r(csr_io_bp_1_control_r),
    .io_bp_1_address(csr_io_bp_1_address),
    .io_inst_0(csr_io_inst_0),
    .io_trace_0_valid(csr_io_trace_0_valid),
    .io_trace_0_iaddr(csr_io_trace_0_iaddr),
    .io_trace_0_insn(csr_io_trace_0_insn),
    .io_trace_0_exception(csr_io_trace_0_exception),
	.io_cpu_halted(io_mpu_halted) //#
  );
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_BREAKPOINT_UNIT bpu ( // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109911.4]
    .io_status_debug(bpu_io_status_debug),
    .io_bp_0_control_action(bpu_io_bp_0_control_action),
    .io_bp_0_control_chain(bpu_io_bp_0_control_chain),
    .io_bp_0_control_tmatch(bpu_io_bp_0_control_tmatch),
    .io_bp_0_control_x(bpu_io_bp_0_control_x),
    .io_bp_0_control_w(bpu_io_bp_0_control_w),
    .io_bp_0_control_r(bpu_io_bp_0_control_r),
    .io_bp_0_address(bpu_io_bp_0_address),
    .io_bp_1_control_action(bpu_io_bp_1_control_action),
    .io_bp_1_control_tmatch(bpu_io_bp_1_control_tmatch),
    .io_bp_1_control_x(bpu_io_bp_1_control_x),
    .io_bp_1_control_w(bpu_io_bp_1_control_w),
    .io_bp_1_control_r(bpu_io_bp_1_control_r),
    .io_bp_1_address(bpu_io_bp_1_address),
    .io_pc(bpu_io_pc),
    .io_ea(bpu_io_ea),
    .io_xcpt_if(bpu_io_xcpt_if),
    .io_xcpt_ld(bpu_io_xcpt_ld),
    .io_xcpt_st(bpu_io_xcpt_st),
    .io_debug_if(bpu_io_debug_if),
    .io_debug_ld(bpu_io_debug_ld),
    .io_debug_st(bpu_io_debug_st)
  );
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_ALU alu ( // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110062.4]
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_MUL_DIV div ( // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110072.4]
    .clock(div_clock),
    .reset(div_reset),
    .io_req_ready(div_io_req_ready),
    .io_req_valid(div_io_req_valid),
    .io_req_bits_fn(div_io_req_bits_fn),
    .io_req_bits_in1(div_io_req_bits_in1),
    .io_req_bits_in2(div_io_req_bits_in2),
    .io_req_bits_tag(div_io_req_bits_tag),
    .io_kill(div_io_kill),
    .io_resp_ready(div_io_resp_ready),
    .io_resp_valid(div_io_resp_valid),
    .io_resp_bits_data(div_io_resp_bits_data),
    .io_resp_bits_tag(div_io_resp_bits_tag)
  );
  MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB_PLUSARG_READER #(.FORMAT("max-core-cycles=%d"), .DEFAULT(0)) MIV_RV32IMA_L1_AHB_PLUSARG_READER ( // @[PlusArg.scala 24:11:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111014.4]
    .out(plusarg_reader_out)
  );
  assign _T_1151__T_1160_addr = _T_1159;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1151__T_1160_data = _T_1151[_T_1151__T_1160_addr]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  `else
  assign _T_1151__T_1160_data = _T_1151__T_1160_addr >= 5'h1f ? _RAND_69[31:0] : _T_1151[_T_1151__T_1160_addr]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1151__T_1170_addr = _T_1169;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1151__T_1170_data = _T_1151[_T_1151__T_1170_addr]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  `else
  assign _T_1151__T_1170_data = _T_1151__T_1170_addr >= 5'h1f ? _RAND_70[31:0] : _T_1151[_T_1151__T_1170_addr]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1151__T_2133_data = rf_wdata;
  assign _T_1151__T_2133_addr = _T_2132;
  assign _T_1151__T_2133_mask = _GEN_216;
  assign _T_1151__T_2133_en = _GEN_216;
  assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay; // @[RocketCore.scala 493:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110611.4]
  assign replay_wb_rocc = wb_reg_valid & wb_ctrl_rocc; // @[RocketCore.scala 494:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110612.4]
  assign replay_wb = replay_wb_common | replay_wb_rocc; // @[RocketCore.scala 495:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110615.4]
  assign _T_2053 = wb_reg_valid & wb_ctrl_mem; // @[RocketCore.scala 473:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110572.4]
  assign _T_2054 = _T_2053 & io_dmem_s2_xcpt_ma_st; // @[RocketCore.scala 473:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110573.4]
  assign _T_2071 = wb_reg_xcpt | _T_2054; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110584.4]
  assign _T_2057 = _T_2053 & io_dmem_s2_xcpt_ma_ld; // @[RocketCore.scala 474:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110575.4]
  assign _T_2072 = _T_2071 | _T_2057; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110585.4]
  assign _T_2060 = _T_2053 & io_dmem_s2_xcpt_pf_st; // @[RocketCore.scala 475:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110577.4]
  assign _T_2073 = _T_2072 | _T_2060; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110586.4]
  assign _T_2063 = _T_2053 & io_dmem_s2_xcpt_pf_ld; // @[RocketCore.scala 476:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110579.4]
  assign _T_2074 = _T_2073 | _T_2063; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110587.4]
  assign _T_2066 = _T_2053 & io_dmem_s2_xcpt_ae_st; // @[RocketCore.scala 477:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110581.4]
  assign _T_2075 = _T_2074 | _T_2066; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110588.4]
  assign _T_2069 = _T_2053 & io_dmem_s2_xcpt_ae_ld; // @[RocketCore.scala 478:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110583.4]
  assign wb_xcpt = _T_2075 | _T_2069; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110589.4]
  assign _T_2103 = replay_wb | wb_xcpt; // @[RocketCore.scala 496:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110616.4]
  assign _T_2104 = _T_2103 | csr_io_eret; // @[RocketCore.scala 496:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110617.4]
  assign take_pc_wb = _T_2104 | wb_reg_flush_pipe; // @[RocketCore.scala 496:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110618.4]
  assign _T_1882 = mem_ctrl_branch & mem_br_taken; // @[RocketCore.scala 386:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110390.4]
  assign _T_1883 = _T_1882 | mem_ctrl_jalr; // @[RocketCore.scala 386:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110391.4]
  assign mem_cfi_taken = _T_1883 | mem_ctrl_jal; // @[RocketCore.scala 386:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110392.4]
  assign _T_1887 = mem_cfi_taken | mem_reg_sfence; // @[RocketCore.scala 389:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110396.4]
  assign take_pc_mem = mem_reg_valid & _T_1887; // @[RocketCore.scala 389:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110397.4]
  assign take_pc = take_pc_wb | take_pc_mem; // @[RocketCore.scala 170:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109401.4]
  assign _T_628 = ibuf_io_inst_0_bits_inst_bits & 32'h505f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109410.4]
  assign _T_630 = _T_628 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109411.4]
  assign _T_632 = ibuf_io_inst_0_bits_inst_bits & 32'h207f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109412.4]
  assign _T_634 = _T_632 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109413.4]
  assign _T_636 = ibuf_io_inst_0_bits_inst_bits & 32'h607f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109414.4]
  assign _T_638 = _T_636 == 32'hf; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109415.4]
  assign _T_640 = ibuf_io_inst_0_bits_inst_bits & 32'h5f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109416.4]
  assign _T_642 = _T_640 == 32'h17; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109417.4]
  assign _T_644 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00007f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109418.4]
  assign _T_646 = _T_644 == 32'h33; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109419.4]
  assign _T_648 = ibuf_io_inst_0_bits_inst_bits & 32'hbe00707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109420.4]
  assign _T_650 = _T_648 == 32'h33; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109421.4]
  assign _T_652 = ibuf_io_inst_0_bits_inst_bits & 32'h707b; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109422.4]
  assign _T_654 = _T_652 == 32'h63; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109423.4]
  assign _T_656 = ibuf_io_inst_0_bits_inst_bits & 32'h7f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109424.4]
  assign _T_658 = _T_656 == 32'h6f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109425.4]
  assign _T_660 = ibuf_io_inst_0_bits_inst_bits & 32'hffefffff; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109426.4]
  assign _T_662 = _T_660 == 32'h73; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109427.4]
  assign _T_664 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00305f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109428.4]
  assign _T_666 = _T_664 == 32'h1013; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109429.4]
  assign _T_670 = _T_632 == 32'h2013; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109431.4]
  assign _T_672 = ibuf_io_inst_0_bits_inst_bits & 32'h1800707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109432.4]
  assign _T_674 = _T_672 == 32'h202f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109433.4]
  assign _T_678 = _T_632 == 32'h2073; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109435.4]
  assign _T_680 = ibuf_io_inst_0_bits_inst_bits & 32'hbc00707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109436.4]
  assign _T_682 = _T_680 == 32'h5013; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109437.4]
  assign _T_686 = _T_648 == 32'h5033; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109439.4]
  assign _T_688 = ibuf_io_inst_0_bits_inst_bits & 32'he800707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109440.4]
  assign _T_690 = _T_688 == 32'h800202f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109441.4]
  assign _T_692 = ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109442.4]
  assign _T_694 = _T_692 == 32'h1000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109443.4]
  assign _T_696 = ibuf_io_inst_0_bits_inst_bits == 32'h10500073; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109444.4]
  assign _T_698 = ibuf_io_inst_0_bits_inst_bits == 32'h30200073; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109445.4]
  assign _T_700 = ibuf_io_inst_0_bits_inst_bits == 32'h7b200073; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109446.4]
  assign _T_702 = ibuf_io_inst_0_bits_inst_bits & 32'h603f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109447.4]
  assign _T_704 = _T_702 == 32'h23; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109448.4]
  assign _T_706 = ibuf_io_inst_0_bits_inst_bits & 32'h306f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109449.4]
  assign _T_708 = _T_706 == 32'h1063; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109450.4]
  assign _T_710 = ibuf_io_inst_0_bits_inst_bits & 32'h407f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109451.4]
  assign _T_712 = _T_710 == 32'h4063; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109452.4]
  assign _T_716 = _T_706 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109454.4]
  assign _T_719 = _T_630 | _T_634; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109456.4]
  assign _T_720 = _T_719 | _T_638; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109457.4]
  assign _T_721 = _T_720 | _T_642; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109458.4]
  assign _T_722 = _T_721 | _T_646; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109459.4]
  assign _T_723 = _T_722 | _T_650; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109460.4]
  assign _T_724 = _T_723 | _T_654; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109461.4]
  assign _T_725 = _T_724 | _T_658; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109462.4]
  assign _T_726 = _T_725 | _T_662; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109463.4]
  assign _T_727 = _T_726 | _T_666; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109464.4]
  assign _T_728 = _T_727 | _T_670; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109465.4]
  assign _T_729 = _T_728 | _T_674; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109466.4]
  assign _T_730 = _T_729 | _T_678; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109467.4]
  assign _T_731 = _T_730 | _T_682; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109468.4]
  assign _T_732 = _T_731 | _T_686; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109469.4]
  assign _T_733 = _T_732 | _T_690; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109470.4]
  assign _T_734 = _T_733 | _T_694; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109471.4]
  assign _T_735 = _T_734 | _T_696; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109472.4]
  assign _T_736 = _T_735 | _T_698; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109473.4]
  assign _T_737 = _T_736 | _T_700; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109474.4]
  assign _T_738 = _T_737 | _T_704; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109475.4]
  assign _T_739 = _T_738 | _T_708; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109476.4]
  assign _T_740 = _T_739 | _T_712; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109477.4]
  assign id_ctrl_legal = _T_740 | _T_716; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109478.4]
  assign _T_745 = ibuf_io_inst_0_bits_inst_bits & 32'h54; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109479.4]
  assign id_ctrl_branch = _T_745 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109480.4]
  assign _T_751 = ibuf_io_inst_0_bits_inst_bits & 32'h48; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109482.4]
  assign id_ctrl_jal = _T_751 == 32'h48; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109483.4]
  assign _T_757 = ibuf_io_inst_0_bits_inst_bits & 32'h1c; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109485.4]
  assign id_ctrl_jalr = _T_757 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109486.4]
  assign _T_763 = ibuf_io_inst_0_bits_inst_bits & 32'h70; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109488.4]
  assign _T_765 = _T_763 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109489.4]
  assign _T_767 = ibuf_io_inst_0_bits_inst_bits & 32'h64; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109490.4]
  assign _T_769 = _T_767 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109491.4]
  assign _T_771 = ibuf_io_inst_0_bits_inst_bits & 32'h34; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109492.4]
  assign _T_773 = _T_771 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109493.4]
  assign _T_776 = _T_765 | _T_769; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109495.4]
  assign id_ctrl_rxs2 = _T_776 | _T_773; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109496.4]
  assign _T_779 = ibuf_io_inst_0_bits_inst_bits & 32'h4004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109497.4]
  assign _T_781 = _T_779 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109498.4]
  assign _T_783 = ibuf_io_inst_0_bits_inst_bits & 32'h44; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109499.4]
  assign _T_785 = _T_783 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109500.4]
  assign _T_787 = ibuf_io_inst_0_bits_inst_bits & 32'h18; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109501.4]
  assign _T_789 = _T_787 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109502.4]
  assign _T_791 = ibuf_io_inst_0_bits_inst_bits & 32'h2050; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109503.4]
  assign _T_793 = _T_791 == 32'h2000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109504.4]
  assign _T_796 = _T_781 | _T_785; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109506.4]
  assign _T_797 = _T_796 | _T_789; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109507.4]
  assign id_ctrl_rxs1 = _T_797 | _T_793; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109508.4]
  assign _T_800 = ibuf_io_inst_0_bits_inst_bits & 32'h58; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109509.4]
  assign _T_802 = _T_800 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109510.4]
  assign _T_804 = ibuf_io_inst_0_bits_inst_bits & 32'h20; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109511.4]
  assign _T_806 = _T_804 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109512.4]
  assign _T_808 = ibuf_io_inst_0_bits_inst_bits & 32'hc; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109513.4]
  assign _T_810 = _T_808 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109514.4]
  assign _T_812 = ibuf_io_inst_0_bits_inst_bits & 32'h4050; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109515.4]
  assign _T_814 = _T_812 == 32'h4050; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109516.4]
  assign _T_817 = _T_802 | _T_806; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109518.4]
  assign _T_818 = _T_817 | _T_810; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109519.4]
  assign _T_819 = _T_818 | id_ctrl_jal; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109520.4]
  assign _T_820 = _T_819 | _T_814; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109521.4]
  assign _T_824 = _T_751 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109523.4]
  assign _T_826 = ibuf_io_inst_0_bits_inst_bits & 32'h4008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109524.4]
  assign _T_828 = _T_826 == 32'h4000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109525.4]
  assign _T_831 = _T_824 | _T_789; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109527.4]
  assign _T_832 = _T_831 | _T_828; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109528.4]
  assign id_ctrl_sel_alu2 = {_T_832,_T_820}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109529.4]
  assign _T_835 = ibuf_io_inst_0_bits_inst_bits & 32'h50; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109530.4]
  assign _T_837 = _T_835 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109531.4]
  assign _T_840 = _T_781 | _T_837; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109533.4]
  assign _T_841 = _T_840 | _T_785; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109534.4]
  assign _T_842 = _T_841 | _T_789; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109535.4]
  assign _T_844 = ibuf_io_inst_0_bits_inst_bits & 32'h24; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109536.4]
  assign _T_846 = _T_844 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109537.4]
  assign _T_849 = _T_846 | id_ctrl_jal; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109539.4]
  assign id_ctrl_sel_alu1 = {_T_849,_T_842}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109540.4]
  assign _T_852 = ibuf_io_inst_0_bits_inst_bits & 32'h8; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109541.4]
  assign _T_854 = _T_852 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109542.4]
  assign _T_858 = _T_783 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109544.4]
  assign _T_861 = _T_854 | _T_858; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109546.4]
  assign _T_865 = _T_783 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109548.4]
  assign _T_868 = _T_865 | _T_854; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109550.4]
  assign _T_872 = _T_844 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109552.4]
  assign _T_874 = ibuf_io_inst_0_bits_inst_bits & 32'h14; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109553.4]
  assign _T_876 = _T_874 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109554.4]
  assign _T_879 = _T_872 | id_ctrl_jalr; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109556.4]
  assign _T_880 = _T_879 | _T_876; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109557.4]
  assign _T_881 = {_T_880,_T_868}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109558.4]
  assign id_ctrl_sel_imm = {_T_881,_T_861}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109559.4]
  assign _T_890 = ibuf_io_inst_0_bits_inst_bits & 32'h3054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109563.4]
  assign _T_892 = _T_890 == 32'h1010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109564.4]
  assign _T_894 = ibuf_io_inst_0_bits_inst_bits & 32'h1058; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109565.4]
  assign _T_896 = _T_894 == 32'h1040; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109566.4]
  assign _T_898 = ibuf_io_inst_0_bits_inst_bits & 32'h7044; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109567.4]
  assign _T_900 = _T_898 == 32'h7000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109568.4]
  assign _T_903 = _T_892 | _T_896; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109570.4]
  assign _T_904 = _T_903 | _T_900; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109571.4]
  assign _T_906 = ibuf_io_inst_0_bits_inst_bits & 32'h4054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109572.4]
  assign _T_908 = _T_906 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109573.4]
  assign _T_910 = ibuf_io_inst_0_bits_inst_bits & 32'h3044; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109574.4]
  assign _T_912 = _T_910 == 32'h3000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109575.4]
  assign _T_914 = ibuf_io_inst_0_bits_inst_bits & 32'h6044; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109576.4]
  assign _T_916 = _T_914 == 32'h6000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109577.4]
  assign _T_918 = ibuf_io_inst_0_bits_inst_bits & 32'h6018; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109578.4]
  assign _T_920 = _T_918 == 32'h6000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109579.4]
  assign _T_922 = ibuf_io_inst_0_bits_inst_bits & 32'h40003034; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109580.4]
  assign _T_924 = _T_922 == 32'h40000030; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109581.4]
  assign _T_926 = ibuf_io_inst_0_bits_inst_bits & 32'h40001054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109582.4]
  assign _T_928 = _T_926 == 32'h40001010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109583.4]
  assign _T_931 = _T_908 | _T_912; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109585.4]
  assign _T_932 = _T_931 | _T_916; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109586.4]
  assign _T_933 = _T_932 | _T_920; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109587.4]
  assign _T_934 = _T_933 | _T_924; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109588.4]
  assign _T_935 = _T_934 | _T_928; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109589.4]
  assign _T_937 = ibuf_io_inst_0_bits_inst_bits & 32'h2054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109590.4]
  assign _T_939 = _T_937 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109591.4]
  assign _T_941 = ibuf_io_inst_0_bits_inst_bits & 32'h40004054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109592.4]
  assign _T_943 = _T_941 == 32'h4010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109593.4]
  assign _T_945 = ibuf_io_inst_0_bits_inst_bits & 32'h5054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109594.4]
  assign _T_947 = _T_945 == 32'h4010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109595.4]
  assign _T_949 = ibuf_io_inst_0_bits_inst_bits & 32'h4058; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109596.4]
  assign _T_951 = _T_949 == 32'h4040; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109597.4]
  assign _T_954 = _T_939 | _T_943; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109599.4]
  assign _T_955 = _T_954 | _T_947; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109600.4]
  assign _T_956 = _T_955 | _T_951; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109601.4]
  assign _T_958 = ibuf_io_inst_0_bits_inst_bits & 32'h6054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109602.4]
  assign _T_960 = _T_958 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109603.4]
  assign _T_962 = ibuf_io_inst_0_bits_inst_bits & 32'h40003054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109604.4]
  assign _T_964 = _T_962 == 32'h40001010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109605.4]
  assign _T_967 = _T_960 | _T_951; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109607.4]
  assign _T_968 = _T_967 | _T_924; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109608.4]
  assign _T_969 = _T_968 | _T_964; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109609.4]
  assign _T_970 = {_T_935,_T_904}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109610.4]
  assign _T_971 = {_T_969,_T_956}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109611.4]
  assign id_ctrl_alu_fn = {_T_971,_T_970}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109612.4]
  assign _T_974 = ibuf_io_inst_0_bits_inst_bits & 32'h605f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109613.4]
  assign _T_976 = _T_974 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109614.4]
  assign _T_978 = ibuf_io_inst_0_bits_inst_bits & 32'h707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109615.4]
  assign _T_980 = _T_978 == 32'h100f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109616.4]
  assign _T_983 = _T_976 | _T_630; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109618.4]
  assign _T_984 = _T_983 | _T_634; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109619.4]
  assign _T_985 = _T_984 | _T_980; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109620.4]
  assign _T_986 = _T_985 | _T_674; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109621.4]
  assign _T_987 = _T_986 | _T_690; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109622.4]
  assign id_ctrl_mem = _T_987 | _T_694; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109623.4]
  assign _T_990 = ibuf_io_inst_0_bits_inst_bits & 32'h2008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109624.4]
  assign _T_992 = _T_990 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109625.4]
  assign _T_994 = ibuf_io_inst_0_bits_inst_bits & 32'h28; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109626.4]
  assign _T_996 = _T_994 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109627.4]
  assign _T_998 = ibuf_io_inst_0_bits_inst_bits & 32'h18000020; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109628.4]
  assign _T_1000 = _T_998 == 32'h18000020; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109629.4]
  assign _T_1002 = ibuf_io_inst_0_bits_inst_bits & 32'h20000020; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109630.4]
  assign _T_1004 = _T_1002 == 32'h20000020; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109631.4]
  assign _T_1007 = _T_992 | _T_996; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109633.4]
  assign _T_1008 = _T_1007 | _T_1000; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109634.4]
  assign _T_1009 = _T_1008 | _T_1004; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109635.4]
  assign _T_1011 = ibuf_io_inst_0_bits_inst_bits & 32'h10001008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109636.4]
  assign _T_1013 = _T_1011 == 32'h10000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109637.4]
  assign _T_1015 = ibuf_io_inst_0_bits_inst_bits & 32'h40001008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109638.4]
  assign _T_1017 = _T_1015 == 32'h40000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109639.4]
  assign _T_1020 = _T_1013 | _T_1017; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109641.4]
  assign _T_1022 = ibuf_io_inst_0_bits_inst_bits & 32'h8000008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109642.4]
  assign _T_1024 = _T_1022 == 32'h8000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109643.4]
  assign _T_1026 = ibuf_io_inst_0_bits_inst_bits & 32'h10000008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109644.4]
  assign _T_1028 = _T_1026 == 32'h10000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109645.4]
  assign _T_1030 = ibuf_io_inst_0_bits_inst_bits & 32'h80000008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109646.4]
  assign _T_1032 = _T_1030 == 32'h80000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109647.4]
  assign _T_1035 = _T_992 | _T_1024; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109649.4]
  assign _T_1036 = _T_1035 | _T_1028; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109650.4]
  assign _T_1037 = _T_1036 | _T_1032; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109651.4]
  assign _T_1039 = ibuf_io_inst_0_bits_inst_bits & 32'h18001008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109652.4]
  assign _T_1041 = _T_1039 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109653.4]
  assign _T_1045 = {_T_1020,_T_1009}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109655.4]
  assign _T_1046 = {1'h0,_T_1041}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109656.4]
  assign _T_1047 = {_T_1046,_T_1037}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109657.4]
  assign id_ctrl_mem_cmd = {_T_1047,_T_1045}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109658.4]
  assign _T_1050 = ibuf_io_inst_0_bits_inst_bits & 32'h1000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109659.4]
  assign _T_1052 = _T_1050 == 32'h1000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109660.4]
  assign _T_1056 = ibuf_io_inst_0_bits_inst_bits & 32'h2000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109662.4]
  assign _T_1058 = _T_1056 == 32'h2000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109663.4]
  assign _T_1062 = ibuf_io_inst_0_bits_inst_bits & 32'h4000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109665.4]
  assign _T_1064 = _T_1062 == 32'h4000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109666.4]
  assign _T_1067 = {_T_1064,_T_1058}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109668.4]
  assign id_ctrl_mem_type = {_T_1067,_T_1052}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109669.4]
  assign _T_1074 = ibuf_io_inst_0_bits_inst_bits & 32'h2000074; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109670.4]
  assign id_ctrl_div = _T_1074 == 32'h2000030; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109671.4]
  assign _T_1082 = _T_994 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109674.4]
  assign _T_1086 = _T_835 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109676.4]
  assign _T_1088 = ibuf_io_inst_0_bits_inst_bits & 32'h1010; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109677.4]
  assign _T_1090 = _T_1088 == 32'h1010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109678.4]
  assign _T_1094 = _T_990 == 32'h2008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109680.4]
  assign _T_1096 = ibuf_io_inst_0_bits_inst_bits & 32'h2010; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109681.4]
  assign _T_1098 = _T_1096 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109682.4]
  assign _T_1101 = _T_1082 | _T_810; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109684.4]
  assign _T_1102 = _T_1101 | _T_1086; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109685.4]
  assign _T_1103 = _T_1102 | id_ctrl_jal; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109686.4]
  assign _T_1104 = _T_1103 | _T_1090; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109687.4]
  assign _T_1105 = _T_1104 | _T_1094; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109688.4]
  assign id_ctrl_wxd = _T_1105 | _T_1098; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109689.4]
  assign _T_1108 = ibuf_io_inst_0_bits_inst_bits & 32'h1050; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109690.4]
  assign _T_1110 = _T_1108 == 32'h1050; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109691.4]
  assign _T_1116 = _T_791 == 32'h2050; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109694.4]
  assign _T_1120 = ibuf_io_inst_0_bits_inst_bits & 32'h3050; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109696.4]
  assign _T_1122 = _T_1120 == 32'h50; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109697.4]
  assign _T_1125 = {_T_1122,_T_1116}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109699.4]
  assign id_ctrl_csr = {_T_1125,_T_1110}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109700.4]
  assign _T_1128 = ibuf_io_inst_0_bits_inst_bits & 32'h1048; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109701.4]
  assign id_ctrl_fence_i = _T_1128 == 32'h1008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109702.4]
  assign _T_1134 = ibuf_io_inst_0_bits_inst_bits & 32'h3048; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109704.4]
  assign id_ctrl_fence = _T_1134 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109705.4]
  assign _T_1140 = ibuf_io_inst_0_bits_inst_bits & 32'h2048; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109707.4]
  assign id_ctrl_amo = _T_1140 == 32'h2008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109708.4]
  assign _T_1155 = ibuf_io_inst_0_bits_inst_rs1 == 5'h0; // @[RocketCore.scala 805:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109743.4]
  assign _T_1158 = ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 799:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109745.4]
  assign _T_1159 = ~ _T_1158; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109746.4]
  assign _T_1161 = _T_1151__T_1160_data; // @[RocketCore.scala 805:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109748.4]
  assign _T_1168 = ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 799:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109754.4]
  assign _T_1169 = ~ _T_1168; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109755.4]
  assign _T_1171 = _T_1151__T_1170_data; // @[RocketCore.scala 805:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109757.4]
  assign _T_1265 = id_ctrl_csr == 3'h2; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109832.4]
  assign _T_1266 = id_ctrl_csr == 3'h3; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109833.4]
  assign _T_1267 = id_ctrl_csr == 3'h1; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109834.4]
  assign _T_1268 = _T_1265 | _T_1266; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109835.4]
  assign id_csr_en = _T_1268 | _T_1267; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109836.4]
  assign id_system_insn = id_ctrl_csr >= 3'h4; // @[RocketCore.scala 198:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109837.4]
  assign id_csr_ren = _T_1268 & _T_1155; // @[RocketCore.scala 199:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109842.4]
  assign id_csr = id_csr_ren ? 3'h5 : id_ctrl_csr; // @[RocketCore.scala 200:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109843.4]
  assign _T_1279 = id_ctrl_mem_cmd == 5'h14; // @[RocketCore.scala 201:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109844.4]
  assign id_sfence = id_ctrl_mem & _T_1279; // @[RocketCore.scala 201:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109845.4]
  assign _T_1280 = id_sfence | id_system_insn; // @[RocketCore.scala 202:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109846.4]
  assign _T_1282 = id_csr_ren == 1'h0; // @[RocketCore.scala 202:67:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109847.4]
  assign _T_1283 = id_csr_en & _T_1282; // @[RocketCore.scala 202:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109848.4]
  assign _T_1284 = _T_1283 & csr_io_decode_0_write_flush; // @[RocketCore.scala 202:79:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109849.4]
  assign id_csr_flush = _T_1280 | _T_1284; // @[RocketCore.scala 202:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109850.4]
  assign _T_1286 = id_ctrl_legal == 1'h0; // @[RocketCore.scala 204:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109851.4]
  assign _T_1287 = csr_io_status_isa[12]; // @[RocketCore.scala 205:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109852.4]
  assign _T_1289 = _T_1287 == 1'h0; // @[RocketCore.scala 205:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109853.4]
  assign _T_1290 = id_ctrl_div & _T_1289; // @[RocketCore.scala 205:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109854.4]
  assign _T_1291 = _T_1286 | _T_1290; // @[RocketCore.scala 204:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109855.4]
  assign _T_1292 = csr_io_status_isa[0]; // @[RocketCore.scala 206:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109856.4]
  assign _T_1294 = _T_1292 == 1'h0; // @[RocketCore.scala 206:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109857.4]
  assign _T_1295 = id_ctrl_amo & _T_1294; // @[RocketCore.scala 206:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109858.4]
  assign _T_1296 = _T_1291 | _T_1295; // @[RocketCore.scala 205:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109859.4]
  assign _T_1305 = csr_io_status_isa[2]; // @[RocketCore.scala 209:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109867.4]
  assign _T_1307 = _T_1305 == 1'h0; // @[RocketCore.scala 209:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109868.4]
  assign _T_1314 = _T_1282 & csr_io_decode_0_write_illegal; // @[RocketCore.scala 211:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109874.4]
  assign _T_1315 = csr_io_decode_0_read_illegal | _T_1314; // @[RocketCore.scala 211:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109875.4]
  assign _T_1316 = id_csr_en & _T_1315; // @[RocketCore.scala 211:15:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109876.4]
  assign id_illegal_insn = _T_1296 | _T_1316; // @[RocketCore.scala 210:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109877.4]
  assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26]; // @[RocketCore.scala 214:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109883.4]
  assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25]; // @[RocketCore.scala 215:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109884.4]
  assign _T_1323 = id_ctrl_amo & id_amo_rl; // @[RocketCore.scala 216:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109885.4]
  assign id_fence_next = id_ctrl_fence | _T_1323; // @[RocketCore.scala 216:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109886.4]
  assign _T_1325 = io_dmem_ordered == 1'h0; // @[RocketCore.scala 217:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109887.4]
  assign id_mem_busy = _T_1325 | io_dmem_req_valid; // @[RocketCore.scala 217:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109888.4]
  assign _T_1327 = id_mem_busy == 1'h0; // @[RocketCore.scala 218:9:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109889.4]
  assign _GEN_0 = _T_1327 ? 1'h0 : id_reg_fence; // @[RocketCore.scala 218:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109890.4]
  assign _T_1337 = id_ctrl_amo & id_amo_aq; // @[RocketCore.scala 223:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109901.4]
  assign _T_1338 = _T_1337 | id_ctrl_fence_i; // @[RocketCore.scala 223:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109902.4]
  assign _T_1340 = id_reg_fence & id_ctrl_mem; // @[RocketCore.scala 223:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109904.4]
  assign _T_1341 = _T_1338 | _T_1340; // @[RocketCore.scala 223:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109905.4]
  assign id_do_fence = id_mem_busy & _T_1341; // @[RocketCore.scala 223:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109906.4]
  assign _T_1352 = csr_io_interrupt | bpu_io_debug_if; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109919.4]
  assign _T_1353 = _T_1352 | bpu_io_xcpt_if; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109920.4]
  assign _T_1354 = _T_1353 | ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109921.4]
  assign _T_1355 = _T_1354 | ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109922.4]
  assign id_xcpt = _T_1355 | id_illegal_insn; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109925.4]
  assign _T_1360 = ibuf_io_inst_0_bits_xcpt0_ae_inst ? 4'h1 : 4'h2; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109928.4]
  assign _T_1361 = ibuf_io_inst_0_bits_xcpt0_pf_inst ? 4'hc : _T_1360; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109929.4]
  assign _T_1362 = bpu_io_xcpt_if ? 4'h3 : _T_1361; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109930.4]
  assign _T_1363 = bpu_io_debug_if ? 4'he : _T_1362; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109931.4]
  assign id_cause = csr_io_interrupt ? csr_io_interrupt_cause : {{28'd0}, _T_1363}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109932.4]
  assign ex_waddr = ex_reg_inst[11:7]; // @[RocketCore.scala 258:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109943.4]
  assign mem_waddr = mem_reg_inst[11:7]; // @[RocketCore.scala 259:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109944.4]
  assign wb_waddr = wb_reg_inst[11:7]; // @[RocketCore.scala 260:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109945.4]
  assign _T_1381 = ex_reg_valid & ex_ctrl_wxd; // @[RocketCore.scala 263:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109946.4]
  assign _T_1382 = mem_reg_valid & mem_ctrl_wxd; // @[RocketCore.scala 264:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109947.4]
  assign _T_1384 = mem_ctrl_mem == 1'h0; // @[RocketCore.scala 264:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109948.4]
  assign _T_1385 = _T_1382 & _T_1384; // @[RocketCore.scala 264:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109949.4]
  assign id_bypass_src_0_0 = 5'h0 == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109951.4]
  assign _T_1388 = ex_waddr == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109953.4]
  assign id_bypass_src_0_1 = _T_1381 & _T_1388; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109954.4]
  assign _T_1389 = mem_waddr == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109955.4]
  assign id_bypass_src_0_2 = _T_1385 & _T_1389; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109956.4]
  assign id_bypass_src_0_3 = _T_1382 & _T_1389; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109958.4]
  assign id_bypass_src_1_0 = 5'h0 == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109959.4]
  assign _T_1392 = ex_waddr == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109961.4]
  assign id_bypass_src_1_1 = _T_1381 & _T_1392; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109962.4]
  assign _T_1393 = mem_waddr == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109963.4]
  assign id_bypass_src_1_2 = _T_1385 & _T_1393; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109964.4]
  assign id_bypass_src_1_3 = _T_1382 & _T_1393; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109966.4]
  assign _T_1417 = ex_reg_rs_lsb_0 == 2'h1; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109970.4]
  assign _T_1418 = _T_1417 ? bypass_mux_1 : 32'h0; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109971.4]
  assign _T_1420 = ex_reg_rs_lsb_0 == 2'h2; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109972.4]
  assign _T_1421 = _T_1420 ? bypass_mux_2 : _T_1418; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109973.4]
  assign _T_1423 = ex_reg_rs_lsb_0 == 2'h3; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109974.4]
  assign _T_1424 = _T_1423 ? io_dmem_resp_bits_data_word_bypass : _T_1421; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109975.4]
  assign _T_1425 = {ex_reg_rs_msb_0,ex_reg_rs_lsb_0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109976.4]
  assign ex_rs_0 = ex_reg_rs_bypass_0 ? _T_1424 : _T_1425; // @[RocketCore.scala 274:14:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109977.4]
  assign _T_1427 = ex_reg_rs_lsb_1 == 2'h1; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109978.4]
  assign _T_1428 = _T_1427 ? bypass_mux_1 : 32'h0; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109979.4]
  assign _T_1430 = ex_reg_rs_lsb_1 == 2'h2; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109980.4]
  assign _T_1431 = _T_1430 ? bypass_mux_2 : _T_1428; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109981.4]
  assign _T_1433 = ex_reg_rs_lsb_1 == 2'h3; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109982.4]
  assign _T_1434 = _T_1433 ? io_dmem_resp_bits_data_word_bypass : _T_1431; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109983.4]
  assign _T_1435 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109984.4]
  assign ex_rs_1 = ex_reg_rs_bypass_1 ? _T_1434 : _T_1435; // @[RocketCore.scala 274:14:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109985.4]
  assign _T_1437 = ex_ctrl_sel_imm == 3'h5; // @[RocketCore.scala 820:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109986.4]
  assign _T_1439 = ex_reg_inst[31]; // @[RocketCore.scala 820:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109987.4]
  assign _T_1440 = $signed(_T_1439); // @[RocketCore.scala 820:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109988.4]
  assign _T_1441 = _T_1437 ? $signed(1'sh0) : $signed(_T_1440); // @[RocketCore.scala 820:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109989.4]
  assign _T_1443 = ex_ctrl_sel_imm == 3'h2; // @[RocketCore.scala 821:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109990.4]
  assign _T_1444 = ex_reg_inst[30:20]; // @[RocketCore.scala 821:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109991.4]
  assign _T_1445 = $signed(_T_1444); // @[RocketCore.scala 821:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109992.4]
  assign _T_1446 = _T_1443 ? $signed(_T_1445) : $signed({11{_T_1441}}); // @[RocketCore.scala 821:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109993.4]
  assign _T_1448 = ex_ctrl_sel_imm != 3'h2; // @[RocketCore.scala 822:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109994.4]
  assign _T_1450 = ex_ctrl_sel_imm != 3'h3; // @[RocketCore.scala 822:43:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109995.4]
  assign _T_1451 = _T_1448 & _T_1450; // @[RocketCore.scala 822:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109996.4]
  assign _T_1452 = ex_reg_inst[19:12]; // @[RocketCore.scala 822:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109997.4]
  assign _T_1453 = $signed(_T_1452); // @[RocketCore.scala 822:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109998.4]
  assign _T_1454 = _T_1451 ? $signed({8{_T_1441}}) : $signed(_T_1453); // @[RocketCore.scala 822:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109999.4]
  assign _T_1459 = _T_1443 | _T_1437; // @[RocketCore.scala 823:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110002.4]
  assign _T_1462 = ex_ctrl_sel_imm == 3'h3; // @[RocketCore.scala 824:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110003.4]
  assign _T_1463 = ex_reg_inst[20]; // @[RocketCore.scala 824:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110004.4]
  assign _T_1464 = $signed(_T_1463); // @[RocketCore.scala 824:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110005.4]
  assign _T_1466 = ex_ctrl_sel_imm == 3'h1; // @[RocketCore.scala 825:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110006.4]
  assign _T_1467 = ex_reg_inst[7]; // @[RocketCore.scala 825:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110007.4]
  assign _T_1468 = $signed(_T_1467); // @[RocketCore.scala 825:43:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110008.4]
  assign _T_1469 = _T_1466 ? $signed(_T_1468) : $signed(_T_1441); // @[RocketCore.scala 825:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110009.4]
  assign _T_1470 = _T_1462 ? $signed(_T_1464) : $signed(_T_1469); // @[RocketCore.scala 824:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110010.4]
  assign _T_1471 = _T_1459 ? $signed(1'sh0) : $signed(_T_1470); // @[RocketCore.scala 823:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110011.4]
  assign _T_1478 = ex_reg_inst[30:25]; // @[RocketCore.scala 826:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110015.4]
  assign _T_1479 = _T_1459 ? 6'h0 : _T_1478; // @[RocketCore.scala 826:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110016.4]
  assign _T_1484 = ex_ctrl_sel_imm == 3'h0; // @[RocketCore.scala 828:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110018.4]
  assign _T_1487 = _T_1484 | _T_1466; // @[RocketCore.scala 828:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110020.4]
  assign _T_1488 = ex_reg_inst[11:8]; // @[RocketCore.scala 828:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110021.4]
  assign _T_1491 = ex_reg_inst[19:16]; // @[RocketCore.scala 829:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110023.4]
  assign _T_1492 = ex_reg_inst[24:21]; // @[RocketCore.scala 829:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110024.4]
  assign _T_1493 = _T_1437 ? _T_1491 : _T_1492; // @[RocketCore.scala 829:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110025.4]
  assign _T_1494 = _T_1487 ? _T_1488 : _T_1493; // @[RocketCore.scala 828:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110026.4]
  assign _T_1495 = _T_1443 ? 4'h0 : _T_1494; // @[RocketCore.scala 827:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110027.4]
  assign _T_1500 = ex_ctrl_sel_imm == 3'h4; // @[RocketCore.scala 831:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110030.4]
  assign _T_1504 = ex_reg_inst[15]; // @[RocketCore.scala 832:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110033.4]
  assign _T_1506 = _T_1437 ? _T_1504 : 1'h0; // @[RocketCore.scala 832:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110034.4]
  assign _T_1507 = _T_1500 ? _T_1463 : _T_1506; // @[RocketCore.scala 831:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110035.4]
  assign _T_1508 = _T_1484 ? _T_1467 : _T_1507; // @[RocketCore.scala 830:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110036.4]
  assign _T_1509 = {_T_1479,_T_1495}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110037.4]
  assign _T_1510 = {_T_1509,_T_1508}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110038.4]
  assign _T_1511 = $unsigned(_T_1471); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110039.4]
  assign _T_1512 = $unsigned(_T_1454); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110040.4]
  assign _T_1513 = {_T_1512,_T_1511}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110041.4]
  assign _T_1514 = $unsigned(_T_1446); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110042.4]
  assign _T_1515 = $unsigned(_T_1441); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110043.4]
  assign _T_1516 = {_T_1515,_T_1514}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110044.4]
  assign _T_1517 = {_T_1516,_T_1513}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110045.4]
  assign _T_1518 = {_T_1517,_T_1510}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110046.4]
  assign ex_imm = $signed(_T_1518); // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110047.4]
  assign _T_1521 = $signed(ex_rs_0); // @[RocketCore.scala 277:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110048.4]
  assign _T_1523 = $signed(ex_reg_pc); // @[RocketCore.scala 278:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110049.4]
  assign _T_1524 = 2'h2 == ex_ctrl_sel_alu1; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110050.4]
  assign _T_1525 = _T_1524 ? $signed(_T_1523) : $signed(32'sh0); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110051.4]
  assign _T_1526 = 2'h1 == ex_ctrl_sel_alu1; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110052.4]
  assign ex_op1 = _T_1526 ? $signed(_T_1521) : $signed(_T_1525); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110053.4]
  assign _T_1529 = $signed(ex_rs_1); // @[RocketCore.scala 280:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110054.4]
  assign _T_1534 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 282:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110055.4]
  assign _T_1535 = 2'h1 == ex_ctrl_sel_alu2; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110056.4]
  assign _T_1536 = _T_1535 ? $signed(_T_1534) : $signed(4'sh0); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110057.4]
  assign _T_1537 = 2'h3 == ex_ctrl_sel_alu2; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110058.4]
  assign _T_1538 = _T_1537 ? $signed(ex_imm) : $signed({{28{_T_1536[3]}},_T_1536}); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110059.4]
  assign _T_1539 = 2'h2 == ex_ctrl_sel_alu2; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110060.4]
  assign ex_op2 = _T_1539 ? $signed(_T_1529) : $signed(_T_1538); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110061.4]
  assign _T_1540 = $unsigned(ex_op2); // @[RocketCore.scala 287:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110068.4]
  assign _T_1541 = $unsigned(ex_op1); // @[RocketCore.scala 288:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110070.4]
  assign _T_1542 = ex_reg_valid & ex_ctrl_div; // @[RocketCore.scala 292:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110076.4]
  assign _T_2309 = ibuf_io_inst_0_valid == 1'h0; // @[RocketCore.scala 619:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110867.4]
  assign _T_2310 = _T_2309 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 619:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110868.4]
  assign _T_2311 = _T_2310 | take_pc; // @[RocketCore.scala 619:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110869.4]
  assign _T_2141 = ibuf_io_inst_0_bits_inst_rs1 != 5'h0; // @[RocketCore.scala 557:55:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110697.4]
  assign _T_2142 = id_ctrl_rxs1 & _T_2141; // @[RocketCore.scala 557:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110698.4]
  assign _T_2200 = ibuf_io_inst_0_bits_inst_rs1 == ex_waddr; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110751.4]
  assign _T_2201 = _T_2142 & _T_2200; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110752.4]
  assign _T_2144 = ibuf_io_inst_0_bits_inst_rs2 != 5'h0; // @[RocketCore.scala 558:55:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110699.4]
  assign _T_2145 = id_ctrl_rxs2 & _T_2144; // @[RocketCore.scala 558:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110700.4]
  assign _T_2202 = ibuf_io_inst_0_bits_inst_rs2 == ex_waddr; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110753.4]
  assign _T_2203 = _T_2145 & _T_2202; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110754.4]
  assign _T_2206 = _T_2201 | _T_2203; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110757.4]
  assign _T_2147 = ibuf_io_inst_0_bits_inst_rd != 5'h0; // @[RocketCore.scala 559:55:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110701.4]
  assign _T_2148 = id_ctrl_wxd & _T_2147; // @[RocketCore.scala 559:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110702.4]
  assign _T_2204 = ibuf_io_inst_0_bits_inst_rd == ex_waddr; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110755.4]
  assign _T_2205 = _T_2148 & _T_2204; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110756.4]
  assign _T_2207 = _T_2206 | _T_2205; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110758.4]
  assign data_hazard_ex = ex_ctrl_wxd & _T_2207; // @[RocketCore.scala 577:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110759.4]
  assign _T_2195 = ex_ctrl_csr != 3'h0; // @[RocketCore.scala 576:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110745.4]
  assign _T_2196 = _T_2195 | ex_ctrl_jalr; // @[RocketCore.scala 576:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110746.4]
  assign _T_2197 = _T_2196 | ex_ctrl_mem; // @[RocketCore.scala 576:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110747.4]
  assign _T_2198 = _T_2197 | ex_ctrl_div; // @[RocketCore.scala 576:79:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110748.4]
  assign _T_2199 = _T_2198 | ex_ctrl_fp; // @[RocketCore.scala 576:94:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110749.4]
  assign ex_cannot_bypass = _T_2199 | ex_ctrl_rocc; // @[RocketCore.scala 576:108:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110750.4]
  assign _T_2219 = data_hazard_ex & ex_cannot_bypass; // @[RocketCore.scala 579:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110772.4]
  assign id_ex_hazard = ex_reg_valid & _T_2219; // @[RocketCore.scala 579:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110774.4]
  assign _T_2228 = ibuf_io_inst_0_bits_inst_rs1 == mem_waddr; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110782.4]
  assign _T_2229 = _T_2142 & _T_2228; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110783.4]
  assign _T_2230 = ibuf_io_inst_0_bits_inst_rs2 == mem_waddr; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110784.4]
  assign _T_2231 = _T_2145 & _T_2230; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110785.4]
  assign _T_2234 = _T_2229 | _T_2231; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110788.4]
  assign _T_2232 = ibuf_io_inst_0_bits_inst_rd == mem_waddr; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110786.4]
  assign _T_2233 = _T_2148 & _T_2232; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110787.4]
  assign _T_2235 = _T_2234 | _T_2233; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110789.4]
  assign data_hazard_mem = mem_ctrl_wxd & _T_2235; // @[RocketCore.scala 586:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110790.4]
  assign _T_2223 = mem_ctrl_csr != 3'h0; // @[RocketCore.scala 585:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110776.4]
  assign _T_2224 = mem_ctrl_mem & mem_reg_slow_bypass; // @[RocketCore.scala 585:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110777.4]
  assign _T_2225 = _T_2223 | _T_2224; // @[RocketCore.scala 585:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110778.4]
  assign _T_2226 = _T_2225 | mem_ctrl_div; // @[RocketCore.scala 585:84:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110779.4]
  assign _T_2227 = _T_2226 | mem_ctrl_fp; // @[RocketCore.scala 585:100:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110780.4]
  assign mem_cannot_bypass = _T_2227 | mem_ctrl_rocc; // @[RocketCore.scala 585:115:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110781.4]
  assign _T_2247 = data_hazard_mem & mem_cannot_bypass; // @[RocketCore.scala 588:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110803.4]
  assign id_mem_hazard = mem_reg_valid & _T_2247; // @[RocketCore.scala 588:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110805.4]
  assign _T_2285 = id_ex_hazard | id_mem_hazard; // @[RocketCore.scala 611:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110845.4]
  assign _T_2251 = ibuf_io_inst_0_bits_inst_rs1 == wb_waddr; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110809.4]
  assign _T_2252 = _T_2142 & _T_2251; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110810.4]
  assign _T_2253 = ibuf_io_inst_0_bits_inst_rs2 == wb_waddr; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110811.4]
  assign _T_2254 = _T_2145 & _T_2253; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110812.4]
  assign _T_2257 = _T_2252 | _T_2254; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110815.4]
  assign _T_2255 = ibuf_io_inst_0_bits_inst_rd == wb_waddr; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110813.4]
  assign _T_2256 = _T_2148 & _T_2255; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110814.4]
  assign _T_2258 = _T_2257 | _T_2256; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110816.4]
  assign data_hazard_wb = wb_ctrl_wxd & _T_2258; // @[RocketCore.scala 592:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110817.4]
  assign _T_1622 = io_dmem_resp_valid == 1'h0; // @[RocketCore.scala 357:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110187.4]
  assign wb_dcache_miss = wb_ctrl_mem & _T_1622; // @[RocketCore.scala 357:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110188.4]
  assign _T_2099 = wb_ctrl_div | wb_dcache_miss; // @[RocketCore.scala 492:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110609.4]
  assign wb_set_sboard = _T_2099 | wb_ctrl_rocc; // @[RocketCore.scala 492:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110610.4]
  assign _T_2270 = data_hazard_wb & wb_set_sboard; // @[RocketCore.scala 594:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110830.4]
  assign id_wb_hazard = wb_reg_valid & _T_2270; // @[RocketCore.scala 594:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110832.4]
  assign _T_2286 = _T_2285 | id_wb_hazard; // @[RocketCore.scala 611:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110846.4]
  assign _T_2152 = _T_2151[31:1]; // @[RocketCore.scala 785:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110704.4]
  assign _GEN_230 = {{1'd0}, _T_2152}; // @[RocketCore.scala 785:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110705.4]
  assign _T_2153 = _GEN_230 << 1; // @[RocketCore.scala 785:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110705.4]
  assign _T_2162 = _T_2153 >> ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110714.4]
  assign _T_2163 = _T_2162[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110715.4]
  assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data; // @[RocketCore.scala 502:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110626.4]
  assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay; // @[RocketCore.scala 503:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110627.4]
  assign _T_2106 = io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 499:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110620.4]
  assign dmem_resp_xpu = _T_2106 == 1'h0; // @[RocketCore.scala 499:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110622.4]
  assign _T_2116 = dmem_resp_replay & dmem_resp_xpu; // @[RocketCore.scala 518:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110640.4]
  assign _T_2114 = div_io_resp_ready & div_io_resp_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110636.4]
  assign ll_wen = _T_2116 ? 1'h1 : _T_2114; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110641.4]
  assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 501:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110625.4]
  assign ll_waddr = _T_2116 ? dmem_resp_waddr : div_io_resp_bits_tag; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110641.4]
  assign _T_2164 = ll_waddr == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110716.4]
  assign _T_2165 = ll_wen & _T_2164; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110717.4]
  assign _T_2167 = _T_2165 == 1'h0; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110718.4]
  assign _T_2168 = _T_2163 & _T_2167; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110719.4]
  assign _T_2169 = _T_2142 & _T_2168; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110720.4]
  assign _T_2170 = _T_2153 >> ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110721.4]
  assign _T_2171 = _T_2170[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110722.4]
  assign _T_2172 = ll_waddr == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110723.4]
  assign _T_2173 = ll_wen & _T_2172; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110724.4]
  assign _T_2175 = _T_2173 == 1'h0; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110725.4]
  assign _T_2176 = _T_2171 & _T_2175; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110726.4]
  assign _T_2177 = _T_2145 & _T_2176; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110727.4]
  assign _T_2186 = _T_2169 | _T_2177; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110735.4]
  assign _T_2178 = _T_2153 >> ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110728.4]
  assign _T_2179 = _T_2178[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110729.4]
  assign _T_2180 = ll_waddr == ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110730.4]
  assign _T_2181 = ll_wen & _T_2180; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110731.4]
  assign _T_2183 = _T_2181 == 1'h0; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110732.4]
  assign _T_2184 = _T_2179 & _T_2183; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110733.4]
  assign _T_2185 = _T_2148 & _T_2184; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110734.4]
  assign id_sboard_hazard = _T_2186 | _T_2185; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110736.4]
  assign _T_2287 = _T_2286 | id_sboard_hazard; // @[RocketCore.scala 611:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110847.4]
  assign _T_2288 = ex_reg_valid | mem_reg_valid; // @[RocketCore.scala 612:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110848.4]
  assign _T_2289 = _T_2288 | wb_reg_valid; // @[RocketCore.scala 612:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110849.4]
  assign _T_2290 = csr_io_singleStep & _T_2289; // @[RocketCore.scala 612:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110850.4]
  assign _T_2291 = _T_2287 | _T_2290; // @[RocketCore.scala 611:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110851.4]
  assign _T_2294 = id_ctrl_mem & dcache_blocked; // @[RocketCore.scala 614:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110854.4]
  assign _T_2295 = _T_2291 | _T_2294; // @[RocketCore.scala 613:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110855.4]
  assign wb_wxd = wb_reg_valid & wb_ctrl_wxd; // @[RocketCore.scala 491:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110608.4]
  assign _T_2299 = wb_wxd == 1'h0; // @[RocketCore.scala 616:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110858.4]
  assign _T_2300 = div_io_resp_valid & _T_2299; // @[RocketCore.scala 616:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110859.4]
  assign _T_2301 = div_io_req_ready | _T_2300; // @[RocketCore.scala 616:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110860.4]
  assign _T_2303 = _T_2301 == 1'h0; // @[RocketCore.scala 616:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110861.4]
  assign _T_2304 = _T_2303 | div_io_req_valid; // @[RocketCore.scala 616:75:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110862.4]
  assign _T_2305 = id_ctrl_div & _T_2304; // @[RocketCore.scala 616:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110863.4]
  assign _T_2306 = _T_2295 | _T_2305; // @[RocketCore.scala 615:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110864.4]
  assign _T_2307 = _T_2306 | id_do_fence; // @[RocketCore.scala 616:96:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110865.4]
  assign ctrl_stalld = _T_2307 | csr_io_csr_stall; // @[RocketCore.scala 617:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110866.4]
  assign _T_2312 = _T_2311 | ctrl_stalld; // @[RocketCore.scala 619:89:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110870.4]
  assign ctrl_killd = _T_2312 | csr_io_interrupt; // @[RocketCore.scala 619:104:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110871.4]
  assign _T_1544 = ctrl_killd == 1'h0; // @[RocketCore.scala 299:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110083.4]
  assign _T_1546 = take_pc == 1'h0; // @[RocketCore.scala 300:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110085.4]
  assign _T_1547 = _T_1546 & ibuf_io_inst_0_valid; // @[RocketCore.scala 300:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110086.4]
  assign _T_1548 = _T_1547 & ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 300:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110087.4]
  assign _T_1551 = _T_1544 & id_xcpt; // @[RocketCore.scala 301:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110090.4]
  assign _T_1555 = _T_1547 & csr_io_interrupt; // @[RocketCore.scala 302:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110094.4]
  assign _GEN_1 = id_fence_next ? 1'h1 : _GEN_0; // @[RocketCore.scala 308:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110101.6]
  assign _T_1569 = {ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst}; // @[RocketCore.scala 319:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110116.8]
  assign _T_1571 = _T_1569 != 2'h0; // @[RocketCore.scala 319:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110117.8]
  assign _T_1572 = bpu_io_xcpt_if | _T_1571; // @[RocketCore.scala 319:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110118.8]
  assign _GEN_5 = _T_1572 ? 2'h2 : 2'h1; // @[RocketCore.scala 319:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110119.8]
  assign _GEN_7 = id_xcpt ? 4'h0 : id_ctrl_alu_fn; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110104.6]
  assign _GEN_9 = id_xcpt ? _GEN_5 : id_ctrl_sel_alu1; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110104.6]
  assign _GEN_10 = id_xcpt ? 2'h0 : id_ctrl_sel_alu2; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110104.6]
  assign _T_1575 = id_ctrl_fence_i | id_csr_flush; // @[RocketCore.scala 324:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110124.6]
  assign _T_1580 = {_T_2144,_T_2141}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110130.8]
  assign _GEN_12 = id_sfence ? {{1'd0}, _T_1580} : id_ctrl_mem_type; // @[RocketCore.scala 326:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110127.6]
  assign _T_1581 = id_bypass_src_0_0 | id_bypass_src_0_1; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110133.6]
  assign _T_1582 = _T_1581 | id_bypass_src_0_2; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110134.6]
  assign _T_1583 = _T_1582 | id_bypass_src_0_3; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110135.6]
  assign _T_1588 = id_bypass_src_0_2 ? 2'h2 : 2'h3; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110136.6]
  assign _T_1589 = id_bypass_src_0_1 ? 2'h1 : _T_1588; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110137.6]
  assign _T_1590 = id_bypass_src_0_0 ? 2'h0 : _T_1589; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110138.6]
  assign _T_1592 = _T_1583 == 1'h0; // @[RocketCore.scala 335:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110141.6]
  assign _T_1593 = id_ctrl_rxs1 & _T_1592; // @[RocketCore.scala 335:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110142.6]
  assign _T_2120 = replay_wb == 1'h0; // @[RocketCore.scala 526:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110646.4]
  assign _T_2121 = wb_reg_valid & _T_2120; // @[RocketCore.scala 526:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110647.4]
  assign _T_2123 = wb_xcpt == 1'h0; // @[RocketCore.scala 526:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110648.4]
  assign wb_valid = _T_2121 & _T_2123; // @[RocketCore.scala 526:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110649.4]
  assign wb_wen = wb_valid & wb_ctrl_wxd; // @[RocketCore.scala 527:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110650.4]
  assign rf_wen = wb_wen | ll_wen; // @[RocketCore.scala 528:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110651.4]
  assign rf_waddr = ll_wen ? ll_waddr : wb_waddr; // @[RocketCore.scala 529:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110652.4]
  assign _T_2130 = rf_waddr != 5'h0; // @[RocketCore.scala 810:16:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110659.6]
  assign _T_2134 = rf_waddr == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 813:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110665.8]
  assign _T_2124 = dmem_resp_valid & dmem_resp_xpu; // @[RocketCore.scala 530:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110653.4]
  assign ll_wdata = div_io_resp_bits_data; // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110630.4]
  assign _T_2126 = wb_ctrl_csr != 3'h0; // @[RocketCore.scala 532:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110654.4]
  assign _T_2127 = _T_2126 ? csr_io_rw_rdata : bypass_mux_2; // @[RocketCore.scala 532:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110655.4]
  assign _T_2128 = ll_wen ? ll_wdata : _T_2127; // @[RocketCore.scala 531:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110656.4]
  assign rf_wdata = _T_2124 ? io_dmem_resp_bits_data : _T_2128; // @[RocketCore.scala 530:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110657.4]
  assign _GEN_206 = _T_2134 ? rf_wdata : _T_1161; // @[RocketCore.scala 813:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110666.8]
  assign _GEN_212 = _T_2130 ? _GEN_206 : _T_1161; // @[RocketCore.scala 810:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110660.6]
  assign id_rs_0 = rf_wen ? _GEN_212 : _T_1161; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110658.4]
  assign _T_1594 = id_rs_0[1:0]; // @[RocketCore.scala 336:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110144.8]
  assign _T_1595 = id_rs_0[31:2]; // @[RocketCore.scala 337:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110146.8]
  assign _GEN_13 = _T_1593 ? _T_1594 : _T_1590; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110143.6]
  assign _GEN_14 = _T_1593 ? _T_1595 : ex_reg_rs_msb_0; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110143.6]
  assign _T_1596 = id_bypass_src_1_0 | id_bypass_src_1_1; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110149.6]
  assign _T_1597 = _T_1596 | id_bypass_src_1_2; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110150.6]
  assign _T_1598 = _T_1597 | id_bypass_src_1_3; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110151.6]
  assign _T_1603 = id_bypass_src_1_2 ? 2'h2 : 2'h3; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110152.6]
  assign _T_1604 = id_bypass_src_1_1 ? 2'h1 : _T_1603; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110153.6]
  assign _T_1605 = id_bypass_src_1_0 ? 2'h0 : _T_1604; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110154.6]
  assign _T_1607 = _T_1598 == 1'h0; // @[RocketCore.scala 335:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110157.6]
  assign _T_1608 = id_ctrl_rxs2 & _T_1607; // @[RocketCore.scala 335:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110158.6]
  assign _T_2135 = rf_waddr == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 813:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110669.8]
  assign _GEN_207 = _T_2135 ? rf_wdata : _T_1171; // @[RocketCore.scala 813:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110670.8]
  assign _GEN_213 = _T_2130 ? _GEN_207 : _T_1171; // @[RocketCore.scala 810:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110660.6]
  assign id_rs_1 = rf_wen ? _GEN_213 : _T_1171; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110658.4]
  assign _T_1609 = id_rs_1[1:0]; // @[RocketCore.scala 336:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110160.8]
  assign _T_1610 = id_rs_1[31:2]; // @[RocketCore.scala 337:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110162.8]
  assign _GEN_15 = _T_1608 ? _T_1609 : _T_1605; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110159.6]
  assign _GEN_16 = _T_1608 ? _T_1610 : ex_reg_rs_msb_1; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110159.6]
  assign _T_1612 = ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 341:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110167.8]
  assign _T_1614 = _T_1612[1:0]; // @[RocketCore.scala 343:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110169.8]
  assign _T_1615 = _T_1612[31:2]; // @[RocketCore.scala 344:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110171.8]
  assign _GEN_17 = id_illegal_insn ? 1'h0 : _T_1583; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110165.6]
  assign _GEN_18 = id_illegal_insn ? _T_1614 : _GEN_13; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110165.6]
  assign _GEN_19 = id_illegal_insn ? _T_1615 : _GEN_14; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110165.6]
  assign _GEN_21 = _T_1544 ? 1'h0 : ex_ctrl_fp; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_22 = _T_1544 ? 1'h0 : ex_ctrl_rocc; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_23 = _T_1544 ? id_ctrl_branch : ex_ctrl_branch; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_24 = _T_1544 ? id_ctrl_jal : ex_ctrl_jal; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_25 = _T_1544 ? id_ctrl_jalr : ex_ctrl_jalr; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_26 = _T_1544 ? id_ctrl_rxs2 : ex_ctrl_rxs2; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_28 = _T_1544 ? _GEN_10 : ex_ctrl_sel_alu2; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_29 = _T_1544 ? _GEN_9 : ex_ctrl_sel_alu1; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_30 = _T_1544 ? id_ctrl_sel_imm : ex_ctrl_sel_imm; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_32 = _T_1544 ? _GEN_7 : ex_ctrl_alu_fn; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_33 = _T_1544 ? id_ctrl_mem : ex_ctrl_mem; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_34 = _T_1544 ? id_ctrl_mem_cmd : ex_ctrl_mem_cmd; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_35 = _T_1544 ? _GEN_12 : ex_ctrl_mem_type; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_40 = _T_1544 ? id_ctrl_div : ex_ctrl_div; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_41 = _T_1544 ? id_ctrl_wxd : ex_ctrl_wxd; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_42 = _T_1544 ? id_csr : ex_ctrl_csr; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_43 = _T_1544 ? id_ctrl_fence_i : ex_ctrl_fence_i; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_47 = _T_1544 ? 1'h0 : ex_reg_rvc; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_48 = _T_1544 ? _GEN_1 : _GEN_0; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_49 = _T_1544 ? _T_1575 : ex_reg_flush_pipe; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _T_2249 = mem_reg_valid & data_hazard_mem; // @[RocketCore.scala 589:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110806.4]
  assign id_load_use = _T_2249 & mem_ctrl_mem; // @[RocketCore.scala 589:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110807.4]
  assign _GEN_50 = _T_1544 ? id_load_use : ex_reg_load_use; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_51 = _T_1544 ? _GEN_17 : ex_reg_rs_bypass_0; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_52 = _T_1544 ? _GEN_18 : ex_reg_rs_lsb_0; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_53 = _T_1544 ? _GEN_19 : ex_reg_rs_msb_0; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_54 = _T_1544 ? _T_1598 : ex_reg_rs_bypass_1; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_55 = _T_1544 ? _GEN_15 : ex_reg_rs_lsb_1; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _GEN_56 = _T_1544 ? _GEN_16 : ex_reg_rs_msb_1; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110097.4]
  assign _T_1618 = _T_1544 | csr_io_interrupt; // @[RocketCore.scala 347:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110176.4]
  assign _T_1619 = _T_1618 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 347:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110177.4]
  assign _GEN_57 = _T_1619 ? id_cause : ex_cause; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110178.4]
  assign _GEN_58 = _T_1619 ? ibuf_io_inst_0_bits_inst_bits : ex_reg_inst; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110178.4]
  assign _GEN_60 = _T_1619 ? ibuf_io_pc : ex_reg_pc; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110178.4]
  assign _T_1620 = ex_reg_valid | ex_reg_replay; // @[RocketCore.scala 356:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110185.4]
  assign ex_pc_valid = _T_1620 | ex_reg_xcpt_interrupt; // @[RocketCore.scala 356:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110186.4]
  assign _T_1624 = io_dmem_req_ready == 1'h0; // @[RocketCore.scala 358:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110189.4]
  assign _T_1625 = ex_ctrl_mem & _T_1624; // @[RocketCore.scala 358:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110190.4]
  assign _T_1627 = div_io_req_ready == 1'h0; // @[RocketCore.scala 359:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110191.4]
  assign _T_1628 = ex_ctrl_div & _T_1627; // @[RocketCore.scala 359:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110192.4]
  assign replay_ex_structural = _T_1625 | _T_1628; // @[RocketCore.scala 358:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110193.4]
  assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use; // @[RocketCore.scala 360:43:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110194.4]
  assign _T_1629 = replay_ex_structural | replay_ex_load_use; // @[RocketCore.scala 361:75:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110195.4]
  assign _T_1630 = ex_reg_valid & _T_1629; // @[RocketCore.scala 361:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110196.4]
  assign replay_ex = ex_reg_replay | _T_1630; // @[RocketCore.scala 361:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110197.4]
  assign _T_1631 = take_pc | replay_ex; // @[RocketCore.scala 362:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110198.4]
  assign _T_1633 = ex_reg_valid == 1'h0; // @[RocketCore.scala 362:51:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110199.4]
  assign ctrl_killx = _T_1631 | _T_1633; // @[RocketCore.scala 362:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110200.4]
  assign _T_1635 = ex_ctrl_mem_cmd == 5'h7; // @[RocketCore.scala 364:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110201.4]
  assign _T_1649 = 3'h0 == ex_ctrl_mem_type; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110208.4]
  assign _T_1650 = 3'h4 == ex_ctrl_mem_type; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110209.4]
  assign _T_1651 = 3'h1 == ex_ctrl_mem_type; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110210.4]
  assign _T_1652 = 3'h5 == ex_ctrl_mem_type; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110211.4]
  assign _T_1655 = _T_1649 | _T_1650; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110213.4]
  assign _T_1656 = _T_1655 | _T_1651; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110214.4]
  assign _T_1657 = _T_1656 | _T_1652; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110215.4]
  assign ex_slow_bypass = _T_1635 | _T_1657; // @[RocketCore.scala 364:50:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110216.4]
  assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt; // @[RocketCore.scala 368:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110220.4]
  assign _T_1677 = mem_reg_valid | mem_reg_replay; // @[RocketCore.scala 374:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110231.4]
  assign mem_pc_valid = _T_1677 | mem_reg_xcpt_interrupt; // @[RocketCore.scala 374:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110232.4]
  assign _T_1678 = $signed(mem_reg_pc); // @[RocketCore.scala 375:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110233.4]
  assign _T_1684 = mem_reg_inst[31]; // @[RocketCore.scala 820:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110236.4]
  assign _T_1685 = $signed(_T_1684); // @[RocketCore.scala 820:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110237.4]
  assign _T_1691 = {11{_T_1685}}; // @[RocketCore.scala 821:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110242.4]
  assign _T_1697 = mem_reg_inst[19:12]; // @[RocketCore.scala 822:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110246.4]
  assign _T_1698 = $signed(_T_1697); // @[RocketCore.scala 822:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110247.4]
  assign _T_1699 = {8{_T_1685}}; // @[RocketCore.scala 822:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110248.4]
  assign _T_1708 = mem_reg_inst[20]; // @[RocketCore.scala 824:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110253.4]
  assign _T_1709 = $signed(_T_1708); // @[RocketCore.scala 824:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110254.4]
  assign _T_1712 = mem_reg_inst[7]; // @[RocketCore.scala 825:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110256.4]
  assign _T_1713 = $signed(_T_1712); // @[RocketCore.scala 825:43:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110257.4]
  assign _T_1723 = mem_reg_inst[30:25]; // @[RocketCore.scala 826:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110264.4]
  assign _T_1733 = mem_reg_inst[11:8]; // @[RocketCore.scala 828:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110270.4]
  assign _T_1737 = mem_reg_inst[24:21]; // @[RocketCore.scala 829:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110273.4]
  assign _T_1754 = {_T_1723,_T_1733}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110286.4]
  assign _T_1755 = {_T_1754,1'h0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110287.4]
  assign _T_1756 = $unsigned(_T_1713); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110288.4]
  assign _T_1757 = $unsigned(_T_1699); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110289.4]
  assign _T_1758 = {_T_1757,_T_1756}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110290.4]
  assign _T_1759 = $unsigned(_T_1691); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110291.4]
  assign _T_1760 = $unsigned(_T_1685); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110292.4]
  assign _T_1761 = {_T_1760,_T_1759}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110293.4]
  assign _T_1762 = {_T_1761,_T_1758}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110294.4]
  assign _T_1763 = {_T_1762,_T_1755}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110295.4]
  assign _T_1764 = $signed(_T_1763); // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110296.4]
  assign _T_1839 = {_T_1723,_T_1737}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110348.4]
  assign _T_1840 = {_T_1839,1'h0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110349.4]
  assign _T_1841 = $unsigned(_T_1709); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110350.4]
  assign _T_1842 = $unsigned(_T_1698); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110351.4]
  assign _T_1843 = {_T_1842,_T_1841}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110352.4]
  assign _T_1847 = {_T_1761,_T_1843}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110356.4]
  assign _T_1848 = {_T_1847,_T_1840}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110357.4]
  assign _T_1849 = $signed(_T_1848); // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110358.4]
  assign _T_1852 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 378:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110359.4]
  assign _T_1853 = mem_ctrl_jal ? $signed(_T_1849) : $signed({{28{_T_1852[3]}},_T_1852}); // @[RocketCore.scala 377:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110360.4]
  assign _T_1854 = _T_1882 ? $signed(_T_1764) : $signed(_T_1853); // @[RocketCore.scala 376:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110361.4]
  assign _T_1855 = $signed(_T_1678) + $signed(_T_1854); // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110362.4]
  assign _T_1856 = _T_1855[31:0]; // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110363.4]
  assign mem_br_target = $signed(_T_1856); // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110364.4]
  assign _T_1857 = mem_ctrl_jalr | mem_reg_sfence; // @[RocketCore.scala 379:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110365.4]
  assign _T_1858 = $signed(bypass_mux_1); // @[RocketCore.scala 379:106:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110366.4]
  assign _T_1859 = _T_1857 ? $signed(_T_1858) : $signed(mem_br_target); // @[RocketCore.scala 379:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110367.4]
  assign _T_1861 = $signed(_T_1859) & $signed(-32'sh2); // @[RocketCore.scala 379:129:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110368.4]
  assign _T_1862 = $signed(_T_1861); // @[RocketCore.scala 379:129:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110369.4]
  assign mem_npc = $unsigned(_T_1862); // @[RocketCore.scala 379:141:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110370.4]
  assign _T_1871 = mem_npc[1]; // @[RocketCore.scala 383:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110378.4]
  assign _T_1872 = _T_1307 & _T_1871; // @[RocketCore.scala 383:56:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110379.4]
  assign _T_1874 = mem_reg_sfence == 1'h0; // @[RocketCore.scala 383:73:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110380.4]
  assign mem_npc_misaligned = _T_1872 & _T_1874; // @[RocketCore.scala 383:70:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110381.4]
  assign _T_1876 = mem_reg_xcpt == 1'h0; // @[RocketCore.scala 384:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110382.4]
  assign _T_1877 = mem_ctrl_jalr ^ mem_npc_misaligned; // @[RocketCore.scala 384:59:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110383.4]
  assign _T_1878 = _T_1876 & _T_1877; // @[RocketCore.scala 384:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110384.4]
  assign _T_1880 = _T_1878 ? $signed(mem_br_target) : $signed(_T_1858); // @[RocketCore.scala 384:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110386.4]
  assign mem_int_wdata = $unsigned(_T_1880); // @[RocketCore.scala 384:119:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110387.4]
  assign _T_1890 = ctrl_killx == 1'h0; // @[RocketCore.scala 391:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110399.4]
  assign _T_1893 = _T_1546 & replay_ex; // @[RocketCore.scala 392:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110402.4]
  assign _T_1896 = _T_1890 & ex_xcpt; // @[RocketCore.scala 393:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110405.4]
  assign _T_1899 = _T_1546 & ex_reg_xcpt_interrupt; // @[RocketCore.scala 394:45:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110408.4]
  assign _T_1900 = mem_reg_valid & mem_reg_flush_pipe; // @[RocketCore.scala 398:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110410.4]
  assign _T_1903 = ex_ctrl_mem_cmd == 5'h0; // @[Consts.scala 93:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110418.8]
  assign _T_1905 = ex_ctrl_mem_cmd == 5'h6; // @[Consts.scala 93:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110419.8]
  assign _T_1906 = _T_1903 | _T_1905; // @[Consts.scala 93:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110420.8]
  assign _T_1909 = _T_1906 | _T_1635; // @[Consts.scala 93:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110422.8]
  assign _T_1914 = ex_ctrl_mem_cmd == 5'h4; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110423.8]
  assign _T_1915 = ex_ctrl_mem_cmd == 5'h9; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110424.8]
  assign _T_1916 = ex_ctrl_mem_cmd == 5'ha; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110425.8]
  assign _T_1917 = ex_ctrl_mem_cmd == 5'hb; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110426.8]
  assign _T_1918 = _T_1914 | _T_1915; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110427.8]
  assign _T_1919 = _T_1918 | _T_1916; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110428.8]
  assign _T_1920 = _T_1919 | _T_1917; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110429.8]
  assign _T_1926 = ex_ctrl_mem_cmd == 5'h8; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110430.8]
  assign _T_1927 = ex_ctrl_mem_cmd == 5'hc; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110431.8]
  assign _T_1928 = ex_ctrl_mem_cmd == 5'hd; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110432.8]
  assign _T_1929 = ex_ctrl_mem_cmd == 5'he; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110433.8]
  assign _T_1930 = ex_ctrl_mem_cmd == 5'hf; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110434.8]
  assign _T_1931 = _T_1926 | _T_1927; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110435.8]
  assign _T_1932 = _T_1931 | _T_1928; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110436.8]
  assign _T_1933 = _T_1932 | _T_1929; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110437.8]
  assign _T_1934 = _T_1933 | _T_1930; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110438.8]
  assign _T_1935 = _T_1920 | _T_1934; // @[Consts.scala 91:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110439.8]
  assign _T_1936 = _T_1909 | _T_1935; // @[Consts.scala 93:75:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110440.8]
  assign _T_1937 = ex_ctrl_mem & _T_1936; // @[RocketCore.scala 403:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110441.8]
  assign _T_1939 = ex_ctrl_mem_cmd == 5'h1; // @[Consts.scala 94:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110443.8]
  assign _T_1941 = ex_ctrl_mem_cmd == 5'h11; // @[Consts.scala 94:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110444.8]
  assign _T_1942 = _T_1939 | _T_1941; // @[Consts.scala 94:42:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110445.8]
  assign _T_1945 = _T_1942 | _T_1635; // @[Consts.scala 94:59:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110447.8]
  assign _T_1972 = _T_1945 | _T_1935; // @[Consts.scala 94:76:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110465.8]
  assign _T_1973 = ex_ctrl_mem & _T_1972; // @[RocketCore.scala 404:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110466.8]
  assign _T_1974 = ex_ctrl_mem | ex_ctrl_rocc; // @[RocketCore.scala 417:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110478.8]
  assign _T_1976 = ex_ctrl_rxs2 & _T_1974; // @[RocketCore.scala 417:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110480.8]
  assign _T_1978 = ex_ctrl_rocc ? 3'h2 : ex_ctrl_mem_type; // @[RocketCore.scala 418:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110482.10]
  assign _T_1980 = _T_1978[1:0]; // @[AMOALU.scala 10:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110483.10]
  assign _T_1982 = _T_1980 == 2'h0; // @[AMOALU.scala 26:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110484.10]
  assign _T_1983 = ex_rs_1[7:0]; // @[AMOALU.scala 26:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110485.10]
  assign _T_1984 = {_T_1983,_T_1983}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110486.10]
  assign _T_1985 = {_T_1984,_T_1984}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110487.10]
  assign _T_1987 = _T_1980 == 2'h1; // @[AMOALU.scala 26:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110488.10]
  assign _T_1988 = ex_rs_1[15:0]; // @[AMOALU.scala 26:66:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110489.10]
  assign _T_1989 = {_T_1988,_T_1988}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110490.10]
  assign _T_1990 = _T_1987 ? _T_1989 : ex_rs_1; // @[AMOALU.scala 26:13:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110491.10]
  assign _T_1991 = _T_1982 ? _T_1985 : _T_1990; // @[AMOALU.scala 26:13:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110492.10]
  assign _GEN_69 = _T_1976 ? _T_1991 : mem_reg_rs2; // @[RocketCore.scala 417:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110481.8]
  assign _T_1992 = ex_ctrl_jalr & csr_io_status_debug; // @[RocketCore.scala 421:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110495.8]
  assign _GEN_70 = _T_1992 ? 1'h1 : ex_ctrl_fence_i; // @[RocketCore.scala 421:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110496.8]
  assign _GEN_71 = _T_1992 ? 1'h1 : ex_reg_flush_pipe; // @[RocketCore.scala 421:48:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110496.8]
  assign _GEN_73 = ex_pc_valid ? ex_ctrl_fp : mem_ctrl_fp; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_74 = ex_pc_valid ? ex_ctrl_rocc : mem_ctrl_rocc; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_75 = ex_pc_valid ? ex_ctrl_branch : mem_ctrl_branch; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_76 = ex_pc_valid ? ex_ctrl_jal : mem_ctrl_jal; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_77 = ex_pc_valid ? ex_ctrl_jalr : mem_ctrl_jalr; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_85 = ex_pc_valid ? ex_ctrl_mem : mem_ctrl_mem; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_92 = ex_pc_valid ? ex_ctrl_div : mem_ctrl_div; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_93 = ex_pc_valid ? ex_ctrl_wxd : mem_ctrl_wxd; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_94 = ex_pc_valid ? ex_ctrl_csr : mem_ctrl_csr; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_95 = ex_pc_valid ? _GEN_70 : mem_ctrl_fence_i; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_99 = ex_pc_valid ? ex_reg_rvc : mem_reg_rvc; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_100 = ex_pc_valid ? _T_1937 : mem_reg_load; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_101 = ex_pc_valid ? _T_1973 : mem_reg_store; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_102 = ex_pc_valid ? 1'h0 : mem_reg_sfence; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_111 = ex_pc_valid ? _GEN_71 : mem_reg_flush_pipe; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_112 = ex_pc_valid ? ex_slow_bypass : mem_reg_slow_bypass; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_113 = ex_pc_valid ? ex_cause : mem_reg_cause; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_114 = ex_pc_valid ? ex_reg_inst : mem_reg_inst; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_116 = ex_pc_valid ? ex_reg_pc : mem_reg_pc; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_117 = ex_pc_valid ? alu_io_out : bypass_mux_1; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_118 = ex_pc_valid ? alu_io_cmp_out : mem_br_taken; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_119 = ex_pc_valid ? _GEN_69 : mem_reg_rs2; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110415.6]
  assign _GEN_120 = _T_1900 ? 1'h0 : _GEN_102; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_122 = _T_1900 ? mem_ctrl_fp : _GEN_73; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_123 = _T_1900 ? mem_ctrl_rocc : _GEN_74; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_124 = _T_1900 ? mem_ctrl_branch : _GEN_75; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_125 = _T_1900 ? mem_ctrl_jal : _GEN_76; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_126 = _T_1900 ? mem_ctrl_jalr : _GEN_77; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_134 = _T_1900 ? mem_ctrl_mem : _GEN_85; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_141 = _T_1900 ? mem_ctrl_div : _GEN_92; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_142 = _T_1900 ? mem_ctrl_wxd : _GEN_93; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_143 = _T_1900 ? mem_ctrl_csr : _GEN_94; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_144 = _T_1900 ? mem_ctrl_fence_i : _GEN_95; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_148 = _T_1900 ? mem_reg_rvc : _GEN_99; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_149 = _T_1900 ? mem_reg_load : _GEN_100; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_150 = _T_1900 ? mem_reg_store : _GEN_101; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_159 = _T_1900 ? mem_reg_flush_pipe : _GEN_111; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_160 = _T_1900 ? mem_reg_slow_bypass : _GEN_112; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_161 = _T_1900 ? mem_reg_cause : _GEN_113; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_162 = _T_1900 ? mem_reg_inst : _GEN_114; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_164 = _T_1900 ? mem_reg_pc : _GEN_116; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_165 = _T_1900 ? bypass_mux_1 : _GEN_117; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_166 = _T_1900 ? mem_br_taken : _GEN_118; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _GEN_167 = _T_1900 ? mem_reg_rs2 : _GEN_119; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110411.4]
  assign _T_1995 = mem_reg_load & bpu_io_xcpt_ld; // @[RocketCore.scala 428:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110501.4]
  assign _T_1996 = mem_reg_store & bpu_io_xcpt_st; // @[RocketCore.scala 428:75:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110502.4]
  assign mem_breakpoint = _T_1995 | _T_1996; // @[RocketCore.scala 428:57:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110503.4]
  assign _T_1997 = mem_reg_load & bpu_io_debug_ld; // @[RocketCore.scala 429:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110504.4]
  assign _T_1998 = mem_reg_store & bpu_io_debug_st; // @[RocketCore.scala 429:82:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110505.4]
  assign mem_debug_breakpoint = _T_1997 | _T_1998; // @[RocketCore.scala 429:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110506.4]
  assign _T_2002 = mem_debug_breakpoint | mem_breakpoint; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110507.4]
  assign mem_new_xcpt = _T_2002 | mem_npc_misaligned; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110508.4]
  assign _T_2003 = mem_breakpoint ? 2'h3 : 2'h0; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110509.4]
  assign mem_new_cause = mem_debug_breakpoint ? 4'he : {{2'd0}, _T_2003}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110510.4]
  assign _T_2004 = mem_reg_xcpt_interrupt | mem_reg_xcpt; // @[RocketCore.scala 436:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110511.4]
  assign _T_2005 = mem_reg_valid & mem_new_xcpt; // @[RocketCore.scala 437:20:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110512.4]
  assign mem_xcpt = _T_2004 | _T_2005; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110513.4]
  assign mem_cause = _T_2004 ? mem_reg_cause : {{28'd0}, mem_new_cause}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110514.4]
  assign dcache_kill_mem = _T_1382 & io_dmem_replay_next; // @[RocketCore.scala 446:55:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110528.4]
  assign replay_mem = dcache_kill_mem | mem_reg_replay; // @[RocketCore.scala 448:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110531.4]
  assign _T_2027 = dcache_kill_mem | take_pc_wb; // @[RocketCore.scala 449:38:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110533.4]
  assign _T_2028 = _T_2027 | mem_reg_xcpt; // @[RocketCore.scala 449:52:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110534.4]
  assign _T_2030 = mem_reg_valid == 1'h0; // @[RocketCore.scala 449:71:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110535.4]
  assign killm_common = _T_2028 | _T_2030; // @[RocketCore.scala 449:68:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110536.4]
  assign _T_2031 = div_io_req_ready & div_io_req_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110537.4]
  assign _T_2034 = killm_common & _T_2033; // @[RocketCore.scala 450:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110540.4]
  assign ctrl_killm = killm_common | mem_xcpt; // @[RocketCore.scala 451:33:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110542.4]
  assign _T_2037 = ctrl_killm == 1'h0; // @[RocketCore.scala 454:19:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110544.4]
  assign _T_2039 = take_pc_wb == 1'h0; // @[RocketCore.scala 455:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110546.4]
  assign _T_2040 = replay_mem & _T_2039; // @[RocketCore.scala 455:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110547.4]
  assign _T_2043 = mem_xcpt & _T_2039; // @[RocketCore.scala 456:27:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110550.4]
  assign _T_2046 = _T_2037 & mem_reg_flush_pipe; // @[RocketCore.scala 457:36:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110553.4]
  assign _T_2049 = _T_1876 & mem_ctrl_fp; // @[RocketCore.scala 461:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110559.6]
  assign _T_2050 = _T_2049 & mem_ctrl_wxd; // @[RocketCore.scala 461:54:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110560.6]
  assign _T_2051 = _T_2050 ? 32'h0 : mem_int_wdata; // @[RocketCore.scala 461:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110561.6]
  assign _GEN_171 = mem_pc_valid ? mem_ctrl_rocc : wb_ctrl_rocc; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_182 = mem_pc_valid ? mem_ctrl_mem : wb_ctrl_mem; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_189 = mem_pc_valid ? mem_ctrl_div : wb_ctrl_div; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_190 = mem_pc_valid ? mem_ctrl_wxd : wb_ctrl_wxd; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_191 = mem_pc_valid ? mem_ctrl_csr : wb_ctrl_csr; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_192 = mem_pc_valid ? mem_ctrl_fence_i : wb_ctrl_fence_i; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_197 = mem_pc_valid ? _T_2051 : bypass_mux_2; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_199 = mem_pc_valid ? mem_cause : wb_reg_cause; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_200 = mem_pc_valid ? mem_reg_inst : wb_reg_inst; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _GEN_202 = mem_pc_valid ? mem_reg_pc : wb_reg_pc; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110555.4]
  assign _T_2076 = _T_2066 ? 3'h7 : 3'h5; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110590.4]
  assign _T_2077 = _T_2063 ? 4'hd : {{1'd0}, _T_2076}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110591.4]
  assign _T_2078 = _T_2060 ? 4'hf : _T_2077; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110592.4]
  assign _T_2079 = _T_2057 ? 4'h4 : _T_2078; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110593.4]
  assign _T_2080 = _T_2054 ? 4'h6 : _T_2079; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110594.4]
  assign wb_cause = wb_reg_xcpt ? wb_reg_cause : {{28'd0}, _T_2080}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110595.4]
  assign _GEN_203 = _T_2116 ? 1'h0 : _T_2299; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110641.4]
  assign _T_2132 = ~ rf_waddr; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110662.8]
  assign _GEN_216 = rf_wen ? _T_2130 : 1'h0; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110658.4]
  assign _T_2136 = ibuf_io_inst_0_bits_raw[31:20]; // @[RocketCore.scala 537:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110675.4]
  assign _T_2137 = wb_reg_inst[31:20]; // @[RocketCore.scala 552:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110691.4]
  assign _T_2139 = wb_reg_valid ? wb_ctrl_csr : 3'h0; // @[RocketCore.scala 553:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110693.4]
  assign _T_2156 = 32'h1 << ll_waddr; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110706.4]
  assign _T_2158 = ll_wen ? _T_2156 : 32'h0; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110707.4]
  assign _T_2159 = ~ _T_2158; // @[RocketCore.scala 780:64:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110708.4]
  assign _T_2160 = _T_2153 & _T_2159; // @[RocketCore.scala 780:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110709.4]
  assign _GEN_220 = ll_wen ? _T_2160 : _T_2151; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110711.4]
  assign _T_2187 = wb_set_sboard & wb_wen; // @[RocketCore.scala 573:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110737.4]
  assign _T_2189 = 32'h1 << wb_waddr; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110738.4]
  assign _T_2191 = _T_2187 ? _T_2189 : 32'h0; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110739.4]
  assign _T_2192 = _T_2160 | _T_2191; // @[RocketCore.scala 779:60:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110740.4]
  assign _T_2193 = ll_wen | _T_2187; // @[RocketCore.scala 791:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110741.4]
  assign _GEN_221 = _T_2193 ? _T_2192 : _GEN_220; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110742.4]
  assign _T_2275 = io_dmem_req_valid | dcache_blocked; // @[RocketCore.scala 606:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110835.4]
  assign _T_2276 = _T_1624 & _T_2275; // @[RocketCore.scala 606:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110836.4]
  assign _T_2316 = wb_xcpt | csr_io_eret; // @[RocketCore.scala 624:17:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110876.4]
  assign _T_2317 = replay_wb ? wb_reg_pc : mem_npc; // @[RocketCore.scala 625:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110877.4]
  assign _T_2318 = _T_2316 ? csr_io_evec : _T_2317; // @[RocketCore.scala 624:8:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110878.4]
  assign _T_2319 = wb_reg_valid & wb_ctrl_fence_i; // @[RocketCore.scala 627:40:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110880.4]
  assign _T_2321 = io_dmem_s2_nack == 1'h0; // @[RocketCore.scala 627:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110881.4]
  assign _T_2322 = _T_2319 & _T_2321; // @[RocketCore.scala 627:59:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110882.4]
  assign _T_2327 = ctrl_stalld == 1'h0; // @[RocketCore.scala 635:28:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110893.4]
  assign _T_2364 = ex_reg_valid & ex_ctrl_mem; // @[RocketCore.scala 666:41:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110942.4]
  assign ex_dcache_tag = {ex_waddr,ex_ctrl_fp}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110944.4]
  assign _T_2366 = mem_ctrl_fp ? 32'h0 : mem_reg_rs2; // @[RocketCore.scala 675:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110951.4]
  assign _T_2367 = killm_common | mem_breakpoint; // @[RocketCore.scala 676:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110953.4]
  assign _T_2385 = wb_reg_inst[19:15]; // @[RocketCore.scala 681:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110978.4]
  assign _T_2386 = wb_reg_inst[24:20]; // @[RocketCore.scala 681:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110980.4]
  assign _T_2392 = csr_io_time; // @[RocketCore.scala 742:32:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110991.4]
  assign _T_2394 = csr_io_trace_0_exception == 1'h0; // @[RocketCore.scala 742:65:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110992.4]
  assign _T_2395 = csr_io_trace_0_valid & _T_2394; // @[RocketCore.scala 742:62:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110993.4]
  assign _T_2396 = csr_io_trace_0_iaddr; // @[RocketCore.scala 743:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110994.4]
  assign _T_2399 = _T_2187 == 1'h0; // @[RocketCore.scala 744:24:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110996.4]
  assign _T_2400 = rf_wen & _T_2399; // @[RocketCore.scala 744:21:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110997.4]
  assign _T_2402 = _T_2400 ? rf_waddr : 5'h0; // @[RocketCore.scala 744:13:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@110998.4]
  assign _T_2415 = reset == 1'h0; // @[RocketCore.scala 741:11:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111010.4]
  assign _T_2417 = plusarg_reader_out > 32'h0; // @[RocketCore.scala 753:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111016.4]
  assign _T_2418 = csr_io_time < plusarg_reader_out; // @[RocketCore.scala 754:25:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111018.6]
  assign _T_2420 = _T_2418 | reset; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111020.6]
  assign _T_2422 = _T_2420 == 1'h0; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111021.6]
  assign io_imem_req_valid = take_pc;
  assign io_imem_req_bits_pc = _T_2318;
  assign io_imem_req_bits_speculative = _T_2039;
  assign io_imem_resp_ready = ibuf_io_imem_ready;
  assign io_imem_flush_icache = _T_2322;
  assign io_dmem_req_valid = _T_2364;
  assign io_dmem_req_bits_addr = alu_io_adder_out;
  assign io_dmem_req_bits_tag = ex_dcache_tag;
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd;
  assign io_dmem_req_bits_typ = ex_ctrl_mem_type;
  assign io_dmem_s1_kill = _T_2367;
  assign io_dmem_s1_data_data = _T_2366;
  assign io_dmem_invalidate_lr = wb_xcpt;
  assign ibuf_clock = clock;
  assign ibuf_io_imem_valid = io_imem_resp_valid;
  assign ibuf_io_imem_bits_btb_taken = io_imem_resp_bits_btb_taken;
  assign ibuf_io_imem_bits_btb_bridx = io_imem_resp_bits_btb_bridx;
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc;
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data;
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst;
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst;
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay;
  assign ibuf_io_inst_0_ready = _T_2327;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_interrupts_debug = io_interrupts_debug;
  assign csr_io_interrupts_mtip = io_interrupts_mtip;
  assign csr_io_interrupts_msip = io_interrupts_msip;
  assign csr_io_interrupts_meip = io_interrupts_meip;
  assign csr_io_interrupts_ided = io_interrupts_ided; //#
  assign csr_io_interrupts_dded = io_interrupts_dded; //#
  assign csr_io_rw_addr = _T_2137;
  assign csr_io_rw_cmd = _T_2139;
  assign csr_io_rw_wdata = bypass_mux_2;
  assign csr_io_decode_0_csr = _T_2136;
  assign csr_io_exception = wb_xcpt;
  assign csr_io_retire = wb_valid;
  assign csr_io_cause = wb_cause;
  assign csr_io_pc = wb_reg_pc;
  assign csr_io_badaddr = bypass_mux_2;
  assign csr_io_inst_0 = wb_reg_inst;
  assign bpu_io_status_debug = csr_io_status_debug;
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action;
  assign bpu_io_bp_0_control_chain = csr_io_bp_0_control_chain;
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch;
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x;
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w;
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r;
  assign bpu_io_bp_0_address = csr_io_bp_0_address;
  assign bpu_io_bp_1_control_action = csr_io_bp_1_control_action;
  assign bpu_io_bp_1_control_tmatch = csr_io_bp_1_control_tmatch;
  assign bpu_io_bp_1_control_x = csr_io_bp_1_control_x;
  assign bpu_io_bp_1_control_w = csr_io_bp_1_control_w;
  assign bpu_io_bp_1_control_r = csr_io_bp_1_control_r;
  assign bpu_io_bp_1_address = csr_io_bp_1_address;
  assign bpu_io_pc = ibuf_io_pc;
  assign bpu_io_ea = bypass_mux_1;
  assign alu_io_fn = ex_ctrl_alu_fn;
  assign alu_io_in2 = _T_1540;
  assign alu_io_in1 = _T_1541;
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_req_valid = _T_1542;
  assign div_io_req_bits_fn = ex_ctrl_alu_fn;
  assign div_io_req_bits_in1 = ex_rs_0;
  assign div_io_req_bits_in2 = ex_rs_1;
  assign div_io_req_bits_tag = ex_waddr;
  assign div_io_kill = _T_2034;
  assign div_io_resp_ready = _GEN_203;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  ex_ctrl_fp = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  ex_ctrl_rocc = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  ex_ctrl_branch = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  ex_ctrl_jal = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  ex_ctrl_jalr = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  ex_ctrl_rxs2 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  ex_ctrl_sel_alu2 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  ex_ctrl_sel_alu1 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  ex_ctrl_sel_imm = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  ex_ctrl_alu_fn = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  ex_ctrl_mem = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  ex_ctrl_mem_cmd = _RAND_11[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  ex_ctrl_mem_type = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  ex_ctrl_div = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  ex_ctrl_wxd = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  ex_ctrl_csr = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  ex_ctrl_fence_i = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  mem_ctrl_fp = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  mem_ctrl_rocc = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  mem_ctrl_branch = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  mem_ctrl_jal = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  mem_ctrl_jalr = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  mem_ctrl_mem = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  mem_ctrl_div = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  mem_ctrl_wxd = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  mem_ctrl_csr = _RAND_25[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  mem_ctrl_fence_i = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  wb_ctrl_rocc = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  wb_ctrl_mem = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  wb_ctrl_div = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  wb_ctrl_wxd = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  wb_ctrl_csr = _RAND_31[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  wb_ctrl_fence_i = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  ex_reg_xcpt_interrupt = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  ex_reg_valid = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  ex_reg_rvc = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  ex_reg_xcpt = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  ex_reg_flush_pipe = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  ex_reg_load_use = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  ex_cause = _RAND_39[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  ex_reg_replay = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  ex_reg_pc = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  ex_reg_inst = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  mem_reg_xcpt_interrupt = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  mem_reg_valid = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  mem_reg_rvc = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  mem_reg_xcpt = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  mem_reg_replay = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  mem_reg_flush_pipe = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  mem_reg_cause = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  mem_reg_slow_bypass = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  mem_reg_load = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  mem_reg_store = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  mem_reg_sfence = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  mem_reg_pc = _RAND_54[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  mem_reg_inst = _RAND_55[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  bypass_mux_1 = _RAND_56[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  mem_reg_rs2 = _RAND_57[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  mem_br_taken = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  wb_reg_valid = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  wb_reg_xcpt = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  wb_reg_replay = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  wb_reg_flush_pipe = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  wb_reg_cause = _RAND_63[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{$random}};
  wb_reg_pc = _RAND_64[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{$random}};
  wb_reg_inst = _RAND_65[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{$random}};
  bypass_mux_2 = _RAND_66[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{$random}};
  id_reg_fence = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_68 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    _T_1151[initvar] = _RAND_68[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_69 = {1{$random}};
  _RAND_70 = {1{$random}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{$random}};
  ex_reg_rs_bypass_0 = _RAND_71[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{$random}};
  ex_reg_rs_bypass_1 = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{$random}};
  ex_reg_rs_lsb_0 = _RAND_73[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{$random}};
  ex_reg_rs_lsb_1 = _RAND_74[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{$random}};
  ex_reg_rs_msb_0 = _RAND_75[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{$random}};
  ex_reg_rs_msb_1 = _RAND_76[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{$random}};
  _T_2033 = _RAND_77[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{$random}};
  _T_2151 = _RAND_78[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{$random}};
  dcache_blocked = _RAND_79[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{$random}};
  _T_2405 = _RAND_80[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{$random}};
  _T_2407 = _RAND_81[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{$random}};
  _T_2410 = _RAND_82[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{$random}};
  _T_2412 = _RAND_83[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_1544) begin
      ex_ctrl_fp <= 1'h0;
    end
    if (_T_1544) begin
      ex_ctrl_rocc <= 1'h0;
    end
    if (_T_1544) begin
      ex_ctrl_branch <= id_ctrl_branch;
    end
    if (_T_1544) begin
      ex_ctrl_jal <= id_ctrl_jal;
    end
    if (_T_1544) begin
      ex_ctrl_jalr <= id_ctrl_jalr;
    end
    if (_T_1544) begin
      ex_ctrl_rxs2 <= id_ctrl_rxs2;
    end
    if (_T_1544) begin
      if (id_xcpt) begin
        ex_ctrl_sel_alu2 <= 2'h0;
      end else begin
        ex_ctrl_sel_alu2 <= id_ctrl_sel_alu2;
      end
    end
    if (_T_1544) begin
      if (id_xcpt) begin
        if (_T_1572) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else begin
          ex_ctrl_sel_alu1 <= 2'h1;
        end
      end else begin
        ex_ctrl_sel_alu1 <= id_ctrl_sel_alu1;
      end
    end
    if (_T_1544) begin
      ex_ctrl_sel_imm <= id_ctrl_sel_imm;
    end
    if (_T_1544) begin
      if (id_xcpt) begin
        ex_ctrl_alu_fn <= 4'h0;
      end else begin
        ex_ctrl_alu_fn <= id_ctrl_alu_fn;
      end
    end
    if (_T_1544) begin
      ex_ctrl_mem <= id_ctrl_mem;
    end
    if (_T_1544) begin
      ex_ctrl_mem_cmd <= id_ctrl_mem_cmd;
    end
    if (_T_1544) begin
      if (id_sfence) begin
        ex_ctrl_mem_type <= {{1'd0}, _T_1580};
      end else begin
        ex_ctrl_mem_type <= id_ctrl_mem_type;
      end
    end
    if (_T_1544) begin
      ex_ctrl_div <= id_ctrl_div;
    end
    if (_T_1544) begin
      ex_ctrl_wxd <= id_ctrl_wxd;
    end
    if (_T_1544) begin
      if (id_csr_ren) begin
        ex_ctrl_csr <= 3'h5;
      end else begin
        ex_ctrl_csr <= id_ctrl_csr;
      end
    end
    if (_T_1544) begin
      ex_ctrl_fence_i <= id_ctrl_fence_i;
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_fp <= ex_ctrl_fp;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rocc <= ex_ctrl_rocc;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_branch <= ex_ctrl_branch;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jal <= ex_ctrl_jal;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jalr <= ex_ctrl_jalr;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_mem <= ex_ctrl_mem;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_div <= ex_ctrl_div;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wxd <= ex_ctrl_wxd;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_ctrl_csr <= ex_ctrl_csr;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        if (_T_1992) begin
          mem_ctrl_fence_i <= 1'h1;
        end else begin
          mem_ctrl_fence_i <= ex_ctrl_fence_i;
        end
      end
    end
    if (mem_pc_valid) begin
      wb_ctrl_rocc <= mem_ctrl_rocc;
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem <= mem_ctrl_mem;
    end
    if (mem_pc_valid) begin
      wb_ctrl_div <= mem_ctrl_div;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wxd <= mem_ctrl_wxd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_csr <= mem_ctrl_csr;
    end
    if (mem_pc_valid) begin
      wb_ctrl_fence_i <= mem_ctrl_fence_i;
    end
    ex_reg_xcpt_interrupt <= _T_1555;
    ex_reg_valid <= _T_1544;
    if (_T_1544) begin
      ex_reg_rvc <= 1'h0;
    end
    ex_reg_xcpt <= _T_1551;
    if (_T_1544) begin
      ex_reg_flush_pipe <= _T_1575;
    end
    if (_T_1544) begin
      ex_reg_load_use <= id_load_use;
    end
    if (_T_1619) begin
      if (csr_io_interrupt) begin
        ex_cause <= csr_io_interrupt_cause;
      end else begin
        ex_cause <= {{28'd0}, _T_1363};
      end
    end
    ex_reg_replay <= _T_1548;
    if (_T_1619) begin
      ex_reg_pc <= ibuf_io_pc;
    end
    if (_T_1619) begin
      ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
    end
    mem_reg_xcpt_interrupt <= _T_1899;
    mem_reg_valid <= _T_1890;
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_reg_rvc <= ex_reg_rvc;
      end
    end
    mem_reg_xcpt <= _T_1896;
    mem_reg_replay <= _T_1893;
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        if (_T_1992) begin
          mem_reg_flush_pipe <= 1'h1;
        end else begin
          mem_reg_flush_pipe <= ex_reg_flush_pipe;
        end
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_reg_cause <= ex_cause;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_reg_slow_bypass <= ex_slow_bypass;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_reg_load <= _T_1937;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_reg_store <= _T_1973;
      end
    end
    if (_T_1900) begin
      mem_reg_sfence <= 1'h0;
    end else begin
      if (ex_pc_valid) begin
        mem_reg_sfence <= 1'h0;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_reg_pc <= ex_reg_pc;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_reg_inst <= ex_reg_inst;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        bypass_mux_1 <= alu_io_out;
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        if (_T_1976) begin
          if (_T_1982) begin
            mem_reg_rs2 <= _T_1985;
          end else begin
            if (_T_1987) begin
              mem_reg_rs2 <= _T_1989;
            end else begin
              if (ex_reg_rs_bypass_1) begin
                if (_T_1433) begin
                  mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
                end else begin
                  if (_T_1430) begin
                    mem_reg_rs2 <= bypass_mux_2;
                  end else begin
                    if (_T_1427) begin
                      mem_reg_rs2 <= bypass_mux_1;
                    end else begin
                      mem_reg_rs2 <= 32'h0;
                    end
                  end
                end
              end else begin
                mem_reg_rs2 <= _T_1435;
              end
            end
          end
        end
      end
    end
    if (!(_T_1900)) begin
      if (ex_pc_valid) begin
        mem_br_taken <= alu_io_cmp_out;
      end
    end
    wb_reg_valid <= _T_2037;
    wb_reg_xcpt <= _T_2043;
    wb_reg_replay <= _T_2040;
    wb_reg_flush_pipe <= _T_2046;
    if (mem_pc_valid) begin
      if (_T_2004) begin
        wb_reg_cause <= mem_reg_cause;
      end else begin
        wb_reg_cause <= {{28'd0}, mem_new_cause};
      end
    end
    if (mem_pc_valid) begin
      wb_reg_pc <= mem_reg_pc;
    end
    if (mem_pc_valid) begin
      wb_reg_inst <= mem_reg_inst;
    end
    if (mem_pc_valid) begin
      if (_T_2050) begin
        bypass_mux_2 <= 32'h0;
      end else begin
        bypass_mux_2 <= mem_int_wdata;
      end
    end
    if (reset) begin
      id_reg_fence <= 1'h0;
    end else begin
      if (_T_1544) begin
        if (id_fence_next) begin
          id_reg_fence <= 1'h1;
        end else begin
          if (_T_1327) begin
            id_reg_fence <= 1'h0;
          end
        end
      end else begin
        if (_T_1327) begin
          id_reg_fence <= 1'h0;
        end
      end
    end
    if(_T_1151__T_2133_en & _T_1151__T_2133_mask) begin
      _T_1151[_T_1151__T_2133_addr] <= _T_1151__T_2133_data; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@109740.4]
    end
    if (_T_1544) begin
      if (id_illegal_insn) begin
        ex_reg_rs_bypass_0 <= 1'h0;
      end else begin
        ex_reg_rs_bypass_0 <= _T_1583;
      end
    end
    if (_T_1544) begin
      ex_reg_rs_bypass_1 <= _T_1598;
    end
    if (_T_1544) begin
      if (id_illegal_insn) begin
        ex_reg_rs_lsb_0 <= _T_1614;
      end else begin
        if (_T_1593) begin
          ex_reg_rs_lsb_0 <= _T_1594;
        end else begin
          if (id_bypass_src_0_0) begin
            ex_reg_rs_lsb_0 <= 2'h0;
          end else begin
            if (id_bypass_src_0_1) begin
              ex_reg_rs_lsb_0 <= 2'h1;
            end else begin
              if (id_bypass_src_0_2) begin
                ex_reg_rs_lsb_0 <= 2'h2;
              end else begin
                ex_reg_rs_lsb_0 <= 2'h3;
              end
            end
          end
        end
      end
    end
    if (_T_1544) begin
      if (_T_1608) begin
        ex_reg_rs_lsb_1 <= _T_1609;
      end else begin
        if (id_bypass_src_1_0) begin
          ex_reg_rs_lsb_1 <= 2'h0;
        end else begin
          if (id_bypass_src_1_1) begin
            ex_reg_rs_lsb_1 <= 2'h1;
          end else begin
            if (id_bypass_src_1_2) begin
              ex_reg_rs_lsb_1 <= 2'h2;
            end else begin
              ex_reg_rs_lsb_1 <= 2'h3;
            end
          end
        end
      end
    end
    if (_T_1544) begin
      if (id_illegal_insn) begin
        ex_reg_rs_msb_0 <= _T_1615;
      end else begin
        if (_T_1593) begin
          ex_reg_rs_msb_0 <= _T_1595;
        end
      end
    end
    if (_T_1544) begin
      if (_T_1608) begin
        ex_reg_rs_msb_1 <= _T_1610;
      end
    end
    _T_2033 <= _T_2031;
    if (reset) begin
      _T_2151 <= 32'h0;
    end else begin
      if (_T_2193) begin
        _T_2151 <= _T_2192;
      end else begin
        if (ll_wen) begin
          _T_2151 <= _T_2160;
        end
      end
    end
    dcache_blocked <= _T_2276;
    if (ex_reg_rs_bypass_0) begin
      if (_T_1423) begin
        _T_2405 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_1420) begin
          _T_2405 <= bypass_mux_2;
        end else begin
          if (_T_1417) begin
            _T_2405 <= bypass_mux_1;
          end else begin
            _T_2405 <= 32'h0;
          end
        end
      end
    end else begin
      _T_2405 <= _T_1425;
    end
    _T_2407 <= _T_2405;
    if (ex_reg_rs_bypass_1) begin
      if (_T_1433) begin
        _T_2410 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_1430) begin
          _T_2410 <= bypass_mux_2;
        end else begin
          if (_T_1427) begin
            _T_2410 <= bypass_mux_1;
          end else begin
            _T_2410 <= 32'h0;
          end
        end
      end
    end else begin
      _T_2410 <= _T_1435;
    end
    _T_2412 <= _T_2410;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2415) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%h] W[r%d=%h][%d] R[r%d=%h] R[r%d=%h] inst=[%h] DASM(%h)\n",1'h0,_T_2392,_T_2395,_T_2396,_T_2402,rf_wdata,rf_wen,_T_2385,_T_2407,_T_2386,_T_2412,csr_io_trace_0_insn,csr_io_trace_0_insn); // @[RocketCore.scala 741:11:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111012.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2417 & _T_2422) begin
          $fwrite(32'h80000002,"Assertion failed: Maximum Core Cycles reached.\n    at RocketCore.scala:754 assert (csr.io.time < max_core_cycles, \"Maximum Core Cycles reached.\")\n"); // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111023.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_2417 & _T_2422) begin
          $fatal; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111024.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
