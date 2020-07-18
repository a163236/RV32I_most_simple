package Single_Cycle_Datapath

import chisel3._
import chisel3.util.MuxLookup

// 僕の自作モジュールから
import myModules._
import Control._

class dpath extends Module{
  val io = IO(new Bundle() {
    val path_aluout = Output(UInt(32.W))
    val path_pcout = Output(UInt(32.W))
  })

  // まずは使うModule宣言
  val pc = RegInit(0.U(32.W))
  val IMEM = Module(new InstructionMemory)
  val Reg = Module(new Reg)
  val Control = Module(new Control)
  val BranchComp = Module(new BranchComp)
  val ImmGen = Module(new ImmGen)
  val ALU = Module(new ALU)
  val DMEM = Module(new DataMemory)

  // こっからはモジュール同士を接続してくよ

  IMEM.io.in := pc // pc->命令メモリ
  Reg.io.rs1 := IMEM.io.out(19,15) // 命令メモリ -> レジスタファイル
  Reg.io.rs2 := IMEM.io.out(24,20)
  Reg.io.rd := IMEM.io.out(11,7)
  Reg.io.RegWEn := Control.io.RegWEn
  Control.io.inst := IMEM.io.out  // メモリ -> コントロール
  Control.io.BrEq := BranchComp.io.BrEq
  Control.io.BrLt := BranchComp.io.BrLt

  // 分岐モジュール 接続
  BranchComp.io.BrUn := Control.io.BrUn
  BranchComp.io.DataA := Reg.io.out_data1
  BranchComp.io.DataB := Reg.io.out_data2

  // 即値生成 接続
  ImmGen.io.inst := IMEM.io.out
  ImmGen.io.ImmSel := Control.io.ImmSel

  // ALU 接続
  ALU.io.inA := Mux(Control.io.Asel===A_PC, pc, Reg.io.out_data1)
  ALU.io.inB := Mux(Control.io.Bsel===B_IMM, ImmGen.io.imm31, Reg.io.out_data2)
  ALU.io.ALUSel := Control.io.ALUSel

  // Memory 接続
  DMEM.io.Addr := ALU.io.ALUout
  DMEM.io.DataW := Reg.io.out_data2
  DMEM.io.MemRW := Control.io.MemRW

  // writeback
  Reg.io.WriteData := MuxLookup(Control.io.WBSel,0.U,Array(
    WB_MEM -> DMEM.io.DataR,
    WB_ALU -> ALU.io.ALUout,
    WB_PC4 -> (pc+4.U)
  ))

  //　PCの更新
  pc := Mux(Control.io.PCSel===PC_ALU, ALU.io.ALUout, pc+4.U)

  // pcの値とALUの出力を確認しようってことで
  io.path_pcout := pc
  io.path_aluout := ALU.io.ALUout
}
