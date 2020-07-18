package myModules
import chisel3._

class BranchComp extends Module{
  val io = IO(new Bundle() {
    val DataA = Input(UInt(32.W))
    val DataB = Input(UInt(32.W))
    val BrUn = Input(Bool())
    val BrEq = Output(Bool())
    val BrLt = Output(Bool())
  })
  io := DontCare
  when(io.BrUn){ // 符号無しのとき
    io.BrEq := Mux(io.DataA === io.DataB, true.B, false.B)
    io.BrLt := Mux(io.DataA < io.DataB, true.B, false.B)
  }.otherwise{
    io.BrEq := Mux(io.DataA.asSInt() === io.DataB.asSInt(), true.B, false.B)
    io.BrLt := Mux(io.DataA.asSInt() < io.DataB.asSInt(), true.B, false.B)
  }

}
