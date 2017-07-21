// require express
var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/ios_prac_db');

var BucketListSchema = new mongoose.Schema({
	task: {type: String}
}, {timestamps: true});

mongoose.model('BucketList', BucketListSchema);
var BucketList = mongoose.model('BucketList');




var app = express();
console.log(app);


// use it!
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json())
// static content
app.use(express.static(path.join(__dirname, "./static")));
// setting up ejs and our views folder
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

// root route to render the index.ejs view
app.get('/tasks', function(req, res) {

	BucketList.find({}, function(err, result){
		if(err){
			console.log("there was an error loading the page");
		}else{
			res.json(result);
		}
	})
});



app.post('/result', function(req, res){
	console.log(req.body)
	var bucketlist = new BucketList(req.body)
	console.log(bucketlist)


	bucketlist.save(function(err){
		if(err){
			console.log("there was an error")
		} else{
			res.redirect('/tasks');
		}
	})
})


app.post('/remove', function(req, res){

	console.log(req.body['id'])

	BucketList.remove({_id: req.body['id']}, function(err, result){
		if(err){
			console.log("Unable to delete this item")
		} else {
			res.redirect('/tasks')
		}
	})
})


app.post('/update', function(req, res){

	console.log(req.body)

	BucketList.findOneAndUpdate({_id: req.body.id}, { task: req.body["task"] }, {new : true},function(err, result){
		if (err) {
			console.log("there was an error updating")
		}else{
			// res.redirect('/tasks');
			console.log("RESULT: ", result)
			res.json(result);
		}
	})
})





// tell the express app to listen on port 8000
app.listen(8000, function() {
 console.log("listening on port 8000");
});