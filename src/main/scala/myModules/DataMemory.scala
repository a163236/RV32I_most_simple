package myModules
import chisel3._

object DataMemory{
  val MemRead = false.B
  val MemWrite = true.B

}

class DataMemory extends Module{
  val io = IO(new Bundle() {
    val Addr = Input(UInt(32.W))
    val DataW = Input(UInt(32.W))
    val MemRW = Input(Bool())
    val DataR = Output(UInt(32.W))
  })
  val DMEM = Mem(256, UInt(32.W))

  when(io.MemRW){
    DMEM.write(io.Addr, io.DataW)
  }
  io.DataR := DMEM(io.Addr)
}
