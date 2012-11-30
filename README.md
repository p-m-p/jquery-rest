Missing RESTful JSON API helper methods for jQuery Ajax
===

```javascript
// short hand for PUT requests $.putJSON(url, data, options)
$.putJSON(
    'http://restapi.com/page/' // API endpoint
  , {id: 4, title: 'My new page title'}, // PUT data (sent as JSON)
  , { // Any other $.ajax options you need to add
      success: function (data) {
        console.log(data); // JSON response data
      }
    }
);

// short hand for DELETE requests $.deleteJSON(url, options)
$.deleteJSON(
    'http://restapi.com/page/' // API endpoint
  , { // Any other $.ajax options you need to add
        data: {id: 4} // if you send any data it will be sent as JSON
      , success: function (data) {
          console.log(data); // JSON response data
        }
    }
);
```
