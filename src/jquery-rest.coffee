defaults =
  processData: false
  contentType: 'application/json'
  dataType: 'json'

$.extend

  putJSON: (url, data, options) ->
    return $.ajax($.extend(options,
      url: url
      data: JSON.stringify(data)
      type: 'put'
    ), defaults)

  deleteJSON: (url, options) ->
    return $.ajax($.extend(options,
      url: url
      data: JSON.stringify(data)
      type: 'delete'
    ), defaults)
