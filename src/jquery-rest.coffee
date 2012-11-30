# default options for sending JSON formatted data in the request
defaults =
  processData: false
  contentType: 'application/json'
  dataType: 'json'
 
# set up the options for making the ajax request
configureOptions = (args, type) ->
  url = args[0]
  data = args[1]
  callback = args[2]

  # No data supplied just callback function
  if typeof data is 'function'
    callback = data
    data = null

  # Set the options and mix with defaults
  $.extend(
      url: url, type: type, data: JSON.stringify(data), success: callback
    , defaults
  )

# add the methods to jQuery
$.extend
  putJSON: ->
    $.ajax configureOptions(arguments, 'put')
  postJSON: ->
    $.ajax configureOptions(arguments, 'post')
  deleteJSON: ->
    $.ajax configureOptions(arguments, 'delete')
