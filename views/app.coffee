$ ->
  $('a').click (link) ->
    link.preventDefault()
    $.ajax
      type: "POST"
      url: "https://docs.google.com/spreadsheet/formResponse?formkey=dGh1SENObTdncWFjYjY4bEFUZGhUNFE6MQ&amp;ifq"
      data:
        'entry.0.single': $(this).attr('id')
      'Access-Control-Allow-Origin': '*'
      complete: ->
        window.location = 'http://www.crazyegg.com/'