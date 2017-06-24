var express = require("express");
var bodyParser = require("body-parser");
var path = require('path');
var expressValidator = require('express-validator')
var mongojs = require('mongojs');
var db = mongojs('customer_app', ['users']);
var ObjectId = mongojs.ObjectId;

var app = express();

//Set View Engine
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views')); 

//Body Parser Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));


//Set Static Path
app.use(express.static(path.join(__dirname, 'static')));

// Global Variables
app.use(function(req, res, next){
	res.locals.errors = null;
	next();
});

//Express Validator Middelware

app.use(expressValidator({
  errorFormatter: function(param, msg, value) {
      var namespace = param.split('.')
      , root    = namespace.shift()
      , formParam = root;

    while(namespace.length) {
      formParam += '[' + namespace.shift() + ']';
    }
    return {
      param : formParam,
      msg   : msg,
      value : value
    };
  }
})); 


app.get('/', function(req, res){
	db.users.find(function (err, docs) {
		res.render('index', {
			title: 'Customers',
			users: docs
		}); 
	})
	
})

app.post('/users/add', function(req, res){

	// var newUser = {
	// 		first_name: req.body.first_name,
	// 		last_name: req.body.last_name,
	// 		email: req.body.email
	// 	}
	// console.log(newUser);

	req.checkBody('first_name', 'First Name must not be empty').notEmpty();
	req.checkBody('last_name', 'Last Name must not be empty').notEmpty();
	req.checkBody('email', 'Email must not be empty').notEmpty();

	var errors = req.validationErrors();

	// if there are errors still render the home page
	if (errors){
		res.render('index', {
			title: 'Customers',
			users: users,
			errors: errors
		}); 
	}else{
		var newUser = {
			first_name: req.body.first_name,
			last_name: req.body.last_name,
			email: req.body.email
		}
		db.users.insert(newUser, function(error, result){
			if(error){
				console.log(error);
			}
			res.redirect('/');
		})
	}
	
})

app.delete('/users/delete/:id', function(req, res){
	db.users.remove({_id: ObjectId(req.params.id)}, function(error, result){
		if (error){
			console.log(error)
		}else{
			res.redirect('/')
		}
	})
})

app.listen(8000, function(){
	console.log("listening on 8000");
})