package scala.lms.tutorial

import lms.core.stub._
import lms.macros.{RefinedManifest, SourceContext}
import lms.core.virtualize

@virtualize
trait WasmScannerBase extends Base with EffectExp { this: Dsl =>

  abstract class StringPointer {
    def apply(idx: Int): Char
    def HashCode(len: Int): Long
  }

  implicit def stringPointerManifest: RefinedManifest[StringPointer] = new RefinedManifest[StringPointer] {
    override def fields: List[(String, Manifest[_])] = List(("ptr", manifest[Int]))
    override def runtimeClass: Class[_] = classOf[StringPointer]
  }

  implicit class StringPointerOps(x: Rep[StringPointer]) {
    def apply(i: Rep[Int]): Rep[Char] = x match {
      case Wrap(_) => uncheckedPure[Char](i, x, "(i32.add)", "(i32.load8_u)")
    }
    def HashCode(len: Rep[Int]): Rep[Long] = Wrap[Long](Adapter.g.reflect("StrSubHashCode", Unwrap(x), Unwrap(len)))
  }

  def stringPtrFromCharArray(data: Rep[Array[Char]], start: Rep[Int]): Rep[StringPointer]
  def stringPtrFromString(s: Rep[String]): Rep[StringPointer]
  def readFile(name: Rep[String]): Rep[Array[Char]]
  def printData(data: Rep[StringPointer], len: Rep[Int]): Rep[Unit]
}

@virtualize
trait WasmScannerExp extends WasmScannerBase with DslExp { this: EffectExp =>
  def stringPtrFromCharArray(data: Rep[Array[Char]], start: Rep[Int]): Rep[StringPointer] =
    uncheckedPure[StringPointer](data, start, "(i32.add)")
  def stringPtrFromString(s: Rep[String]): Rep[StringPointer] = uncheckedPure[StringPointer](s)
  def readFile(name: Rep[String]) = Wrap[Array[Char]](Adapter.g.reflect("readFile", Unwrap(name)))
  def printData(data: Rep[StringPointer], len: Rep[Int]) =
     Wrap[Unit](Adapter.g.reflectWrite("printData", Unwrap(data), Unwrap(len))(Adapter.CTRL))
}

@virtualize
trait WasmGenScanner extends EffectExp