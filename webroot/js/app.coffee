class @.App
  constructor: ->
    console.log '1.- Inicializando App Class'
    @manager= new Manager()


class @.Manager

  constructor: ->
    console.log '2.- Manager Class on'
    @bindEvents()
    @start()

  addingAlert: =>
    console.log '3.- Adding Alert'
    $('#trelloCard').val("")

  bindEvents: ->
    $('#submitEvent').on('click', @addingAlert)

  start: ->
    console.log "Start on"
    @routes =
      '/': @prueba
      '/prueba1': @prueba1
      '/prueba2': @prueba2
      '/prueba3': @prueba3
    @urlMappings()

  urlMappings: ->
    console.log "url mappings on"
    router = Router(@routes)
    router.init()

  prueba: ->
    alert "Prueba raiz"

  prueba1: ->
    alert "prueba 1"

  prueba2: ->
    alert "prueba 2"

  prueba3: ->
    alert "prueba 3"
