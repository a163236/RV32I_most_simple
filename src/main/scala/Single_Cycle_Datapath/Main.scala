package Single_Cycle_Datapath

import java.io.{File, FileWriter}
import java.nio.file.{Files, Paths}


object Main extends App {
  //val dir = new File(args(0)) // args(0)のディレクトリのオブジェクトを作って
  //dir.mkdirs                  // args(0)ディレクトリを作成する

  val verilogString = (new chisel3.stage.ChiselStage).emitVerilog(new dpath)

  //val verilog = new FileWriter(new File(dir, s"main.v"))
  //verilog write verilogString
  //verilog.close()

  println(verilogString) // verilog のprint


}
