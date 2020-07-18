package Single_Cycle_Datapath

import chisel3._
import chiseltest._
import org.scalatest._



class dpath_Test extends FlatSpec with ChiselScalatestTester with Matchers{
  behavior of "dpath_Test"

  it should "" in {
    test(new dpath){c =>

      for (i <- 1 to 200){
        println("PC = "+c.io.path_pcout.peek()+",   ALU = "+c.io.path_aluout.peek())
        c.clock.step(1)
      }

    }
  }

}
