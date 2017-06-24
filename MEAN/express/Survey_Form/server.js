// require express
var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');

console.log(typeof(express));
var app = express();
console.log(app);


// use it!
app.use(bodyParser.urlencoded({ extended: true }));
// static content
app.use(express.static(path.join(__dirname, "./static")));
// setting up ejs and our views folder
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

// root route to render the index.ejs view
app.get('/', function(req, res) {
 	res.render("index");
});

app.post('/result', function(req, res){


	res.render('result', {user_data: [req.body]});
})



// tell the express app to listen on port 8000
app.listen(8000, function() {
 console.log("listening on port 8000");
});