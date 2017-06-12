var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');

var app = express();

mongoose.connect('mongodb://localhost/basic_mongoose');

var UserSchema = new mongoose.Schema({
	name: String,
	age: Number
});

mongoose.model('User', UserSchema); // We are setting this Schema in our Models as 'User'
var User = mongoose.model('User') // We are retrieving this Schema from our Models, named 'User'
mongoose.Promise = global.Promise;


app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, './static')));
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');

//Home Page
app.get('/', function(req, res){
	User.find({}, function(err, result){
		res.render('index', {user_data: result});
	})
	
});


//Form information when submited
app.post('/users', function(req, res){
	//console.log('POST DATA', req.body);

	var user = new User({name: req.body.first_name, age: req.body.age});

	user.save(function(err){
		if (err){
			console.log("there was an error")
		}
		else{
			console.log("there are NO errors! :) !");
			res.redirect('/');
		}
	})

})


app.listen(8000, function() {
    console.log("listening on port 8000");
})

