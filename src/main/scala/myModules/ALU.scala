package myModules

import chisel3._
import chisel3.util.MuxLookup

object ALU {
  val ALU_ADD    = 0.U(4.W)
  val ALU_SUB    = 1.U(4.W)
  val ALU_AND    = 2.U(4.W)
  val ALU_OR     = 3.U(4.W)
  val ALU_XOR    = 4.U(4.W)
  val ALU_SLT    = 5.U(4.W)
  val ALU_SLL    = 6.U(4.W)
  val ALU_SLTU   = 7.U(4.W)
  val ALU_SRL    = 8.U(4.W)
  val ALU_SRA    = 9.U(4.W)
  val ALU_COPY_A = 10.U(4.W)
  val ALU_COPY_B = 11.U(4.W)
  val ALU_XXX    = 15.U(4.W)
}

import ALU._

class ALU extends Module{
  val io = IO(new Bundle() {
    val inA = Input(UInt(32.W))
    val inB = Input(UInt(32.W))
    val ALUSel = Input(UInt(4.W))
    val ALUout = Output(UInt(32.W))
  })

  io.ALUout := MuxLookup(io.ALUSel, 0.U, Array(
    ALU_ADD -> (io.inA.asSInt() + io.inB.asSInt()).asUInt(),
    ALU_SUB -> (io.inA.asSInt() - io.inB.asSInt()).asUInt(),
    ALU_AND -> (io.inA & io.inB),
    ALU_OR -> (io.inA | io.inB),
    ALU_XOR -> (io.inA ^ io.inB),
    ALU_SLT -> Mux(io.inA.asSInt()<io.inB.asSInt(), 1.U, 0.U),// 符号付き　set less than (1 or 0 をセット)
    ALU_SLL -> (io.inA << io.inB(4,0)),               // 左にシフト
    ALU_SLTU -> Mux(io.inA<io.inB, 1.U, 0.U),         // 符号無し　set less than (1 or 0 をセット)
    ALU_SRL -> (io.inA >> io.inB(4,0)),               // 右にシフト 0埋め
    ALU_SRA -> (io.inA .asSInt() >> io.inB).asUInt()  // 右にシフト 符号付で
  ))

}
