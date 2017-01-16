class @.App
  constructor: ->
    console.log '1.- Inicializando App Class'
    @manager= new Manager()


class @.Manager

  constructor: ->
    console.log '2.- Manager Class on'
    @bindEvents()

  addingAlert: =>
    console.log '3.- Adding Alert'
    $('#trelloCard').val("")

  bindEvents: ->
    $('#submitEvent').on('click', @addingAlert)


