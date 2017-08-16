var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');

var app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, './static')));

//the views is where we load the html files
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');

//setting up mongoose config
require('./server/config/mongoose.js');

// define routes and controllers
//this is where all the logic is done.....
var routes = require('./server/config/routes.js')(app)





// var Animal = mongoose.model('Animal');

mongoose.Promise = global.Promise;




app.listen(8000, function() {
    console.log("listening on port 8000");
})