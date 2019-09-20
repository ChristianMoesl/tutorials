package scala.lms.tutorial

import lms.core.stub._
import lms.core.virtualize

@virtualize
trait ScannerLowerBase extends Base with UncheckedOps { this: Dsl =>
  def open(name: Rep[String]): Rep[Int]
  def close(fd: Rep[Int]): Rep[Unit]
  def filelen(fd: Rep[Int]): Rep[Int]
  def malloc(len: Rep[Int]): Rep[Array[Char]]
  def read(fd: Rep[Int], buffer: Rep[Array[Char]], len: Rep[Int]): Rep[Unit]
  def stringFromCharArray(buf: Rep[Array[Char]], pos: Rep[Int], len: Rep[Int]): Rep[String]
  def prints(s: Rep[String]): Rep[Int]
  def infix_toInt(c: Rep[Char]): Rep[Int] = c.asInstanceOf[Rep[Int]]
}

@virtualize
trait ScannerLowerExp extends ScannerLowerBase with UncheckedOpsExp { this: DslExp =>
  def open(name: Rep[String]) = uncheckedPure[Int]("open(",name,",0)")
  def close(fd: Rep[Int]) = unchecked[Unit]("close(",fd,")")
  def filelen(fd: Rep[Int]) = uncheckedPure[Int]("fsize(",fd,")") // FIXME: fresh name
  def malloc(len: Rep[Int]) = uncheckedPure[Array[Char]]("malloc(", len, ")")
  def read(fd: Rep[Int], buffer: Rep[Array[Char]], len: Rep[Int]) = unchecked[Unit]("read(",fd,", ",buffer,", ", len, ")")
  def stringFromCharArray(data: Rep[Array[Char]], pos: Rep[Int], len: Rep[Int]): Rep[String] = uncheckedPure[String](data," + ",pos)
  def prints(s: Rep[String]): Rep[Int] = unchecked[Int]("printll(",s,")")
}

@virtualize
trait CGenScannerLower extends CGenUncheckedOps