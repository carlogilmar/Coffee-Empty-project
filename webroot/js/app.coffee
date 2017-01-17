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
    source = $('#entry-template').html()
    template = Handlebars.compile(source)
    context =
       title: 'Raiz'
       body: 'This is my first post!'
    html = template(context)
    $("#index-banner").html(html)

  prueba1: ->
    alert "prueba 1"
    source = $('#entry-template').html()
    template = Handlebars.compile(source)
    context =
       title: 'Prueba1'
       body: 'Director redirigiendo a prueba 1'
    html = template(context)
    $("#index-banner").html(html)


  prueba2: ->
    alert "prueba 2"
    source = $('#entry-template').html()
    template = Handlebars.compile(source)
    context =
       title: 'Prueba 2'
       body: 'Director redirigiendo a prueba 2'
    html = template(context)
    $("#index-banner").html(html)


  prueba3: ->
    alert "prueba 3"
    source = $('#entry-template').html()
    template = Handlebars.compile(source)
    context =
       title: 'Prueba 3'
       body: 'Dirigiendo a prueba3'
    html = template(context)
    $("#index-banner").html(html)


