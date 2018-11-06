// Dependencies
var express = require("express");
var bodyParser = require("body-parser");
var routes = require('./controllers/burgers_controller.js');


// Set up 
var app = express();
var PORT = process.env.PORT || 8080;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: "application/vnd.api+json" }));
app.use('/',routes); 

app.use (express.static(process.cwd() + '/public')); 

var exphbs = require('express-handlebars');

app.engine('handlebars', exphbs({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');


app.listen(PORT, function() {
  console.log("On PORT " + PORT);
});
