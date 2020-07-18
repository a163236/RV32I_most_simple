module InstructionMemory(
  input         clock,
  input  [31:0] io_in,
  output [31:0] io_out
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] memory [0:255]; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_12_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_12_addr; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_1_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_1_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_1_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_1_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_2_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_2_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_2_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_2_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_3_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_3_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_3_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_3_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_4_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_4_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_4_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_4_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_5_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_5_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_5_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_5_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_6_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_6_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_6_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_6_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_7_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_7_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_7_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_7_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_8_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_8_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_8_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_8_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_9_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_9_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_9_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_9_en; // @[InstructionMemory.scala 10:19]
  wire [31:0] memory__T_10_data; // @[InstructionMemory.scala 10:19]
  wire [7:0] memory__T_10_addr; // @[InstructionMemory.scala 10:19]
  wire  memory__T_10_mask; // @[InstructionMemory.scala 10:19]
  wire  memory__T_10_en; // @[InstructionMemory.scala 10:19]
  assign memory__T_12_addr = io_in[7:0];
  assign memory__T_12_data = memory[memory__T_12_addr]; // @[InstructionMemory.scala 10:19]
  assign memory__T_data = 32'h93;
  assign memory__T_addr = 8'h0;
  assign memory__T_mask = 1'h1;
  assign memory__T_en = 1'h1;
  assign memory__T_1_data = 32'h100113;
  assign memory__T_1_addr = 8'h4;
  assign memory__T_1_mask = 1'h1;
  assign memory__T_1_en = 1'h1;
  assign memory__T_2_data = 32'h100213;
  assign memory__T_2_addr = 8'h8;
  assign memory__T_2_mask = 1'h1;
  assign memory__T_2_en = 1'h1;
  assign memory__T_3_data = 32'h1400313;
  assign memory__T_3_addr = 8'hc;
  assign memory__T_3_mask = 1'h1;
  assign memory__T_3_en = 1'h1;
  assign memory__T_4_data = 32'h2081b3;
  assign memory__T_4_addr = 8'h10;
  assign memory__T_4_mask = 1'h1;
  assign memory__T_4_en = 1'h1;
  assign memory__T_5_data = 32'h102023;
  assign memory__T_5_addr = 8'h14;
  assign memory__T_5_mask = 1'h1;
  assign memory__T_5_en = 1'h1;
  assign memory__T_6_data = 32'h202223;
  assign memory__T_6_addr = 8'h18;
  assign memory__T_6_mask = 1'h1;
  assign memory__T_6_en = 1'h1;
  assign memory__T_7_data = 32'h322423;
  assign memory__T_7_addr = 8'h1c;
  assign memory__T_7_mask = 1'h1;
  assign memory__T_7_en = 1'h1;
  assign memory__T_8_data = 32'h128293;
  assign memory__T_8_addr = 8'h20;
  assign memory__T_8_mask = 1'h1;
  assign memory__T_8_en = 1'h1;
  assign memory__T_9_data = 32'h40125213;
  assign memory__T_9_addr = 8'h24;
  assign memory__T_9_mask = 1'h1;
  assign memory__T_9_en = 1'h1;
  assign memory__T_10_data = 32'hfe629ee3;
  assign memory__T_10_addr = 8'h28;
  assign memory__T_10_mask = 1'h1;
  assign memory__T_10_en = 1'h1;
  assign io_out = memory__T_12_data; // @[InstructionMemory.scala 49:10]
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
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    memory[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(memory__T_en & memory__T_mask) begin
      memory[memory__T_addr] <= memory__T_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_1_en & memory__T_1_mask) begin
      memory[memory__T_1_addr] <= memory__T_1_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_2_en & memory__T_2_mask) begin
      memory[memory__T_2_addr] <= memory__T_2_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_3_en & memory__T_3_mask) begin
      memory[memory__T_3_addr] <= memory__T_3_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_4_en & memory__T_4_mask) begin
      memory[memory__T_4_addr] <= memory__T_4_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_5_en & memory__T_5_mask) begin
      memory[memory__T_5_addr] <= memory__T_5_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_6_en & memory__T_6_mask) begin
      memory[memory__T_6_addr] <= memory__T_6_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_7_en & memory__T_7_mask) begin
      memory[memory__T_7_addr] <= memory__T_7_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_8_en & memory__T_8_mask) begin
      memory[memory__T_8_addr] <= memory__T_8_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_9_en & memory__T_9_mask) begin
      memory[memory__T_9_addr] <= memory__T_9_data; // @[InstructionMemory.scala 10:19]
    end
    if(memory__T_10_en & memory__T_10_mask) begin
      memory[memory__T_10_addr] <= memory__T_10_data; // @[InstructionMemory.scala 10:19]
    end
  end
endmodule
module Reg(
  input         clock,
  input  [31:0] io_rs1,
  input  [31:0] io_rs2,
  input  [31:0] io_rd,
  input  [31:0] io_RegWEn,
  input  [31:0] io_WriteData,
  output [31:0] io_out_data1,
  output [31:0] io_out_data2
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] regfile [0:31]; // @[Reg.scala 15:20]
  wire [31:0] regfile__T_1_data; // @[Reg.scala 15:20]
  wire [4:0] regfile__T_1_addr; // @[Reg.scala 15:20]
  wire [31:0] regfile__T_3_data; // @[Reg.scala 15:20]
  wire [4:0] regfile__T_3_addr; // @[Reg.scala 15:20]
  wire [31:0] regfile__T_8_data; // @[Reg.scala 15:20]
  wire [4:0] regfile__T_8_addr; // @[Reg.scala 15:20]
  wire  regfile__T_8_mask; // @[Reg.scala 15:20]
  wire  regfile__T_8_en; // @[Reg.scala 15:20]
  wire  _T_4 = io_RegWEn == 32'h1; // @[Reg.scala 25:17]
  wire  _T_5 = io_WriteData != 32'h0; // @[Reg.scala 25:42]
  assign regfile__T_1_addr = io_rs1[4:0];
  assign regfile__T_1_data = regfile[regfile__T_1_addr]; // @[Reg.scala 15:20]
  assign regfile__T_3_addr = io_rs2[4:0];
  assign regfile__T_3_data = regfile[regfile__T_3_addr]; // @[Reg.scala 15:20]
  assign regfile__T_8_data = io_WriteData;
  assign regfile__T_8_addr = io_rd[4:0];
  assign regfile__T_8_mask = 1'h1;
  assign regfile__T_8_en = _T_4 & _T_5;
  assign io_out_data1 = regfile__T_1_data; // @[Reg.scala 22:16]
  assign io_out_data2 = regfile__T_3_data; // @[Reg.scala 23:16]
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
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(regfile__T_8_en & regfile__T_8_mask) begin
      regfile[regfile__T_8_addr] <= regfile__T_8_data; // @[Reg.scala 15:20]
    end
  end
endmodule
module Control(
  input  [31:0] io_inst,
  input         io_BrEq,
  input         io_BrLt,
  output [1:0]  io_PCSel,
  output [2:0]  io_ImmSel,
  output        io_RegWEn,
  output        io_Asel,
  output        io_Bsel,
  output [3:0]  io_ALUSel,
  output [2:0]  io_WBSel
);
  wire [1:0] _T = io_BrEq ? 2'h1 : 2'h0; // @[Control.scala 72:20]
  wire [1:0] _T_1 = io_BrEq ? 2'h0 : 2'h1; // @[Control.scala 73:20]
  wire [1:0] _T_2 = io_BrLt ? 2'h1 : 2'h0; // @[Control.scala 74:20]
  wire  _T_3 = ~io_BrLt; // @[Control.scala 75:33]
  wire  _T_4 = io_BrEq | _T_3; // @[Control.scala 75:30]
  wire [1:0] _T_5 = _T_4 ? 2'h1 : 2'h0; // @[Control.scala 75:20]
  wire [31:0] _T_6 = io_inst & 32'h7f; // @[Lookup.scala 31:38]
  wire  _T_7 = 32'h6f == _T_6; // @[Lookup.scala 31:38]
  wire [31:0] _T_8 = io_inst & 32'h707f; // @[Lookup.scala 31:38]
  wire  _T_9 = 32'h63 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_11 = 32'h1063 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_13 = 32'h4063 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_15 = 32'h5063 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_17 = 32'h13 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_19 = 32'h2013 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_21 = 32'h3013 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_23 = 32'h4013 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_25 = 32'h6013 == _T_8; // @[Lookup.scala 31:38]
  wire  _T_27 = 32'h7013 == _T_8; // @[Lookup.scala 31:38]
  wire [31:0] _T_28 = io_inst & 32'hfe00707f; // @[Lookup.scala 31:38]
  wire  _T_29 = 32'h33 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_31 = 32'h40000033 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_33 = 32'h1033 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_35 = 32'h2033 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_37 = 32'h3033 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_39 = 32'h4033 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_41 = 32'h5033 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_43 = 32'h40005033 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_45 = 32'h6033 == _T_28; // @[Lookup.scala 31:38]
  wire  _T_47 = 32'h7033 == _T_28; // @[Lookup.scala 31:38]
  wire [1:0] _T_64 = _T_15 ? _T_5 : 2'h0; // @[Lookup.scala 33:37]
  wire [1:0] _T_65 = _T_13 ? _T_2 : _T_64; // @[Lookup.scala 33:37]
  wire [1:0] _T_66 = _T_11 ? _T_1 : _T_65; // @[Lookup.scala 33:37]
  wire [1:0] _T_67 = _T_9 ? _T : _T_66; // @[Lookup.scala 33:37]
  wire [2:0] _T_78 = _T_27 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _T_79 = _T_25 ? 3'h1 : _T_78; // @[Lookup.scala 33:37]
  wire [2:0] _T_80 = _T_23 ? 3'h1 : _T_79; // @[Lookup.scala 33:37]
  wire [2:0] _T_81 = _T_21 ? 3'h1 : _T_80; // @[Lookup.scala 33:37]
  wire [2:0] _T_82 = _T_19 ? 3'h1 : _T_81; // @[Lookup.scala 33:37]
  wire [2:0] _T_83 = _T_17 ? 3'h1 : _T_82; // @[Lookup.scala 33:37]
  wire [2:0] _T_84 = _T_15 ? 3'h5 : _T_83; // @[Lookup.scala 33:37]
  wire [2:0] _T_85 = _T_13 ? 3'h5 : _T_84; // @[Lookup.scala 33:37]
  wire [2:0] _T_86 = _T_11 ? 3'h5 : _T_85; // @[Lookup.scala 33:37]
  wire [2:0] _T_87 = _T_9 ? 3'h5 : _T_86; // @[Lookup.scala 33:37]
  wire  _T_104 = _T_15 ? 1'h0 : 1'h1; // @[Lookup.scala 33:37]
  wire  _T_105 = _T_13 ? 1'h0 : _T_104; // @[Lookup.scala 33:37]
  wire  _T_106 = _T_11 ? 1'h0 : _T_105; // @[Lookup.scala 33:37]
  wire  _T_107 = _T_9 ? 1'h0 : _T_106; // @[Lookup.scala 33:37]
  wire  _T_145 = _T_13 | _T_15; // @[Lookup.scala 33:37]
  wire  _T_146 = _T_11 | _T_145; // @[Lookup.scala 33:37]
  wire  _T_147 = _T_9 | _T_146; // @[Lookup.scala 33:37]
  wire  _T_159 = _T_25 | _T_27; // @[Lookup.scala 33:37]
  wire  _T_160 = _T_23 | _T_159; // @[Lookup.scala 33:37]
  wire  _T_161 = _T_21 | _T_160; // @[Lookup.scala 33:37]
  wire  _T_162 = _T_19 | _T_161; // @[Lookup.scala 33:37]
  wire  _T_163 = _T_17 | _T_162; // @[Lookup.scala 33:37]
  wire  _T_164 = _T_15 | _T_163; // @[Lookup.scala 33:37]
  wire  _T_165 = _T_13 | _T_164; // @[Lookup.scala 33:37]
  wire  _T_166 = _T_11 | _T_165; // @[Lookup.scala 33:37]
  wire  _T_167 = _T_9 | _T_166; // @[Lookup.scala 33:37]
  wire [3:0] _T_168 = _T_47 ? 4'h2 : 4'h0; // @[Lookup.scala 33:37]
  wire [3:0] _T_169 = _T_45 ? 4'h3 : _T_168; // @[Lookup.scala 33:37]
  wire [3:0] _T_170 = _T_43 ? 4'h9 : _T_169; // @[Lookup.scala 33:37]
  wire [3:0] _T_171 = _T_41 ? 4'h8 : _T_170; // @[Lookup.scala 33:37]
  wire [3:0] _T_172 = _T_39 ? 4'h4 : _T_171; // @[Lookup.scala 33:37]
  wire [3:0] _T_173 = _T_37 ? 4'h7 : _T_172; // @[Lookup.scala 33:37]
  wire [3:0] _T_174 = _T_35 ? 4'h5 : _T_173; // @[Lookup.scala 33:37]
  wire [3:0] _T_175 = _T_33 ? 4'h6 : _T_174; // @[Lookup.scala 33:37]
  wire [3:0] _T_176 = _T_31 ? 4'h1 : _T_175; // @[Lookup.scala 33:37]
  wire [3:0] _T_177 = _T_29 ? 4'h0 : _T_176; // @[Lookup.scala 33:37]
  wire [3:0] _T_178 = _T_27 ? 4'h2 : _T_177; // @[Lookup.scala 33:37]
  wire [3:0] _T_179 = _T_25 ? 4'h3 : _T_178; // @[Lookup.scala 33:37]
  wire [3:0] _T_180 = _T_23 ? 4'h4 : _T_179; // @[Lookup.scala 33:37]
  wire [3:0] _T_181 = _T_21 ? 4'h7 : _T_180; // @[Lookup.scala 33:37]
  wire [3:0] _T_182 = _T_19 ? 4'h5 : _T_181; // @[Lookup.scala 33:37]
  wire [3:0] _T_183 = _T_17 ? 4'h0 : _T_182; // @[Lookup.scala 33:37]
  wire [3:0] _T_184 = _T_15 ? 4'h0 : _T_183; // @[Lookup.scala 33:37]
  wire [3:0] _T_185 = _T_13 ? 4'h0 : _T_184; // @[Lookup.scala 33:37]
  wire [3:0] _T_186 = _T_11 ? 4'h0 : _T_185; // @[Lookup.scala 33:37]
  wire [3:0] _T_187 = _T_9 ? 4'h0 : _T_186; // @[Lookup.scala 33:37]
  wire [1:0] ctrlSingals_8 = _T_7 ? 2'h2 : 2'h1; // @[Lookup.scala 33:37]
  assign io_PCSel = _T_7 ? 2'h1 : _T_67; // @[Control.scala 102:12]
  assign io_ImmSel = _T_7 ? 3'h4 : _T_87; // @[Control.scala 103:13]
  assign io_RegWEn = _T_7 | _T_107; // @[Control.scala 104:13]
  assign io_Asel = _T_7 | _T_147; // @[Control.scala 106:11]
  assign io_Bsel = _T_7 | _T_167; // @[Control.scala 107:11]
  assign io_ALUSel = _T_7 ? 4'h0 : _T_187; // @[Control.scala 108:13]
  assign io_WBSel = {{1'd0}, ctrlSingals_8}; // @[Control.scala 110:12]
endmodule
module BranchComp(
  input  [31:0] io_DataA,
  input  [31:0] io_DataB,
  output        io_BrEq,
  output        io_BrLt
);
  assign io_BrEq = $signed(io_DataA) == $signed(io_DataB); // @[BranchComp.scala 14:13 BranchComp.scala 17:13]
  assign io_BrLt = $signed(io_DataA) < $signed(io_DataB); // @[BranchComp.scala 15:13 BranchComp.scala 18:13]
endmodule
module ImmGen(
  input  [31:0] io_inst,
  input  [2:0]  io_ImmSel,
  output [31:0] io_imm31
);
  wire [19:0] _T_2 = io_inst[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  wire [31:0] Iimm = {_T_2,io_inst[31:20]}; // @[Cat.scala 29:58]
  wire [30:0] Simm = {_T_2,io_inst[31:25],io_inst[11:8]}; // @[Cat.scala 29:58]
  wire [18:0] _T_12 = io_inst[31] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 72:12]
  wire [31:0] Bimm = {_T_12,io_inst[7],io_inst[31:25],io_inst[11:8],1'h0}; // @[Cat.scala 29:58]
  wire [31:0] Uimm = {io_inst[31:12],12'h0}; // @[Cat.scala 29:58]
  wire [11:0] _T_23 = io_inst[31] ? 12'hfff : 12'h0; // @[Bitwise.scala 72:12]
  wire [32:0] Jimm = {_T_23,io_inst[19:12],io_inst[20],io_inst[31:25],io_inst[24:21],1'h0}; // @[Cat.scala 29:58]
  wire  _T_34 = 3'h1 == io_ImmSel; // @[Mux.scala 80:60]
  wire [31:0] _T_35 = _T_34 ? Iimm : 32'h0; // @[Mux.scala 80:57]
  wire  _T_36 = 3'h2 == io_ImmSel; // @[Mux.scala 80:60]
  wire [31:0] _T_37 = _T_36 ? {{1'd0}, Simm} : _T_35; // @[Mux.scala 80:57]
  wire  _T_38 = 3'h5 == io_ImmSel; // @[Mux.scala 80:60]
  wire [31:0] _T_39 = _T_38 ? Bimm : _T_37; // @[Mux.scala 80:57]
  wire  _T_40 = 3'h3 == io_ImmSel; // @[Mux.scala 80:60]
  wire [31:0] _T_41 = _T_40 ? Uimm : _T_39; // @[Mux.scala 80:57]
  wire  _T_42 = 3'h4 == io_ImmSel; // @[Mux.scala 80:60]
  wire [32:0] _T_43 = _T_42 ? Jimm : {{1'd0}, _T_41}; // @[Mux.scala 80:57]
  assign io_imm31 = _T_43[31:0]; // @[ImmGen.scala 33:12]
endmodule
module ALU(
  input  [31:0] io_inA,
  input  [31:0] io_inB,
  input  [3:0]  io_ALUSel,
  output [31:0] io_ALUout
);
  wire [31:0] _T_5 = $signed(io_inA) + $signed(io_inB); // @[ALU.scala 33:58]
  wire [31:0] _T_11 = $signed(io_inA) - $signed(io_inB); // @[ALU.scala 34:58]
  wire [31:0] _T_12 = io_inA & io_inB; // @[ALU.scala 35:24]
  wire [31:0] _T_13 = io_inA | io_inB; // @[ALU.scala 36:23]
  wire [31:0] _T_14 = io_inA ^ io_inB; // @[ALU.scala 37:24]
  wire  _T_17 = $signed(io_inA) < $signed(io_inB); // @[ALU.scala 38:35]
  wire [62:0] _GEN_0 = {{31'd0}, io_inA}; // @[ALU.scala 39:24]
  wire [62:0] _T_20 = _GEN_0 << io_inB[4:0]; // @[ALU.scala 39:24]
  wire  _T_21 = io_inA < io_inB; // @[ALU.scala 40:27]
  wire [31:0] _T_24 = io_inA >> io_inB[4:0]; // @[ALU.scala 41:24]
  wire [31:0] _T_27 = $signed(io_inA) >>> io_inB; // @[ALU.scala 42:51]
  wire  _T_28 = 4'h0 == io_ALUSel; // @[Mux.scala 80:60]
  wire [31:0] _T_29 = _T_28 ? _T_5 : 32'h0; // @[Mux.scala 80:57]
  wire  _T_30 = 4'h1 == io_ALUSel; // @[Mux.scala 80:60]
  wire [31:0] _T_31 = _T_30 ? _T_11 : _T_29; // @[Mux.scala 80:57]
  wire  _T_32 = 4'h2 == io_ALUSel; // @[Mux.scala 80:60]
  wire [31:0] _T_33 = _T_32 ? _T_12 : _T_31; // @[Mux.scala 80:57]
  wire  _T_34 = 4'h3 == io_ALUSel; // @[Mux.scala 80:60]
  wire [31:0] _T_35 = _T_34 ? _T_13 : _T_33; // @[Mux.scala 80:57]
  wire  _T_36 = 4'h4 == io_ALUSel; // @[Mux.scala 80:60]
  wire [31:0] _T_37 = _T_36 ? _T_14 : _T_35; // @[Mux.scala 80:57]
  wire  _T_38 = 4'h5 == io_ALUSel; // @[Mux.scala 80:60]
  wire [31:0] _T_39 = _T_38 ? {{31'd0}, _T_17} : _T_37; // @[Mux.scala 80:57]
  wire  _T_40 = 4'h6 == io_ALUSel; // @[Mux.scala 80:60]
  wire [62:0] _T_41 = _T_40 ? _T_20 : {{31'd0}, _T_39}; // @[Mux.scala 80:57]
  wire  _T_42 = 4'h7 == io_ALUSel; // @[Mux.scala 80:60]
  wire [62:0] _T_43 = _T_42 ? {{62'd0}, _T_21} : _T_41; // @[Mux.scala 80:57]
  wire  _T_44 = 4'h8 == io_ALUSel; // @[Mux.scala 80:60]
  wire [62:0] _T_45 = _T_44 ? {{31'd0}, _T_24} : _T_43; // @[Mux.scala 80:57]
  wire  _T_46 = 4'h9 == io_ALUSel; // @[Mux.scala 80:60]
  wire [62:0] _T_47 = _T_46 ? {{31'd0}, _T_27} : _T_45; // @[Mux.scala 80:57]
  assign io_ALUout = _T_47[31:0]; // @[ALU.scala 32:13]
endmodule
module DataMemory(
  input         clock,
  input  [31:0] io_Addr,
  input  [31:0] io_DataW,
  output [31:0] io_DataR
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] DMEM [0:255]; // @[DataMemory.scala 17:17]
  wire [31:0] DMEM__T_3_data; // @[DataMemory.scala 17:17]
  wire [7:0] DMEM__T_3_addr; // @[DataMemory.scala 17:17]
  wire [31:0] DMEM__T_1_data; // @[DataMemory.scala 17:17]
  wire [7:0] DMEM__T_1_addr; // @[DataMemory.scala 17:17]
  wire  DMEM__T_1_mask; // @[DataMemory.scala 17:17]
  wire  DMEM__T_1_en; // @[DataMemory.scala 17:17]
  assign DMEM__T_3_addr = io_Addr[7:0];
  assign DMEM__T_3_data = DMEM[DMEM__T_3_addr]; // @[DataMemory.scala 17:17]
  assign DMEM__T_1_data = io_DataW;
  assign DMEM__T_1_addr = io_Addr[7:0];
  assign DMEM__T_1_mask = 1'h1;
  assign DMEM__T_1_en = 1'h0;
  assign io_DataR = DMEM__T_3_data; // @[DataMemory.scala 22:12]
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
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    DMEM[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(DMEM__T_1_en & DMEM__T_1_mask) begin
      DMEM[DMEM__T_1_addr] <= DMEM__T_1_data; // @[DataMemory.scala 17:17]
    end
  end
endmodule
module dpath(
  input         clock,
  input         reset,
  output [31:0] io_path_aluout,
  output [31:0] io_path_pcout
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  IMEM_clock; // @[dpath.scala 18:20]
  wire [31:0] IMEM_io_in; // @[dpath.scala 18:20]
  wire [31:0] IMEM_io_out; // @[dpath.scala 18:20]
  wire  Reg_clock; // @[dpath.scala 19:19]
  wire [31:0] Reg_io_rs1; // @[dpath.scala 19:19]
  wire [31:0] Reg_io_rs2; // @[dpath.scala 19:19]
  wire [31:0] Reg_io_rd; // @[dpath.scala 19:19]
  wire [31:0] Reg_io_RegWEn; // @[dpath.scala 19:19]
  wire [31:0] Reg_io_WriteData; // @[dpath.scala 19:19]
  wire [31:0] Reg_io_out_data1; // @[dpath.scala 19:19]
  wire [31:0] Reg_io_out_data2; // @[dpath.scala 19:19]
  wire [31:0] Control_io_inst; // @[dpath.scala 20:23]
  wire  Control_io_BrEq; // @[dpath.scala 20:23]
  wire  Control_io_BrLt; // @[dpath.scala 20:23]
  wire [1:0] Control_io_PCSel; // @[dpath.scala 20:23]
  wire [2:0] Control_io_ImmSel; // @[dpath.scala 20:23]
  wire  Control_io_RegWEn; // @[dpath.scala 20:23]
  wire  Control_io_Asel; // @[dpath.scala 20:23]
  wire  Control_io_Bsel; // @[dpath.scala 20:23]
  wire [3:0] Control_io_ALUSel; // @[dpath.scala 20:23]
  wire [2:0] Control_io_WBSel; // @[dpath.scala 20:23]
  wire [31:0] BranchComp_io_DataA; // @[dpath.scala 21:26]
  wire [31:0] BranchComp_io_DataB; // @[dpath.scala 21:26]
  wire  BranchComp_io_BrEq; // @[dpath.scala 21:26]
  wire  BranchComp_io_BrLt; // @[dpath.scala 21:26]
  wire [31:0] ImmGen_io_inst; // @[dpath.scala 22:22]
  wire [2:0] ImmGen_io_ImmSel; // @[dpath.scala 22:22]
  wire [31:0] ImmGen_io_imm31; // @[dpath.scala 22:22]
  wire [31:0] ALU_io_inA; // @[dpath.scala 23:19]
  wire [31:0] ALU_io_inB; // @[dpath.scala 23:19]
  wire [3:0] ALU_io_ALUSel; // @[dpath.scala 23:19]
  wire [31:0] ALU_io_ALUout; // @[dpath.scala 23:19]
  wire  DMEM_clock; // @[dpath.scala 24:20]
  wire [31:0] DMEM_io_Addr; // @[dpath.scala 24:20]
  wire [31:0] DMEM_io_DataW; // @[dpath.scala 24:20]
  wire [31:0] DMEM_io_DataR; // @[dpath.scala 24:20]
  reg [31:0] pc; // @[dpath.scala 17:19]
  wire  _T_3 = Control_io_Asel; // @[dpath.scala 47:36]
  wire  _T_5 = Control_io_Bsel; // @[dpath.scala 48:36]
  wire [31:0] _T_8 = pc + 32'h4; // @[dpath.scala 60:18]
  wire  _T_9 = 3'h0 == Control_io_WBSel; // @[Mux.scala 80:60]
  wire [31:0] _T_10 = _T_9 ? DMEM_io_DataR : 32'h0; // @[Mux.scala 80:57]
  wire  _T_11 = 3'h1 == Control_io_WBSel; // @[Mux.scala 80:60]
  wire [31:0] _T_12 = _T_11 ? ALU_io_ALUout : _T_10; // @[Mux.scala 80:57]
  wire  _T_13 = 3'h2 == Control_io_WBSel; // @[Mux.scala 80:60]
  wire  _T_15 = Control_io_PCSel == 2'h1; // @[dpath.scala 64:29]
  InstructionMemory IMEM ( // @[dpath.scala 18:20]
    .clock(IMEM_clock),
    .io_in(IMEM_io_in),
    .io_out(IMEM_io_out)
  );
  Reg Reg ( // @[dpath.scala 19:19]
    .clock(Reg_clock),
    .io_rs1(Reg_io_rs1),
    .io_rs2(Reg_io_rs2),
    .io_rd(Reg_io_rd),
    .io_RegWEn(Reg_io_RegWEn),
    .io_WriteData(Reg_io_WriteData),
    .io_out_data1(Reg_io_out_data1),
    .io_out_data2(Reg_io_out_data2)
  );
  Control Control ( // @[dpath.scala 20:23]
    .io_inst(Control_io_inst),
    .io_BrEq(Control_io_BrEq),
    .io_BrLt(Control_io_BrLt),
    .io_PCSel(Control_io_PCSel),
    .io_ImmSel(Control_io_ImmSel),
    .io_RegWEn(Control_io_RegWEn),
    .io_Asel(Control_io_Asel),
    .io_Bsel(Control_io_Bsel),
    .io_ALUSel(Control_io_ALUSel),
    .io_WBSel(Control_io_WBSel)
  );
  BranchComp BranchComp ( // @[dpath.scala 21:26]
    .io_DataA(BranchComp_io_DataA),
    .io_DataB(BranchComp_io_DataB),
    .io_BrEq(BranchComp_io_BrEq),
    .io_BrLt(BranchComp_io_BrLt)
  );
  ImmGen ImmGen ( // @[dpath.scala 22:22]
    .io_inst(ImmGen_io_inst),
    .io_ImmSel(ImmGen_io_ImmSel),
    .io_imm31(ImmGen_io_imm31)
  );
  ALU ALU ( // @[dpath.scala 23:19]
    .io_inA(ALU_io_inA),
    .io_inB(ALU_io_inB),
    .io_ALUSel(ALU_io_ALUSel),
    .io_ALUout(ALU_io_ALUout)
  );
  DataMemory DMEM ( // @[dpath.scala 24:20]
    .clock(DMEM_clock),
    .io_Addr(DMEM_io_Addr),
    .io_DataW(DMEM_io_DataW),
    .io_DataR(DMEM_io_DataR)
  );
  assign io_path_aluout = ALU_io_ALUout; // @[dpath.scala 68:18]
  assign io_path_pcout = pc; // @[dpath.scala 67:17]
  assign IMEM_clock = clock;
  assign IMEM_io_in = pc; // @[dpath.scala 28:14]
  assign Reg_clock = clock;
  assign Reg_io_rs1 = {{27'd0}, IMEM_io_out[19:15]}; // @[dpath.scala 29:14]
  assign Reg_io_rs2 = {{27'd0}, IMEM_io_out[24:20]}; // @[dpath.scala 30:14]
  assign Reg_io_rd = {{27'd0}, IMEM_io_out[11:7]}; // @[dpath.scala 31:13]
  assign Reg_io_RegWEn = {{31'd0}, Control_io_RegWEn}; // @[dpath.scala 32:17]
  assign Reg_io_WriteData = _T_13 ? _T_8 : _T_12; // @[dpath.scala 57:20]
  assign Control_io_inst = IMEM_io_out; // @[dpath.scala 33:19]
  assign Control_io_BrEq = BranchComp_io_BrEq; // @[dpath.scala 34:19]
  assign Control_io_BrLt = BranchComp_io_BrLt; // @[dpath.scala 35:19]
  assign BranchComp_io_DataA = Reg_io_out_data1; // @[dpath.scala 39:23]
  assign BranchComp_io_DataB = Reg_io_out_data2; // @[dpath.scala 40:23]
  assign ImmGen_io_inst = IMEM_io_out; // @[dpath.scala 43:18]
  assign ImmGen_io_ImmSel = Control_io_ImmSel; // @[dpath.scala 44:20]
  assign ALU_io_inA = _T_3 ? pc : Reg_io_out_data1; // @[dpath.scala 47:14]
  assign ALU_io_inB = _T_5 ? ImmGen_io_imm31 : Reg_io_out_data2; // @[dpath.scala 48:14]
  assign ALU_io_ALUSel = Control_io_ALUSel; // @[dpath.scala 49:17]
  assign DMEM_clock = clock;
  assign DMEM_io_Addr = ALU_io_ALUout; // @[dpath.scala 52:16]
  assign DMEM_io_DataW = Reg_io_out_data2; // @[dpath.scala 53:17]
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
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      pc <= 32'h0;
    end else if (_T_15) begin
      pc <= ALU_io_ALUout;
    end else begin
      pc <= _T_8;
    end
  end
endmodule
