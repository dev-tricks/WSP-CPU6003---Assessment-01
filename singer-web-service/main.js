var http = require("http");
var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'mysql',
  database: 'singer'
});

connection.connect(function (err) {
  if (err) throw err
  console.log('You are now connected with mysql database...')
})

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));

var server = app.listen(8099, "127.0.0.1", function () {

  var host = server.address().address
  var port = server.address().port

  console.log("Singer Web Service listening at http://%s:%s", host, port)

});

app.get('/product', function (req, res) {
  connection.query('select * from product', function (error, results, fields) {
    if (error) throw error;
    res.json(results);
  });
});

app.get('/product/:id', function (req, res) {
  connection.query('select * from product where id=?', [req.params.id], function (error, results, fields) {
    if (error) throw error;
    res.end(JSON.stringify(results));
  });
});


