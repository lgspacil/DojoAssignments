var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');

var app = express();

mongoose.connect('mongodb://localhost/quotes_db');

var UserSchema = new mongoose.Schema({
	name: String,
	quote: String,
	date: { type: Date, default: Date.now },
	like: {type: Number, default: 0}
});

mongoose.model('Person', UserSchema);
var Person = mongoose.model('Person');
mongoose.Promise = global.Promise;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, './static')));
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');

app.get('/result', function(req, res){
	Person.find({}, function(err, result){
		res.render('result', {quote_data: result});
	})
});

app.get('/', function(req, res){
	res.render('index');
});


app.post('/quotes', function(req, res){
	
	var person = new Person({name: req.body.name, quote: req.body.quote});

	person.save(function(err){
		if(err){
			console.log("there was an error!");
			res.render('index');
		}else{
			console.log("there were no errors--------");
			res.redirect('/result');
		}
	})
})

app.post('/like/:id', function(req, res){
    Person.update({_id: req.params.id}, {$inc: {like: 1}}, function(err, users){
        if(users){
            res.redirect('/result')
        }
    })
})

app.listen(8000, function() {
    console.log("listening on port 8000");
})