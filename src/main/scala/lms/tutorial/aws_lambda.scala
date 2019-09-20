package scala.lms.tutorial

import lms.wasm._

import scala.collection.JavaConversions.mapAsJavaMap
import scala.util.parsing.json.JSONObject

import java.util.Base64
import java.io.FileNotFoundException
import java.nio.file.{Files, Paths}

import com.amazonaws.services.lambda.runtime.events.{
  APIGatewayProxyRequestEvent,
  APIGatewayProxyResponseEvent
}
import com.amazonaws.services.lambda.runtime.{Context, RequestHandler}


class AwsLambda extends RequestHandler[APIGatewayProxyRequestEvent, APIGatewayProxyResponseEvent] {
  var qu: String = _
  var fn: String = _

  trait MainEngine extends Engine {
    override def query = qu
    override def filename =  fn
  }

  private def engine = new DslDriverWasm[String,Unit] with WasmScannerExp
    with StagedEngine with MainEngine with query_optwasm.QueryCompiler { q =>
    override val codegen = new DslGenWasm with WasmGenScanner {
      val IR: q.type = q
    }
    override def snippet(fn: Rep[String]): Rep[Unit] = run
    override def prepare: Unit = {}
    override def eval: Unit = eval(filename)
  }

  def handleRequest(request: APIGatewayProxyRequestEvent, context: Context): APIGatewayProxyResponseEvent = {
    val headers = Map("Access-Control-Allow-Origin" -> "*")
    val params = request.getQueryStringParameters

    def fatalError(cause: String) = {
      context.getLogger.log(s"fatal error: $cause")
      new APIGatewayProxyResponseEvent()
        .withHeaders(mapAsJavaMap(headers))
        .withStatusCode(500)
    }

    def userError(cause: String) = {
      new APIGatewayProxyResponseEvent()
        .withHeaders(mapAsJavaMap(headers))
        .withStatusCode(400)
        .withBody(JSONObject(Map(("reason" -> cause.split("\n")(0)))).toString)
    }

    qu = params.get("query")

    if (qu == null)
      return userError("missing query parameter in GET request")

    val format = params.getOrDefault("format", "binary")

    if (format != "binary" && format != "text")
      return userError("format parameter should be 'binary' or 'text'")

    context.getLogger.log(s"query: $qu")

    var compiled = ""
    try {
      compiled = engine.watCode
    } catch {
      case e: FileNotFoundException => return userError("missing schema for table")
      case e: Exception => return userError(e.getMessage)
      case e: Throwable => return fatalError(e.toString)
    }

    if (format == "text")
      return new APIGatewayProxyResponseEvent()
        .withHeaders(mapAsJavaMap(headers + ("Content-Type" -> "text/plain")))
        .withStatusCode(200)
        .withBody(compiled)

    try {
      val watFile = "/tmp/snippet.wat"
      val wasmFile = "/tmp/snippet.wasm"

      Files.write(Paths.get(watFile), compiled.getBytes)

      import scala.sys.process._
      Seq("./wat2wasm", watFile, "-o", wasmFile).!!

      val wasm = Files.readAllBytes(Paths.get(wasmFile))

      val response = new APIGatewayProxyResponseEvent()
        .withHeaders(mapAsJavaMap(headers + ("Content-Type" -> "application/wasm")))
        .withStatusCode(200)
        .withBody(new String(Base64.getEncoder.encode(wasm)))
      response.setIsBase64Encoded(true)
      response
    } catch {
      case e: Throwable => fatalError(e.toString)
    }
  }
}

