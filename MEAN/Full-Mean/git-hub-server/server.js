var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');
mongoose.Promise = global.Promise;
mongoose.connect('mongodb://localhost/git_hub_db');

var app = express();



var GitHubSchema = new mongoose.Schema({
	username: {type: String},
	score: {type: Number},
	img_url: {type: String}
}, {timestamps: true});

mongoose.model('GitHub', GitHubSchema);
var GitHub = mongoose.model('GitHub');


app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, './public/dist')));




app.post('/users', function(req, res){
	// console.log(req.body);
	var github = new GitHub(req.body);

	github.save(function(err){
		if(err){
			console.log("There was an error posting to the DB in the server.js!")
		}else{
			console.log("Success! posted to the DB");
		}
	})

	// return res.json(true);
})

// app.get('/notes', function(req, res){
	
// 	GitHub.find({}, function(err, result){
// 		if(err){
// 			console.log("there was an error when trying to get data in the server.js");
// 		}else{
// 			return res.json(result);
// 		}
// 	})

// })



app.listen(8000, function() {
    console.log("listening on port 8000");
})