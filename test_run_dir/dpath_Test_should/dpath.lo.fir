circuit dpath :
  module InstructionMemory :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<32>
    output io_out : UInt<32>
  
    mem memory : @[InstructionMemory.scala 10:19]
      data-type => UInt<32>
      depth => 256
      read-latency => 0
      write-latency => 1
      reader => _T_12
      writer => _T
      writer => _T_1
      writer => _T_2
      writer => _T_3
      writer => _T_4
      writer => _T_5
      writer => _T_6
      writer => _T_7
      writer => _T_8
      writer => _T_9
      writer => _T_10
      read-under-write => undefined
    node _T_11 = bits(io_in, 7, 0) @[InstructionMemory.scala 49:19]
    io_out <= memory._T_12.data @[InstructionMemory.scala 49:10]
    memory._T_12.addr <= _T_11 @[InstructionMemory.scala 49:19]
    memory._T_12.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19 InstructionMemory.scala 49:19]
    memory._T_12.clk <= clock @[InstructionMemory.scala 49:19]
    memory._T.addr <= UInt<1>("h0")
    memory._T.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T.clk <= clock
    memory._T.data <= UInt<32>("h93")
    memory._T.mask <= UInt<1>("h1")
    memory._T_1.addr <= UInt<3>("h4")
    memory._T_1.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_1.clk <= clock
    memory._T_1.data <= UInt<32>("h100113")
    memory._T_1.mask <= UInt<1>("h1")
    memory._T_2.addr <= UInt<4>("h8")
    memory._T_2.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_2.clk <= clock
    memory._T_2.data <= UInt<32>("h100213")
    memory._T_2.mask <= UInt<1>("h1")
    memory._T_3.addr <= UInt<4>("hc")
    memory._T_3.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_3.clk <= clock
    memory._T_3.data <= UInt<32>("h1400313")
    memory._T_3.mask <= UInt<1>("h1")
    memory._T_4.addr <= UInt<5>("h10")
    memory._T_4.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_4.clk <= clock
    memory._T_4.data <= UInt<32>("h2081b3")
    memory._T_4.mask <= UInt<1>("h1")
    memory._T_5.addr <= UInt<5>("h14")
    memory._T_5.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_5.clk <= clock
    memory._T_5.data <= UInt<32>("h102023")
    memory._T_5.mask <= UInt<1>("h1")
    memory._T_6.addr <= UInt<5>("h18")
    memory._T_6.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_6.clk <= clock
    memory._T_6.data <= UInt<32>("h202223")
    memory._T_6.mask <= UInt<1>("h1")
    memory._T_7.addr <= UInt<5>("h1c")
    memory._T_7.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_7.clk <= clock
    memory._T_7.data <= UInt<32>("h322423")
    memory._T_7.mask <= UInt<1>("h1")
    memory._T_8.addr <= UInt<6>("h20")
    memory._T_8.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_8.clk <= clock
    memory._T_8.data <= UInt<32>("h128293")
    memory._T_8.mask <= UInt<1>("h1")
    memory._T_9.addr <= UInt<6>("h24")
    memory._T_9.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_9.clk <= clock
    memory._T_9.data <= UInt<32>("h40125213")
    memory._T_9.mask <= UInt<1>("h1")
    memory._T_10.addr <= UInt<6>("h28")
    memory._T_10.en <= UInt<1>("h1") @[InstructionMemory.scala 10:19]
    memory._T_10.clk <= clock
    memory._T_10.data <= UInt<32>("hfe629ee3")
    memory._T_10.mask <= UInt<1>("h1")

  module Reg :
    input clock : Clock
    input reset : UInt<1>
    input io_rs1 : UInt<32>
    input io_rs2 : UInt<32>
    input io_rd : UInt<32>
    input io_RegWEn : UInt<32>
    input io_WriteData : UInt<32>
    output io_out_data1 : UInt<32>
    output io_out_data2 : UInt<32>
  
    mem regfile : @[Reg.scala 15:20]
      data-type => UInt<32>
      depth => 32
      read-latency => 0
      write-latency => 1
      reader => _T_1
      reader => _T_3
      writer => _T_8
      read-under-write => undefined
    node _T = bits(io_rs1, 4, 0) @[Reg.scala 22:26]
    node _T_2 = bits(io_rs2, 4, 0) @[Reg.scala 23:26]
    node _T_4 = eq(io_RegWEn, UInt<1>("h1")) @[Reg.scala 25:17]
    node _T_5 = neq(io_WriteData, UInt<1>("h0")) @[Reg.scala 25:42]
    node _T_6 = and(_T_4, _T_5) @[Reg.scala 25:27]
    node _T_7 = bits(io_rd, 4, 0) @[Reg.scala 26:12]
    node _GEN_0 = validif(_T_6, _T_7) @[Reg.scala 25:49]
    node _GEN_1 = validif(_T_6, clock) @[Reg.scala 25:49]
    node _GEN_2 = mux(_T_6, UInt<1>("h1"), UInt<1>("h0")) @[Reg.scala 25:49]
    node _GEN_3 = validif(_T_6, UInt<1>("h1")) @[Reg.scala 25:49]
    node _GEN_4 = validif(_T_6, io_WriteData) @[Reg.scala 25:49]
    io_out_data1 <= regfile._T_1.data @[Reg.scala 22:16]
    io_out_data2 <= regfile._T_3.data @[Reg.scala 23:16]
    regfile._T_1.addr <= _T @[Reg.scala 22:26]
    regfile._T_1.en <= UInt<1>("h1") @[Reg.scala 15:20 Reg.scala 22:26]
    regfile._T_1.clk <= clock @[Reg.scala 22:26]
    regfile._T_3.addr <= _T_2 @[Reg.scala 23:26]
    regfile._T_3.en <= UInt<1>("h1") @[Reg.scala 15:20 Reg.scala 23:26]
    regfile._T_3.clk <= clock @[Reg.scala 23:26]
    regfile._T_8.addr <= _GEN_0 @[Reg.scala 26:12]
    regfile._T_8.en <= _GEN_2 @[Reg.scala 15:20 Reg.scala 26:12]
    regfile._T_8.clk <= _GEN_1 @[Reg.scala 26:12]
    regfile._T_8.data <= _GEN_4 @[Reg.scala 26:20]
    regfile._T_8.mask <= _GEN_3 @[Reg.scala 26:12 Reg.scala 26:20]

  module Control :
    input clock : Clock
    input reset : UInt<1>
    input io_inst : UInt<32>
    input io_BrEq : UInt<1>
    input io_BrLt : UInt<1>
    output io_PCSel : UInt<2>
    output io_ImmSel : UInt<3>
    output io_RegWEn : UInt<1>
    output io_BrUn : UInt<1>
    output io_Asel : UInt<1>
    output io_Bsel : UInt<1>
    output io_ALUSel : UInt<4>
    output io_MemRW : UInt<1>
    output io_WBSel : UInt<3>
  
    node opcode = bits(io_inst, 6, 0) @[Control.scala 56:23]
    node rs1 = bits(io_inst, 19, 15) @[Control.scala 57:20]
    node rs2 = bits(io_inst, 24, 20) @[Control.scala 58:20]
    node rd = bits(io_inst, 11, 7) @[Control.scala 59:19]
    node funct3 = bits(io_inst, 14, 12) @[Control.scala 60:23]
    node funct7 = bits(io_inst, 31, 25) @[Control.scala 61:23]
    node imm31_12 = bits(io_inst, 31, 12) @[Control.scala 62:25]
    node _T = mux(io_BrEq, UInt<2>("h1"), UInt<2>("h0")) @[Control.scala 72:20]
    node _T_1 = mux(io_BrEq, UInt<2>("h0"), UInt<2>("h1")) @[Control.scala 73:20]
    node _T_2 = mux(io_BrLt, UInt<2>("h1"), UInt<2>("h0")) @[Control.scala 74:20]
    node _T_3 = eq(io_BrLt, UInt<1>("h0")) @[Control.scala 75:33]
    node _T_4 = or(io_BrEq, _T_3) @[Control.scala 75:30]
    node _T_5 = mux(_T_4, UInt<2>("h1"), UInt<2>("h0")) @[Control.scala 75:20]
    node _T_6 = and(io_inst, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_7 = eq(UInt<7>("h6f"), _T_6) @[Lookup.scala 31:38]
    node _T_8 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_9 = eq(UInt<7>("h63"), _T_8) @[Lookup.scala 31:38]
    node _T_10 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_11 = eq(UInt<13>("h1063"), _T_10) @[Lookup.scala 31:38]
    node _T_12 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_13 = eq(UInt<15>("h4063"), _T_12) @[Lookup.scala 31:38]
    node _T_14 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_15 = eq(UInt<15>("h5063"), _T_14) @[Lookup.scala 31:38]
    node _T_16 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_17 = eq(UInt<5>("h13"), _T_16) @[Lookup.scala 31:38]
    node _T_18 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_19 = eq(UInt<14>("h2013"), _T_18) @[Lookup.scala 31:38]
    node _T_20 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_21 = eq(UInt<14>("h3013"), _T_20) @[Lookup.scala 31:38]
    node _T_22 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_23 = eq(UInt<15>("h4013"), _T_22) @[Lookup.scala 31:38]
    node _T_24 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_25 = eq(UInt<15>("h6013"), _T_24) @[Lookup.scala 31:38]
    node _T_26 = and(io_inst, UInt<15>("h707f")) @[Lookup.scala 31:38]
    node _T_27 = eq(UInt<15>("h7013"), _T_26) @[Lookup.scala 31:38]
    node _T_28 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_29 = eq(UInt<6>("h33"), _T_28) @[Lookup.scala 31:38]
    node _T_30 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_31 = eq(UInt<31>("h40000033"), _T_30) @[Lookup.scala 31:38]
    node _T_32 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_33 = eq(UInt<13>("h1033"), _T_32) @[Lookup.scala 31:38]
    node _T_34 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_35 = eq(UInt<14>("h2033"), _T_34) @[Lookup.scala 31:38]
    node _T_36 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_37 = eq(UInt<14>("h3033"), _T_36) @[Lookup.scala 31:38]
    node _T_38 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_39 = eq(UInt<15>("h4033"), _T_38) @[Lookup.scala 31:38]
    node _T_40 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_41 = eq(UInt<15>("h5033"), _T_40) @[Lookup.scala 31:38]
    node _T_42 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_43 = eq(UInt<31>("h40005033"), _T_42) @[Lookup.scala 31:38]
    node _T_44 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_45 = eq(UInt<15>("h6033"), _T_44) @[Lookup.scala 31:38]
    node _T_46 = and(io_inst, UInt<32>("hfe00707f")) @[Lookup.scala 31:38]
    node _T_47 = eq(UInt<15>("h7033"), _T_46) @[Lookup.scala 31:38]
    node _T_48 = mux(_T_47, UInt<2>("h0"), UInt<2>("h0")) @[Lookup.scala 33:37]
    node _T_49 = mux(_T_45, UInt<2>("h0"), _T_48) @[Lookup.scala 33:37]
    node _T_50 = mux(_T_43, UInt<2>("h0"), _T_49) @[Lookup.scala 33:37]
    node _T_51 = mux(_T_41, UInt<2>("h0"), _T_50) @[Lookup.scala 33:37]
    node _T_52 = mux(_T_39, UInt<2>("h0"), _T_51) @[Lookup.scala 33:37]
    node _T_53 = mux(_T_37, UInt<2>("h0"), _T_52) @[Lookup.scala 33:37]
    node _T_54 = mux(_T_35, UInt<2>("h0"), _T_53) @[Lookup.scala 33:37]
    node _T_55 = mux(_T_33, UInt<2>("h0"), _T_54) @[Lookup.scala 33:37]
    node _T_56 = mux(_T_31, UInt<2>("h0"), _T_55) @[Lookup.scala 33:37]
    node _T_57 = mux(_T_29, UInt<2>("h0"), _T_56) @[Lookup.scala 33:37]
    node _T_58 = mux(_T_27, UInt<2>("h0"), _T_57) @[Lookup.scala 33:37]
    node _T_59 = mux(_T_25, UInt<2>("h0"), _T_58) @[Lookup.scala 33:37]
    node _T_60 = mux(_T_23, UInt<2>("h0"), _T_59) @[Lookup.scala 33:37]
    node _T_61 = mux(_T_21, UInt<2>("h0"), _T_60) @[Lookup.scala 33:37]
    node _T_62 = mux(_T_19, UInt<2>("h0"), _T_61) @[Lookup.scala 33:37]
    node _T_63 = mux(_T_17, UInt<2>("h0"), _T_62) @[Lookup.scala 33:37]
    node _T_64 = mux(_T_15, _T_5, _T_63) @[Lookup.scala 33:37]
    node _T_65 = mux(_T_13, _T_2, _T_64) @[Lookup.scala 33:37]
    node _T_66 = mux(_T_11, _T_1, _T_65) @[Lookup.scala 33:37]
    node _T_67 = mux(_T_9, _T, _T_66) @[Lookup.scala 33:37]
    node ctrlSingals_0 = mux(_T_7, UInt<2>("h1"), _T_67) @[Lookup.scala 33:37]
    node _T_68 = mux(_T_47, UInt<3>("h0"), UInt<3>("h0")) @[Lookup.scala 33:37]
    node _T_69 = mux(_T_45, UInt<3>("h0"), _T_68) @[Lookup.scala 33:37]
    node _T_70 = mux(_T_43, UInt<3>("h0"), _T_69) @[Lookup.scala 33:37]
    node _T_71 = mux(_T_41, UInt<3>("h0"), _T_70) @[Lookup.scala 33:37]
    node _T_72 = mux(_T_39, UInt<3>("h0"), _T_71) @[Lookup.scala 33:37]
    node _T_73 = mux(_T_37, UInt<3>("h0"), _T_72) @[Lookup.scala 33:37]
    node _T_74 = mux(_T_35, UInt<3>("h0"), _T_73) @[Lookup.scala 33:37]
    node _T_75 = mux(_T_33, UInt<3>("h0"), _T_74) @[Lookup.scala 33:37]
    node _T_76 = mux(_T_31, UInt<3>("h0"), _T_75) @[Lookup.scala 33:37]
    node _T_77 = mux(_T_29, UInt<3>("h0"), _T_76) @[Lookup.scala 33:37]
    node _T_78 = mux(_T_27, UInt<3>("h1"), _T_77) @[Lookup.scala 33:37]
    node _T_79 = mux(_T_25, UInt<3>("h1"), _T_78) @[Lookup.scala 33:37]
    node _T_80 = mux(_T_23, UInt<3>("h1"), _T_79) @[Lookup.scala 33:37]
    node _T_81 = mux(_T_21, UInt<3>("h1"), _T_80) @[Lookup.scala 33:37]
    node _T_82 = mux(_T_19, UInt<3>("h1"), _T_81) @[Lookup.scala 33:37]
    node _T_83 = mux(_T_17, UInt<3>("h1"), _T_82) @[Lookup.scala 33:37]
    node _T_84 = mux(_T_15, UInt<3>("h5"), _T_83) @[Lookup.scala 33:37]
    node _T_85 = mux(_T_13, UInt<3>("h5"), _T_84) @[Lookup.scala 33:37]
    node _T_86 = mux(_T_11, UInt<3>("h5"), _T_85) @[Lookup.scala 33:37]
    node _T_87 = mux(_T_9, UInt<3>("h5"), _T_86) @[Lookup.scala 33:37]
    node ctrlSingals_1 = mux(_T_7, UInt<3>("h4"), _T_87) @[Lookup.scala 33:37]
    node _T_88 = mux(_T_47, UInt<1>("h1"), UInt<1>("h1")) @[Lookup.scala 33:37]
    node _T_89 = mux(_T_45, UInt<1>("h1"), _T_88) @[Lookup.scala 33:37]
    node _T_90 = mux(_T_43, UInt<1>("h1"), _T_89) @[Lookup.scala 33:37]
    node _T_91 = mux(_T_41, UInt<1>("h1"), _T_90) @[Lookup.scala 33:37]
    node _T_92 = mux(_T_39, UInt<1>("h1"), _T_91) @[Lookup.scala 33:37]
    node _T_93 = mux(_T_37, UInt<1>("h1"), _T_92) @[Lookup.scala 33:37]
    node _T_94 = mux(_T_35, UInt<1>("h1"), _T_93) @[Lookup.scala 33:37]
    node _T_95 = mux(_T_33, UInt<1>("h1"), _T_94) @[Lookup.scala 33:37]
    node _T_96 = mux(_T_31, UInt<1>("h1"), _T_95) @[Lookup.scala 33:37]
    node _T_97 = mux(_T_29, UInt<1>("h1"), _T_96) @[Lookup.scala 33:37]
    node _T_98 = mux(_T_27, UInt<1>("h1"), _T_97) @[Lookup.scala 33:37]
    node _T_99 = mux(_T_25, UInt<1>("h1"), _T_98) @[Lookup.scala 33:37]
    node _T_100 = mux(_T_23, UInt<1>("h1"), _T_99) @[Lookup.scala 33:37]
    node _T_101 = mux(_T_21, UInt<1>("h1"), _T_100) @[Lookup.scala 33:37]
    node _T_102 = mux(_T_19, UInt<1>("h1"), _T_101) @[Lookup.scala 33:37]
    node _T_103 = mux(_T_17, UInt<1>("h1"), _T_102) @[Lookup.scala 33:37]
    node _T_104 = mux(_T_15, UInt<1>("h0"), _T_103) @[Lookup.scala 33:37]
    node _T_105 = mux(_T_13, UInt<1>("h0"), _T_104) @[Lookup.scala 33:37]
    node _T_106 = mux(_T_11, UInt<1>("h0"), _T_105) @[Lookup.scala 33:37]
    node _T_107 = mux(_T_9, UInt<1>("h0"), _T_106) @[Lookup.scala 33:37]
    node ctrlSingals_2 = mux(_T_7, UInt<1>("h1"), _T_107) @[Lookup.scala 33:37]
    node _T_108 = mux(_T_47, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_109 = mux(_T_45, UInt<1>("h0"), _T_108) @[Lookup.scala 33:37]
    node _T_110 = mux(_T_43, UInt<1>("h0"), _T_109) @[Lookup.scala 33:37]
    node _T_111 = mux(_T_41, UInt<1>("h0"), _T_110) @[Lookup.scala 33:37]
    node _T_112 = mux(_T_39, UInt<1>("h0"), _T_111) @[Lookup.scala 33:37]
    node _T_113 = mux(_T_37, UInt<1>("h0"), _T_112) @[Lookup.scala 33:37]
    node _T_114 = mux(_T_35, UInt<1>("h0"), _T_113) @[Lookup.scala 33:37]
    node _T_115 = mux(_T_33, UInt<1>("h0"), _T_114) @[Lookup.scala 33:37]
    node _T_116 = mux(_T_31, UInt<1>("h0"), _T_115) @[Lookup.scala 33:37]
    node _T_117 = mux(_T_29, UInt<1>("h0"), _T_116) @[Lookup.scala 33:37]
    node _T_118 = mux(_T_27, UInt<1>("h0"), _T_117) @[Lookup.scala 33:37]
    node _T_119 = mux(_T_25, UInt<1>("h0"), _T_118) @[Lookup.scala 33:37]
    node _T_120 = mux(_T_23, UInt<1>("h0"), _T_119) @[Lookup.scala 33:37]
    node _T_121 = mux(_T_21, UInt<1>("h0"), _T_120) @[Lookup.scala 33:37]
    node _T_122 = mux(_T_19, UInt<1>("h0"), _T_121) @[Lookup.scala 33:37]
    node _T_123 = mux(_T_17, UInt<1>("h0"), _T_122) @[Lookup.scala 33:37]
    node _T_124 = mux(_T_15, UInt<1>("h0"), _T_123) @[Lookup.scala 33:37]
    node _T_125 = mux(_T_13, UInt<1>("h0"), _T_124) @[Lookup.scala 33:37]
    node _T_126 = mux(_T_11, UInt<1>("h0"), _T_125) @[Lookup.scala 33:37]
    node _T_127 = mux(_T_9, UInt<1>("h0"), _T_126) @[Lookup.scala 33:37]
    node ctrlSingals_3 = mux(_T_7, UInt<1>("h0"), _T_127) @[Lookup.scala 33:37]
    node _T_128 = mux(_T_47, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_129 = mux(_T_45, UInt<1>("h0"), _T_128) @[Lookup.scala 33:37]
    node _T_130 = mux(_T_43, UInt<1>("h0"), _T_129) @[Lookup.scala 33:37]
    node _T_131 = mux(_T_41, UInt<1>("h0"), _T_130) @[Lookup.scala 33:37]
    node _T_132 = mux(_T_39, UInt<1>("h0"), _T_131) @[Lookup.scala 33:37]
    node _T_133 = mux(_T_37, UInt<1>("h0"), _T_132) @[Lookup.scala 33:37]
    node _T_134 = mux(_T_35, UInt<1>("h0"), _T_133) @[Lookup.scala 33:37]
    node _T_135 = mux(_T_33, UInt<1>("h0"), _T_134) @[Lookup.scala 33:37]
    node _T_136 = mux(_T_31, UInt<1>("h0"), _T_135) @[Lookup.scala 33:37]
    node _T_137 = mux(_T_29, UInt<1>("h0"), _T_136) @[Lookup.scala 33:37]
    node _T_138 = mux(_T_27, UInt<1>("h0"), _T_137) @[Lookup.scala 33:37]
    node _T_139 = mux(_T_25, UInt<1>("h0"), _T_138) @[Lookup.scala 33:37]
    node _T_140 = mux(_T_23, UInt<1>("h0"), _T_139) @[Lookup.scala 33:37]
    node _T_141 = mux(_T_21, UInt<1>("h0"), _T_140) @[Lookup.scala 33:37]
    node _T_142 = mux(_T_19, UInt<1>("h0"), _T_141) @[Lookup.scala 33:37]
    node _T_143 = mux(_T_17, UInt<1>("h0"), _T_142) @[Lookup.scala 33:37]
    node _T_144 = mux(_T_15, UInt<1>("h1"), _T_143) @[Lookup.scala 33:37]
    node _T_145 = mux(_T_13, UInt<1>("h1"), _T_144) @[Lookup.scala 33:37]
    node _T_146 = mux(_T_11, UInt<1>("h1"), _T_145) @[Lookup.scala 33:37]
    node _T_147 = mux(_T_9, UInt<1>("h1"), _T_146) @[Lookup.scala 33:37]
    node ctrlSingals_4 = mux(_T_7, UInt<1>("h1"), _T_147) @[Lookup.scala 33:37]
    node _T_148 = mux(_T_47, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_149 = mux(_T_45, UInt<1>("h0"), _T_148) @[Lookup.scala 33:37]
    node _T_150 = mux(_T_43, UInt<1>("h0"), _T_149) @[Lookup.scala 33:37]
    node _T_151 = mux(_T_41, UInt<1>("h0"), _T_150) @[Lookup.scala 33:37]
    node _T_152 = mux(_T_39, UInt<1>("h0"), _T_151) @[Lookup.scala 33:37]
    node _T_153 = mux(_T_37, UInt<1>("h0"), _T_152) @[Lookup.scala 33:37]
    node _T_154 = mux(_T_35, UInt<1>("h0"), _T_153) @[Lookup.scala 33:37]
    node _T_155 = mux(_T_33, UInt<1>("h0"), _T_154) @[Lookup.scala 33:37]
    node _T_156 = mux(_T_31, UInt<1>("h0"), _T_155) @[Lookup.scala 33:37]
    node _T_157 = mux(_T_29, UInt<1>("h0"), _T_156) @[Lookup.scala 33:37]
    node _T_158 = mux(_T_27, UInt<1>("h1"), _T_157) @[Lookup.scala 33:37]
    node _T_159 = mux(_T_25, UInt<1>("h1"), _T_158) @[Lookup.scala 33:37]
    node _T_160 = mux(_T_23, UInt<1>("h1"), _T_159) @[Lookup.scala 33:37]
    node _T_161 = mux(_T_21, UInt<1>("h1"), _T_160) @[Lookup.scala 33:37]
    node _T_162 = mux(_T_19, UInt<1>("h1"), _T_161) @[Lookup.scala 33:37]
    node _T_163 = mux(_T_17, UInt<1>("h1"), _T_162) @[Lookup.scala 33:37]
    node _T_164 = mux(_T_15, UInt<1>("h1"), _T_163) @[Lookup.scala 33:37]
    node _T_165 = mux(_T_13, UInt<1>("h1"), _T_164) @[Lookup.scala 33:37]
    node _T_166 = mux(_T_11, UInt<1>("h1"), _T_165) @[Lookup.scala 33:37]
    node _T_167 = mux(_T_9, UInt<1>("h1"), _T_166) @[Lookup.scala 33:37]
    node ctrlSingals_5 = mux(_T_7, UInt<1>("h1"), _T_167) @[Lookup.scala 33:37]
    node _T_168 = mux(_T_47, UInt<4>("h2"), UInt<4>("h0")) @[Lookup.scala 33:37]
    node _T_169 = mux(_T_45, UInt<4>("h3"), _T_168) @[Lookup.scala 33:37]
    node _T_170 = mux(_T_43, UInt<4>("h9"), _T_169) @[Lookup.scala 33:37]
    node _T_171 = mux(_T_41, UInt<4>("h8"), _T_170) @[Lookup.scala 33:37]
    node _T_172 = mux(_T_39, UInt<4>("h4"), _T_171) @[Lookup.scala 33:37]
    node _T_173 = mux(_T_37, UInt<4>("h7"), _T_172) @[Lookup.scala 33:37]
    node _T_174 = mux(_T_35, UInt<4>("h5"), _T_173) @[Lookup.scala 33:37]
    node _T_175 = mux(_T_33, UInt<4>("h6"), _T_174) @[Lookup.scala 33:37]
    node _T_176 = mux(_T_31, UInt<4>("h1"), _T_175) @[Lookup.scala 33:37]
    node _T_177 = mux(_T_29, UInt<4>("h0"), _T_176) @[Lookup.scala 33:37]
    node _T_178 = mux(_T_27, UInt<4>("h2"), _T_177) @[Lookup.scala 33:37]
    node _T_179 = mux(_T_25, UInt<4>("h3"), _T_178) @[Lookup.scala 33:37]
    node _T_180 = mux(_T_23, UInt<4>("h4"), _T_179) @[Lookup.scala 33:37]
    node _T_181 = mux(_T_21, UInt<4>("h7"), _T_180) @[Lookup.scala 33:37]
    node _T_182 = mux(_T_19, UInt<4>("h5"), _T_181) @[Lookup.scala 33:37]
    node _T_183 = mux(_T_17, UInt<4>("h0"), _T_182) @[Lookup.scala 33:37]
    node _T_184 = mux(_T_15, UInt<4>("h0"), _T_183) @[Lookup.scala 33:37]
    node _T_185 = mux(_T_13, UInt<4>("h0"), _T_184) @[Lookup.scala 33:37]
    node _T_186 = mux(_T_11, UInt<4>("h0"), _T_185) @[Lookup.scala 33:37]
    node _T_187 = mux(_T_9, UInt<4>("h0"), _T_186) @[Lookup.scala 33:37]
    node ctrlSingals_6 = mux(_T_7, UInt<4>("h0"), _T_187) @[Lookup.scala 33:37]
    node _T_188 = mux(_T_47, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_189 = mux(_T_45, UInt<1>("h0"), _T_188) @[Lookup.scala 33:37]
    node _T_190 = mux(_T_43, UInt<1>("h0"), _T_189) @[Lookup.scala 33:37]
    node _T_191 = mux(_T_41, UInt<1>("h0"), _T_190) @[Lookup.scala 33:37]
    node _T_192 = mux(_T_39, UInt<1>("h0"), _T_191) @[Lookup.scala 33:37]
    node _T_193 = mux(_T_37, UInt<1>("h0"), _T_192) @[Lookup.scala 33:37]
    node _T_194 = mux(_T_35, UInt<1>("h0"), _T_193) @[Lookup.scala 33:37]
    node _T_195 = mux(_T_33, UInt<1>("h0"), _T_194) @[Lookup.scala 33:37]
    node _T_196 = mux(_T_31, UInt<1>("h0"), _T_195) @[Lookup.scala 33:37]
    node _T_197 = mux(_T_29, UInt<1>("h0"), _T_196) @[Lookup.scala 33:37]
    node _T_198 = mux(_T_27, UInt<1>("h0"), _T_197) @[Lookup.scala 33:37]
    node _T_199 = mux(_T_25, UInt<1>("h0"), _T_198) @[Lookup.scala 33:37]
    node _T_200 = mux(_T_23, UInt<1>("h0"), _T_199) @[Lookup.scala 33:37]
    node _T_201 = mux(_T_21, UInt<1>("h0"), _T_200) @[Lookup.scala 33:37]
    node _T_202 = mux(_T_19, UInt<1>("h0"), _T_201) @[Lookup.scala 33:37]
    node _T_203 = mux(_T_17, UInt<1>("h0"), _T_202) @[Lookup.scala 33:37]
    node _T_204 = mux(_T_15, UInt<1>("h0"), _T_203) @[Lookup.scala 33:37]
    node _T_205 = mux(_T_13, UInt<1>("h0"), _T_204) @[Lookup.scala 33:37]
    node _T_206 = mux(_T_11, UInt<1>("h0"), _T_205) @[Lookup.scala 33:37]
    node _T_207 = mux(_T_9, UInt<1>("h0"), _T_206) @[Lookup.scala 33:37]
    node ctrlSingals_7 = mux(_T_7, UInt<1>("h0"), _T_207) @[Lookup.scala 33:37]
    node _T_208 = mux(_T_47, UInt<2>("h1"), UInt<2>("h1")) @[Lookup.scala 33:37]
    node _T_209 = mux(_T_45, UInt<2>("h1"), _T_208) @[Lookup.scala 33:37]
    node _T_210 = mux(_T_43, UInt<2>("h1"), _T_209) @[Lookup.scala 33:37]
    node _T_211 = mux(_T_41, UInt<2>("h1"), _T_210) @[Lookup.scala 33:37]
    node _T_212 = mux(_T_39, UInt<2>("h1"), _T_211) @[Lookup.scala 33:37]
    node _T_213 = mux(_T_37, UInt<2>("h1"), _T_212) @[Lookup.scala 33:37]
    node _T_214 = mux(_T_35, UInt<2>("h1"), _T_213) @[Lookup.scala 33:37]
    node _T_215 = mux(_T_33, UInt<2>("h1"), _T_214) @[Lookup.scala 33:37]
    node _T_216 = mux(_T_31, UInt<2>("h1"), _T_215) @[Lookup.scala 33:37]
    node _T_217 = mux(_T_29, UInt<2>("h1"), _T_216) @[Lookup.scala 33:37]
    node _T_218 = mux(_T_27, UInt<2>("h1"), _T_217) @[Lookup.scala 33:37]
    node _T_219 = mux(_T_25, UInt<2>("h1"), _T_218) @[Lookup.scala 33:37]
    node _T_220 = mux(_T_23, UInt<2>("h1"), _T_219) @[Lookup.scala 33:37]
    node _T_221 = mux(_T_21, UInt<2>("h1"), _T_220) @[Lookup.scala 33:37]
    node _T_222 = mux(_T_19, UInt<2>("h1"), _T_221) @[Lookup.scala 33:37]
    node _T_223 = mux(_T_17, UInt<2>("h1"), _T_222) @[Lookup.scala 33:37]
    node _T_224 = mux(_T_15, UInt<2>("h1"), _T_223) @[Lookup.scala 33:37]
    node _T_225 = mux(_T_13, UInt<2>("h1"), _T_224) @[Lookup.scala 33:37]
    node _T_226 = mux(_T_11, UInt<2>("h1"), _T_225) @[Lookup.scala 33:37]
    node _T_227 = mux(_T_9, UInt<2>("h1"), _T_226) @[Lookup.scala 33:37]
    node ctrlSingals_8 = mux(_T_7, UInt<2>("h2"), _T_227) @[Lookup.scala 33:37]
    io_PCSel <= ctrlSingals_0 @[Control.scala 102:12]
    io_ImmSel <= ctrlSingals_1 @[Control.scala 103:13]
    io_RegWEn <= ctrlSingals_2 @[Control.scala 104:13]
    io_BrUn <= ctrlSingals_3 @[Control.scala 105:11]
    io_Asel <= ctrlSingals_4 @[Control.scala 106:11]
    io_Bsel <= ctrlSingals_5 @[Control.scala 107:11]
    io_ALUSel <= ctrlSingals_6 @[Control.scala 108:13]
    io_MemRW <= ctrlSingals_7 @[Control.scala 109:12]
    io_WBSel <= ctrlSingals_8 @[Control.scala 110:12]

  module BranchComp :
    input clock : Clock
    input reset : UInt<1>
    input io_DataA : UInt<32>
    input io_DataB : UInt<32>
    input io_BrUn : UInt<1>
    output io_BrEq : UInt<1>
    output io_BrLt : UInt<1>
  
    node _T = eq(io_DataA, io_DataB) @[BranchComp.scala 14:29]
    node _T_1 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[BranchComp.scala 14:19]
    node _T_2 = lt(io_DataA, io_DataB) @[BranchComp.scala 15:29]
    node _T_3 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[BranchComp.scala 15:19]
    node _T_4 = asSInt(io_DataA) @[BranchComp.scala 17:35]
    node _T_5 = asSInt(io_DataB) @[BranchComp.scala 17:57]
    node _T_6 = eq(_T_4, _T_5) @[BranchComp.scala 17:38]
    node _T_7 = mux(_T_6, UInt<1>("h1"), UInt<1>("h0")) @[BranchComp.scala 17:19]
    node _T_8 = asSInt(io_DataA) @[BranchComp.scala 18:35]
    node _T_9 = asSInt(io_DataB) @[BranchComp.scala 18:55]
    node _T_10 = lt(_T_8, _T_9) @[BranchComp.scala 18:38]
    node _T_11 = mux(_T_10, UInt<1>("h1"), UInt<1>("h0")) @[BranchComp.scala 18:19]
    node _GEN_0 = mux(io_BrUn, _T_1, _T_7) @[BranchComp.scala 13:16]
    node _GEN_1 = mux(io_BrUn, _T_3, _T_11) @[BranchComp.scala 13:16]
    io_BrEq <= _GEN_0 @[BranchComp.scala 14:13 BranchComp.scala 17:13]
    io_BrLt <= _GEN_1 @[BranchComp.scala 15:13 BranchComp.scala 18:13]

  module ImmGen :
    input clock : Clock
    input reset : UInt<1>
    input io_inst : UInt<32>
    input io_ImmSel : UInt<3>
    output io_imm31 : UInt<32>
  
    node _T = bits(io_inst, 31, 31) @[ImmGen.scala 27:33]
    node _T_1 = bits(_T, 0, 0) @[Bitwise.scala 72:15]
    node _T_2 = mux(_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node _T_3 = bits(io_inst, 31, 20) @[ImmGen.scala 27:46]
    node Iimm = cat(_T_2, _T_3) @[Cat.scala 29:58]
    node _T_4 = bits(io_inst, 31, 31) @[ImmGen.scala 28:33]
    node _T_5 = bits(_T_4, 0, 0) @[Bitwise.scala 72:15]
    node _T_6 = mux(_T_5, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node _T_7 = bits(io_inst, 31, 25) @[ImmGen.scala 28:46]
    node _T_8 = bits(io_inst, 11, 8) @[ImmGen.scala 28:61]
    node _T_9 = cat(_T_6, _T_7) @[Cat.scala 29:58]
    node Simm = cat(_T_9, _T_8) @[Cat.scala 29:58]
    node _T_10 = bits(io_inst, 31, 31) @[ImmGen.scala 29:33]
    node _T_11 = bits(_T_10, 0, 0) @[Bitwise.scala 72:15]
    node _T_12 = mux(_T_11, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 72:12]
    node _T_13 = bits(io_inst, 7, 7) @[ImmGen.scala 29:46]
    node _T_14 = bits(io_inst, 31, 25) @[ImmGen.scala 29:57]
    node _T_15 = bits(io_inst, 11, 8) @[ImmGen.scala 29:72]
    node _T_16 = cat(_T_15, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_17 = cat(_T_12, _T_13) @[Cat.scala 29:58]
    node _T_18 = cat(_T_17, _T_14) @[Cat.scala 29:58]
    node Bimm = cat(_T_18, _T_16) @[Cat.scala 29:58]
    node _T_19 = bits(io_inst, 31, 12) @[ImmGen.scala 30:25]
    node _T_20 = mux(UInt<1>("h0"), UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
    node Uimm = cat(_T_19, _T_20) @[Cat.scala 29:58]
    node _T_21 = bits(io_inst, 31, 31) @[ImmGen.scala 31:33]
    node _T_22 = bits(_T_21, 0, 0) @[Bitwise.scala 72:15]
    node _T_23 = mux(_T_22, UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
    node _T_24 = bits(io_inst, 19, 12) @[ImmGen.scala 31:46]
    node _T_25 = bits(io_inst, 20, 20) @[ImmGen.scala 31:62]
    node _T_26 = bits(io_inst, 31, 25) @[ImmGen.scala 31:75]
    node _T_27 = bits(io_inst, 24, 21) @[ImmGen.scala 31:91]
    node _T_28 = cat(_T_26, _T_27) @[Cat.scala 29:58]
    node _T_29 = cat(_T_28, UInt<1>("h0")) @[Cat.scala 29:58]
    node _T_30 = cat(_T_23, _T_24) @[Cat.scala 29:58]
    node _T_31 = cat(_T_30, _T_25) @[Cat.scala 29:58]
    node Jimm = cat(_T_31, _T_29) @[Cat.scala 29:58]
    node _T_32 = eq(UInt<3>("h0"), io_ImmSel) @[Mux.scala 80:60]
    node _T_33 = mux(_T_32, UInt<32>("h0"), UInt<32>("h0")) @[Mux.scala 80:57]
    node _T_34 = eq(UInt<3>("h1"), io_ImmSel) @[Mux.scala 80:60]
    node _T_35 = mux(_T_34, Iimm, _T_33) @[Mux.scala 80:57]
    node _T_36 = eq(UInt<3>("h2"), io_ImmSel) @[Mux.scala 80:60]
    node _T_37 = mux(_T_36, Simm, _T_35) @[Mux.scala 80:57]
    node _T_38 = eq(UInt<3>("h5"), io_ImmSel) @[Mux.scala 80:60]
    node _T_39 = mux(_T_38, Bimm, _T_37) @[Mux.scala 80:57]
    node _T_40 = eq(UInt<3>("h3"), io_ImmSel) @[Mux.scala 80:60]
    node _T_41 = mux(_T_40, Uimm, _T_39) @[Mux.scala 80:57]
    node _T_42 = eq(UInt<3>("h4"), io_ImmSel) @[Mux.scala 80:60]
    node _T_43 = mux(_T_42, Jimm, _T_41) @[Mux.scala 80:57]
    io_imm31 <= bits(_T_43, 31, 0) @[ImmGen.scala 33:12]

  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_inA : UInt<32>
    input io_inB : UInt<32>
    input io_ALUSel : UInt<4>
    output io_ALUout : UInt<32>
  
    node _T = asSInt(io_inA) @[ALU.scala 33:30]
    node _T_1 = asSInt(io_inB) @[ALU.scala 33:48]
    node _T_2 = add(_T, _T_1) @[ALU.scala 33:33]
    node _T_3 = tail(_T_2, 1) @[ALU.scala 33:33]
    node _T_4 = asSInt(_T_3) @[ALU.scala 33:33]
    node _T_5 = asUInt(_T_4) @[ALU.scala 33:58]
    node _T_6 = asSInt(io_inA) @[ALU.scala 34:30]
    node _T_7 = asSInt(io_inB) @[ALU.scala 34:48]
    node _T_8 = sub(_T_6, _T_7) @[ALU.scala 34:33]
    node _T_9 = tail(_T_8, 1) @[ALU.scala 34:33]
    node _T_10 = asSInt(_T_9) @[ALU.scala 34:33]
    node _T_11 = asUInt(_T_10) @[ALU.scala 34:58]
    node _T_12 = and(io_inA, io_inB) @[ALU.scala 35:24]
    node _T_13 = or(io_inA, io_inB) @[ALU.scala 36:23]
    node _T_14 = xor(io_inA, io_inB) @[ALU.scala 37:24]
    node _T_15 = asSInt(io_inA) @[ALU.scala 38:33]
    node _T_16 = asSInt(io_inB) @[ALU.scala 38:49]
    node _T_17 = lt(_T_15, _T_16) @[ALU.scala 38:35]
    node _T_18 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[ALU.scala 38:19]
    node _T_19 = bits(io_inB, 4, 0) @[ALU.scala 39:33]
    node _T_20 = dshl(io_inA, _T_19) @[ALU.scala 39:24]
    node _T_21 = lt(io_inA, io_inB) @[ALU.scala 40:27]
    node _T_22 = mux(_T_21, UInt<1>("h1"), UInt<1>("h0")) @[ALU.scala 40:20]
    node _T_23 = bits(io_inB, 4, 0) @[ALU.scala 41:33]
    node _T_24 = dshr(io_inA, _T_23) @[ALU.scala 41:24]
    node _T_25 = asSInt(io_inA) @[ALU.scala 42:31]
    node _T_26 = dshr(_T_25, io_inB) @[ALU.scala 42:34]
    node _T_27 = asUInt(_T_26) @[ALU.scala 42:51]
    node _T_28 = eq(UInt<4>("h0"), io_ALUSel) @[Mux.scala 80:60]
    node _T_29 = mux(_T_28, _T_5, UInt<1>("h0")) @[Mux.scala 80:57]
    node _T_30 = eq(UInt<4>("h1"), io_ALUSel) @[Mux.scala 80:60]
    node _T_31 = mux(_T_30, _T_11, _T_29) @[Mux.scala 80:57]
    node _T_32 = eq(UInt<4>("h2"), io_ALUSel) @[Mux.scala 80:60]
    node _T_33 = mux(_T_32, _T_12, _T_31) @[Mux.scala 80:57]
    node _T_34 = eq(UInt<4>("h3"), io_ALUSel) @[Mux.scala 80:60]
    node _T_35 = mux(_T_34, _T_13, _T_33) @[Mux.scala 80:57]
    node _T_36 = eq(UInt<4>("h4"), io_ALUSel) @[Mux.scala 80:60]
    node _T_37 = mux(_T_36, _T_14, _T_35) @[Mux.scala 80:57]
    node _T_38 = eq(UInt<4>("h5"), io_ALUSel) @[Mux.scala 80:60]
    node _T_39 = mux(_T_38, _T_18, _T_37) @[Mux.scala 80:57]
    node _T_40 = eq(UInt<4>("h6"), io_ALUSel) @[Mux.scala 80:60]
    node _T_41 = mux(_T_40, _T_20, _T_39) @[Mux.scala 80:57]
    node _T_42 = eq(UInt<4>("h7"), io_ALUSel) @[Mux.scala 80:60]
    node _T_43 = mux(_T_42, _T_22, _T_41) @[Mux.scala 80:57]
    node _T_44 = eq(UInt<4>("h8"), io_ALUSel) @[Mux.scala 80:60]
    node _T_45 = mux(_T_44, _T_24, _T_43) @[Mux.scala 80:57]
    node _T_46 = eq(UInt<4>("h9"), io_ALUSel) @[Mux.scala 80:60]
    node _T_47 = mux(_T_46, _T_27, _T_45) @[Mux.scala 80:57]
    io_ALUout <= bits(_T_47, 31, 0) @[ALU.scala 32:13]

  module DataMemory :
    input clock : Clock
    input reset : UInt<1>
    input io_Addr : UInt<32>
    input io_DataW : UInt<32>
    input io_MemRW : UInt<1>
    output io_DataR : UInt<32>
  
    mem DMEM : @[DataMemory.scala 17:17]
      data-type => UInt<32>
      depth => 256
      read-latency => 0
      write-latency => 1
      reader => _T_3
      writer => _T_1
      read-under-write => undefined
    node _T = bits(io_Addr, 7, 0)
    node _GEN_0 = validif(io_MemRW, _T) @[DataMemory.scala 19:17]
    node _GEN_1 = validif(io_MemRW, clock) @[DataMemory.scala 19:17]
    node _GEN_2 = mux(io_MemRW, UInt<1>("h1"), UInt<1>("h0")) @[DataMemory.scala 19:17]
    node _GEN_3 = validif(io_MemRW, UInt<1>("h1")) @[DataMemory.scala 19:17]
    node _GEN_4 = validif(io_MemRW, io_DataW) @[DataMemory.scala 19:17]
    node _T_2 = bits(io_Addr, 7, 0) @[DataMemory.scala 22:19]
    io_DataR <= DMEM._T_3.data @[DataMemory.scala 22:12]
    DMEM._T_3.addr <= _T_2 @[DataMemory.scala 22:19]
    DMEM._T_3.en <= UInt<1>("h1") @[DataMemory.scala 17:17 DataMemory.scala 22:19]
    DMEM._T_3.clk <= clock @[DataMemory.scala 22:19]
    DMEM._T_1.addr <= _GEN_0
    DMEM._T_1.en <= _GEN_2 @[DataMemory.scala 17:17]
    DMEM._T_1.clk <= _GEN_1
    DMEM._T_1.data <= _GEN_4
    DMEM._T_1.mask <= _GEN_3

  module dpath :
    input clock : Clock
    input reset : UInt<1>
    output io_path_aluout : UInt<32>
    output io_path_pcout : UInt<32>
  
    inst IMEM of InstructionMemory @[dpath.scala 18:20]
    inst Reg of Reg @[dpath.scala 19:19]
    inst Control of Control @[dpath.scala 20:23]
    inst BranchComp of BranchComp @[dpath.scala 21:26]
    inst ImmGen of ImmGen @[dpath.scala 22:22]
    inst ALU of ALU @[dpath.scala 23:19]
    inst DMEM of DataMemory @[dpath.scala 24:20]
    reg pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), pc) @[dpath.scala 17:19]
    node _T = bits(IMEM.io_out, 19, 15) @[dpath.scala 29:28]
    node _T_1 = bits(IMEM.io_out, 24, 20) @[dpath.scala 30:28]
    node _T_2 = bits(IMEM.io_out, 11, 7) @[dpath.scala 31:27]
    node _T_3 = eq(Control.io_Asel, UInt<1>("h1")) @[dpath.scala 47:36]
    node _T_4 = mux(_T_3, pc, Reg.io_out_data1) @[dpath.scala 47:20]
    node _T_5 = eq(Control.io_Bsel, UInt<1>("h1")) @[dpath.scala 48:36]
    node _T_6 = mux(_T_5, ImmGen.io_imm31, Reg.io_out_data2) @[dpath.scala 48:20]
    node _T_7 = add(pc, UInt<3>("h4")) @[dpath.scala 60:18]
    node _T_8 = tail(_T_7, 1) @[dpath.scala 60:18]
    node _T_9 = eq(UInt<2>("h0"), Control.io_WBSel) @[Mux.scala 80:60]
    node _T_10 = mux(_T_9, DMEM.io_DataR, UInt<1>("h0")) @[Mux.scala 80:57]
    node _T_11 = eq(UInt<2>("h1"), Control.io_WBSel) @[Mux.scala 80:60]
    node _T_12 = mux(_T_11, ALU.io_ALUout, _T_10) @[Mux.scala 80:57]
    node _T_13 = eq(UInt<2>("h2"), Control.io_WBSel) @[Mux.scala 80:60]
    node _T_14 = mux(_T_13, _T_8, _T_12) @[Mux.scala 80:57]
    node _T_15 = eq(Control.io_PCSel, UInt<2>("h1")) @[dpath.scala 64:29]
    node _T_16 = add(pc, UInt<3>("h4")) @[dpath.scala 64:57]
    node _T_17 = tail(_T_16, 1) @[dpath.scala 64:57]
    node _T_18 = mux(_T_15, ALU.io_ALUout, _T_17) @[dpath.scala 64:12]
    io_path_aluout <= ALU.io_ALUout @[dpath.scala 68:18]
    io_path_pcout <= pc @[dpath.scala 67:17]
    pc <= mux(reset, UInt<32>("h0"), _T_18) @[dpath.scala 64:6]
    IMEM.clock <= clock
    IMEM.reset <= reset
    IMEM.io_in <= pc @[dpath.scala 28:14]
    Reg.clock <= clock
    Reg.reset <= reset
    Reg.io_rs1 <= _T @[dpath.scala 29:14]
    Reg.io_rs2 <= _T_1 @[dpath.scala 30:14]
    Reg.io_rd <= _T_2 @[dpath.scala 31:13]
    Reg.io_RegWEn <= Control.io_RegWEn @[dpath.scala 32:17]
    Reg.io_WriteData <= _T_14 @[dpath.scala 57:20]
    Control.clock <= clock
    Control.reset <= reset
    Control.io_inst <= IMEM.io_out @[dpath.scala 33:19]
    Control.io_BrEq <= BranchComp.io_BrEq @[dpath.scala 34:19]
    Control.io_BrLt <= BranchComp.io_BrLt @[dpath.scala 35:19]
    BranchComp.clock <= clock
    BranchComp.reset <= reset
    BranchComp.io_DataA <= Reg.io_out_data1 @[dpath.scala 39:23]
    BranchComp.io_DataB <= Reg.io_out_data2 @[dpath.scala 40:23]
    BranchComp.io_BrUn <= Control.io_BrUn @[dpath.scala 38:22]
    ImmGen.clock <= clock
    ImmGen.reset <= reset
    ImmGen.io_inst <= IMEM.io_out @[dpath.scala 43:18]
    ImmGen.io_ImmSel <= Control.io_ImmSel @[dpath.scala 44:20]
    ALU.clock <= clock
    ALU.reset <= reset
    ALU.io_inA <= _T_4 @[dpath.scala 47:14]
    ALU.io_inB <= _T_6 @[dpath.scala 48:14]
    ALU.io_ALUSel <= Control.io_ALUSel @[dpath.scala 49:17]
    DMEM.clock <= clock
    DMEM.reset <= reset
    DMEM.io_Addr <= ALU.io_ALUout @[dpath.scala 52:16]
    DMEM.io_DataW <= Reg.io_out_data2 @[dpath.scala 53:17]
    DMEM.io_MemRW <= Control.io_MemRW @[dpath.scala 54:17]
