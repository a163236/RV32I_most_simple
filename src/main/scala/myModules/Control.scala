package myModules

import chisel3._
import chisel3.util._
// myModuelsから
import ALU._
import ImmGen._
import DataMemory._
import Control._
import Instructions._

object Control{

  val Y = true.B
  val N = false.B

  // PCSel
  val PC_4 = 0.U(2.W)
  val PC_ALU = 1.U(2.W)

  // Asel
  val A_XXX = 0.U(1.W)
  val A_rs1 = 0.U(1.W)
  val A_PC = 1.U(1.W)

  // Bsel
  val B_XXX = 0.U(1.W)
  val B_rs2 = 0.U(1.W)
  val B_IMM = 1.U(1.W)

  // WBSel
  val WB_MEM = 0.U(2.W)
  val WB_ALU = 1.U(2.W)
  val WB_PC4 = 2.U(2.W)

}

class Control extends Module{
 val io = IO(new Bundle() {
   val inst = Input(UInt(32.W))
   val BrEq = Input(Bool())
   val BrLt = Input(Bool())
   val PCSel = Output(UInt(2.W))
   val ImmSel = Output(UInt(3.W))
   val RegWEn = Output(Bool())
   val BrUn = Output(Bool())
   val Asel = Output(UInt(1.W))
   val Bsel = Output(UInt(1.W))
   val ALUSel = Output(UInt(4.W))
   val MemRW = Output(Bool())
   val WBSel = Output(UInt(3.W))
 })
  io := DontCare

  // 命令を変数に格納
  val opcode = io.inst(6,0)
  val rs1 = io.inst(19,15)
  val rs2 = io.inst(24,20)
  val rd = io.inst(11,7)
  val funct3 = io.inst(14,12)
  val funct7 = io.inst(31,25)
  val imm31_12 = io.inst(31,12)

  // 初期化
  val default = List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_ADD, MemRead, WB_ALU)
  val map = Array(

    // J形式     pc   IMMSel   RegWEn  BrUn    Asel   Bsel  ALUSel  MemRW    WBSel
    JAL -> List(PC_ALU,IMM_J, true.B, false.B,A_PC, B_IMM, ALU_ADD,MemRead, WB_PC4),

    // B形式                    pc        IMMSel RegWEn  BrUn    Asel   Bsel  ALUSel  MemRW    WBSel
    BEQ -> List(Mux(io.BrEq,PC_ALU,PC_4),IMM_B, false.B,false.B,A_PC, B_IMM, ALU_ADD,MemRead, WB_ALU),
    BNE -> List(Mux(io.BrEq,PC_4,PC_ALU),IMM_B, false.B,false.B,A_PC, B_IMM, ALU_ADD,MemRead, WB_ALU),
    BLT -> List(Mux(io.BrLt,PC_ALU, PC_4),IMM_B,false.B,false.B,A_PC, B_IMM, ALU_ADD,MemRead, WB_ALU),
    BGE -> List(Mux((io.BrEq || !io.BrLt),PC_ALU,PC_4)
      ,IMM_B, false.B,false.B,A_PC, B_IMM, ALU_ADD,MemRead, WB_ALU),

    // I形式     pc   IMMSel   RegWEn  BrUn    Asel   Bsel  ALUSel  MemRW    WBSel
    ADDI-> List(PC_4, IMM_I, true.B, false.B, A_rs1, B_IMM, ALU_ADD, MemRead, WB_ALU),
    SLTI-> List(PC_4, IMM_I, true.B, false.B, A_rs1, B_IMM, ALU_SLT, MemRead, WB_ALU),
    SLTIU->List(PC_4, IMM_I, true.B, false.B, A_rs1, B_IMM, ALU_SLTU, MemRead, WB_ALU),
    XORI-> List(PC_4, IMM_I, true.B, false.B, A_rs1, B_IMM, ALU_XOR, MemRead, WB_ALU),
    ORI -> List(PC_4, IMM_I, true.B, false.B, A_rs1, B_IMM, ALU_OR, MemRead, WB_ALU),
    ANDI-> List(PC_4, IMM_I, true.B, false.B, A_rs1, B_IMM, ALU_AND, MemRead, WB_ALU),

    // R形式     pc   IMMSel   RegWEn  BrUn    Asel   Bsel  ALUSel  MemRW    WBSel
    ADD -> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_ADD, MemRead, WB_ALU),
    SUB -> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_SUB, MemRead, WB_ALU),
    SLL -> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_SLL, MemRead, WB_ALU),
    SLT -> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_SLT, MemRead, WB_ALU),
    SLTU-> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_SLTU, MemRead, WB_ALU),
    XOR -> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_XOR, MemRead, WB_ALU),
    SRL -> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_SRL, MemRead, WB_ALU),
    SRA -> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_SRA, MemRead, WB_ALU),
    OR ->  List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_OR, MemRead, WB_ALU),
    AND -> List(PC_4, IMM_X, true.B, false.B, A_rs1, B_rs2, ALU_AND, MemRead, WB_ALU),
  )


  val ctrlSingals = ListLookup(io.inst, default, map)

  io.PCSel := ctrlSingals(0)
  io.ImmSel := ctrlSingals(1)
  io.RegWEn := ctrlSingals(2)
  io.BrUn := ctrlSingals(3)
  io.Asel := ctrlSingals(4)
  io.Bsel := ctrlSingals(5)
  io.ALUSel := ctrlSingals(6)
  io.MemRW := ctrlSingals(7)
  io.WBSel := ctrlSingals(8)
}
