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
    @urlMappings()

  urlMappings: ->
    console.log "url mappings on"
    router = Router(@routes)
    router.init()

  prueba: ->
    source = $('#start-emailer').html()
    template = Handlebars.compile(source)
    context =
       title: 'Raiz'
       body: 'This is my first post!'
    html = template(context)
    $("#index-banner").html(html)

  prueba1: ->
    source = $('#new-emailer').html()
    template = Handlebars.compile(source)
    context =
       title: 'Prueba1'
       body: 'Director redirigiendo a prueba 1'
    html = template(context)
    $("#index-banner").html(html)


  prueba2: ->
    source = $('#read-emailer').html()
    template = Handlebars.compile(source)
    context =
       title: 'Prueba 2'
       body: 'Director redirigiendo a prueba 2'
    html = template(context)
    $("#index-banner").html(html)


