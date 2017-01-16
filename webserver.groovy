
import io.vertx.groovy.ext.web.handler.StaticHandler
import io.vertx.groovy.ext.web.Router
import io.vertx.groovy.ext.web.handler.BodyHandler

//vertx routes
def server = vertx.createHttpServer()
def router = Router.router(vertx)

router.route().handler(BodyHandler.create())

//route by defect->index
router.route("/static/*").handler(
	 StaticHandler.create().setCachingEnabled(false)
)

server.requestHandler(router.&accept).listen(8080)
