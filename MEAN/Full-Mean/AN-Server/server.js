var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/annonymous_quotes')
mongoose.Promise = global.Promise

var app = express();



var NoteSchema = new mongoose.Schema({
	'content': {type: String},
	'date': { type: Date, default: Date.now }
});

mongoose.model('Note', NoteSchema);
var Note = mongoose.model('Note');


app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, './public/dist')));


app.get('/notes', function(req, res){
	Note.find({}, function(err, data){
		if (err){
			console.log('err')
		}else{
			return res.json(data);
		}
	})
})

//when the server passes in the post request we want it to get caugh here!
//we set a variable note to a new Note instance
//pass in that information that we made from the form as a req to the DB
app.post('/notes', function(req, res){
	console.log(req.body);
	var note = new Note();

	note.content = req.body.content;

	note.save(function(err){
		if(err){
			console.log("we got an error in the server.js")
		}
		else{
			console.log("we posted to the DB!")
		}
		
	})

	return res.json(true);
})


app.listen(8000, function() {
    console.log("listening on port 8000");
})