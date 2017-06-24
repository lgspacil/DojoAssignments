var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');
mongoose.Promise = global.Promise;
mongoose.connect('mongodb://localhost/group_practice_db');

var app = express();



var NoteSchema = new mongoose.Schema({
	content: {type: String},
	date: { type: Date, default: Date.now },
});

mongoose.model('Note', NoteSchema);
var Note = mongoose.model('Note');


app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, './public/dist')));




app.post('/notes', function(req, res){
	var note = new Note({content: req.body.content});

	note.save(function(err){
		if(err){
			console.log("There was an error posting to the DB in the server.js!")
		}else{
			console.log("Success! posted to the DB");
		}
	})

	return res.json(true);
})

app.get('/notes', function(req, res){
	
	Note.find({}, function(err, result){
		if(err){
			console.log("there was an error when trying to get data in the server.js");
		}else{
			return res.json(result);
		}
	})

})



app.listen(8000, function() {
    console.log("listening on port 8000");
})