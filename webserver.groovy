
import io.vertx.groovy.ext.web.handler.StaticHandler
import io.vertx.groovy.ext.web.Router
import io.vertx.groovy.ext.web.handler.BodyHandler

//vertx routes
def server = vertx.createHttpServer()
def router = Router.router(vertx)
//Event Bus
def eb = vertx.eventBus()
//Router
router.route().handler(BodyHandler.create())

//route by defect->index
router.route("/*").handler(
	 StaticHandler.create().setCachingEnabled(false)
)


//Verticle-Consumer/Handler
eb.consumer("com.makingdevs", { message ->
  message.reply("tu me dijiste ---${message.body()}---- y yo te respondo ---holi---")
 })

//Verticle Sender
vertx.eventBus().send("com.makingdevs", "Hola", { reply ->
  if (reply.succeeded()) {
    println reply.result().body()
  }
})


server.requestHandler(router.&accept).listen(8080)
