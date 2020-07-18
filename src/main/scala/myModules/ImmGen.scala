package myModules

import chisel3._
import chisel3.util._

object ImmGen{
  // imm_sel
  val IMM_X  = 0.U(3.W)
  val IMM_I  = 1.U(3.W)
  val IMM_S  = 2.U(3.W)
  val IMM_U  = 3.U(3.W)
  val IMM_J  = 4.U(3.W)
  val IMM_B  = 5.U(3.W)
  val IMM_Z  = 6.U(3.W)

}

import ImmGen._

class ImmGen extends Module{
  val io = IO(new Bundle() {
    val inst = Input(UInt(32.W))
    val ImmSel = Input(UInt(3.W))
    val imm31 = Output(UInt(32.W))
  })

  val Iimm = Cat(Fill(20,io.inst(31)),io.inst(31,20))
  val Simm = Cat(Fill(20,io.inst(31)),io.inst(31,25),io.inst(11,8))
  val Bimm = Cat(Fill(19,io.inst(31)),io.inst(7),io.inst(31,25),io.inst(11,8),0.U(1.W))
  val Uimm = Cat(io.inst(31,12),Fill(12,0.U))
  val Jimm = Cat(Fill(12,io.inst(31)),io.inst(19,12), io.inst(20), io.inst(31,25), io.inst(24,21), 0.U(1.W))

  io.imm31 := MuxLookup(io.ImmSel,0.U(32.W),Array(
    IMM_X -> 0.U(32.W),
    IMM_I -> Iimm,
    IMM_S -> Simm,
    IMM_B -> Bimm,
    IMM_U -> Uimm,
    IMM_J -> Jimm
  ))
}
