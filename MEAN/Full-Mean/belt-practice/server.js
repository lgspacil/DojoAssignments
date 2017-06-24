var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');
var Schema = mongoose.Schema;
mongoose.Promise = global.Promise;
mongoose.connect('mongodb://localhost/discussion_db');

var app = express();

var UserSchema = new mongoose.Schema({
	name: {type: String},
	_post: [{type: Schema.Types.ObjectId, ref:'Post'}],
	_comments: [{type: Schema.Types.ObjectId, ref:'Comment'}],
    _topics: [{type: Schema.Types.ObjectId, ref:'Topic'}]
}, {timestamps: true});

var TopicSchema = new mongoose.Schema({
	title: { type: String},
  	text: { type: String},
  	category: { type: String},
  	username: { type: String},
  	_user: { type: Schema.Types.ObjectId, ref: 'User' },
  	posts: [{type: Schema.Types.ObjectId, ref: 'Post'}],
  	count: { type: Number, default: 0 }
}, { timestamps: true });

var PostSchema = new mongoose.Schema({
	username: {type: String},
	content: {type: String},
    likes: {type: Number, default: 0},
    dislikes: {type: Number, default: 0},
	_user: {type: Schema.Types.ObjectId, ref:'User'}, //who posted it
    _topic: {type: Schema.Types.ObjectId, ref:'Topic'}, //what topic was it posted on
    _comments: [{type: Schema.Types.ObjectId, ref:'Comment'}]
}, {timestamps: true});

var CommentSchema = new mongoose.Schema({
	content: {type: String},
	_user: {type: Schema.Types.ObjectId, ref:'User'},
    _post: {type: Schema.Types.ObjectId, ref:'Post'}
}, {timestamps: true});

mongoose.model('User', UserSchema);
mongoose.model('Topic', TopicSchema);
mongoose.model('Post', PostSchema);
mongoose.model('Comment', CommentSchema);

var User = mongoose.model('User');
var Topic = mongoose.model('Topic');
var Post = mongoose.model('Post');
var Comment = mongoose.model('Comment');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(express.static(path.join(__dirname, './public/dist')));




app.post('/users', function(req, res){

	User.findOne({name: req.body.name}, function(err, result){
		if(err){
			console.log("there was an error when finding in server.js")
		}
		else{
			if (result == null){
				console.log("there was a null! ... that means we have to add a user!")

				var user = new User({name: req.body.name});

				user.save(function(err){
					if(err){
						console.log("There was an error posting to the DB in the server.js!")
					}else{
						console.log(user._id);
						return res.json(user._id);
					}
				
				})

			}
			else{

				// console.log("there was not a null! ... we already have this user", result._id)
				return res.json(result._id);

			}
			
		}
	})
				
})


app.post('/add_topic', function(req, res){
	var topic = new Topic(req.body);

	console.log(req.body);

	topic.save(function(err){
		if(err){
			console.log("there was an error posting the Topic to the DB in the server.js")
		}else{
			console.log(/*"success! posted Topic in the DB"*/)
		}
	})

	return res.json(true);
})

//creating a post that must also update the topic

app.post('/add_post', function(req, res){


	Topic.findOne({_id: req.body._topic}, function(err, topic){
		
		//creating a post
		var post = new Post(req.body);
		post._topic = topic._id;
		topic.posts.push(post);
		post.save(function(err){
			topic.save(function(err){
				if(err) {console.log("Sadly this did not work");}
				else { res.json(true)}
			})
		})

	})

	

	// var post = new Post(req.body);

	// post.save(function(err){
	// 	if(err){
	// 		console.log("we got an error when posting a POST in server.js")
	// 	}else{
	// 		console.log("Success! in server.js when posting a POST")
	// 	}
	// })

	// return res.json(true);

})


app.get('/topics', function(req, res){
	
	Topic.find({}, function(err, result){
		if(err){
			console.log("there was an error when trying to display the Topics form the server.js");
		}else{
			// console.log("result: ", result)
			return res.json(result);
		}
	})

})

app.get("/topic/:id", function(req, res){
	//sending the objectId of the topic to find the object that is associated with it
	console.log(req.params.id);
	//new to populate the topics with the posts array


	Topic.findOne({_id: req.params.id})
	.populate('posts')
	.exec(function(err, result){
		return res.json(result);
	})

})

app.get("/user/:id", function(req, res){
	User.findOne({_id: req.params.id}, function(err, result){
		if(err){
			console.log("error!");
		}else{
			return res.json(result);
		}
	})
})



app.listen(8000, function() {
    console.log("listening on port 8000");
})