var express = require('express');
var app = express();

app.get('/', function(req, res) {
  res.send('hello world');
});

var port = normalizePort(process.env.PORT || '8080');

app.listen(port);
console.log("server starting...");

function normalizePort(val) {
  var port = parseInt(val, 10);

  if (isNaN(port)) {
    // named pipe
    return val;
  }

  if (port >= 0) {
    // port number
    return port;
  }

  return false;
}
