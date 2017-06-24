var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');

var app = express();

mongoose.connect('mongodb://localhost/animals_db');

var UserSchema = new mongoose.Schema({
	name: String,
	color: String,
	date: { type: Date, default: Date.now },
	weight: Number,
	habitat: String

});

mongoose.model('Animal', UserSchema);
var Animal = mongoose.model('Animal');
mongoose.Promise = global.Promise;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, './static')));
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');

app.get('/', function(req, res){
	Animal.find({}, function(err, result){
		res.render('index', {animal_data: result});
	})
})

app.get('/add/animal', function(req, res){
	res.render('result');
})

app.post('/add', function(req, res){
	var animal = new Animal({name: req.body.name, weight: req.body.weight, color: req.body.color, habitat: req.body.habitat});

	animal.save(function(err){
		if(err){
			console.log("There was an error!")
		}else{
			res.redirect('/');
		}
	})
})

app.get('/animal_description/:id', function(req, res){
	console.log(req.params.id);
	Animal.find({_id: req.params.id}, function(err, result){
		if(err){
			console.log("there was an error loading the page");
		}else{
			res.render('animal_detail', {animal_data: result});
		}
	})
})

app.get('/delete/:id', function(req, res){
	Animal.remove({_id: req.params.id}, function(err, result){
		if (err){
			console.log("Unable to delete this item");
		} else{
			res.redirect('/');
		}
	})
})


app.get('/rename/:id', function(req, res){
	res.render('edit', {id: req.params.id});
});

app.post('/edit/:id', function(req, res){
	Animal.update({_id: req.params.id}, {$set: {name: req.body.name, weight: req.body.weight, color: req.body.color, habitat: req.body.habitat}}, function(err, result){
		if (err) {
			console.log("there was an error")
		}else{
			res.redirect('/');
		}
	})
})


app.listen(8000, function() {
    console.log("listening on port 8000");
})