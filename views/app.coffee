# $ ->
#   $('a').click (link) ->
#     link.preventDefault()
#     $.ajax
#       type: "POST"
#       url: ""
#       data:
#         'entry.0.single': $(this).attr('id')
#       'Access-Control-Allow-Origin': '*'
#       complete: ->
