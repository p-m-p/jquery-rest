Missing RESTful JSON API helper methods for jQuery Ajax
===

```javascript
// short hand for PUT requests $.putJSON(url [,data] [,callback])
$.putJSON(
    'http://restapi.com/page/' // API endpoint
  , {id: 4, title: 'My new page title'} // PUT data (sent as JSON)
  , function (data) { // success callback function
      console.log(data); // JSON response data
    }
);

// short hand for POST requests $.postJSON(url [,data] [,callback])
$.postJSON('http://restapi.com/page/', {title: 'My new page'}, function (data) {
  console.log(data); // JSON response data
});

// short hand for DELETE requests $.deleteJSON(url [,data] [,callback])
$.deleteJSON('http://restapi.com/page/', function (data) { console.log(data) });
```
