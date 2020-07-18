package myModules

import chisel3._
class Reg extends Module{
  val io = IO(new Bundle() {
    val rs1 = Input(UInt(32.W))
    val rs2 = Input(UInt(32.W))
    val rd = Input(UInt(32.W))
    val RegWEn = Input(UInt(32.W))
    val WriteData = Input(UInt(32.W))
    val out_data1,out_data2 = Output(UInt(32.W))
  })

  // Register File
  val regfile = Mem(32 ,UInt(32.W))
  //regfile.write(0.U,1.U)  //addr, data
  //regfile.write(1.U,1.U)
  //regfile.write(2.U,1.U)



  io.out_data1 := regfile(io.rs1)
  io.out_data2 := regfile(io.rs2)

  when(io.RegWEn===true.B && io.WriteData=/=0.U){
    regfile(io.rd) := io.WriteData
  }

}
