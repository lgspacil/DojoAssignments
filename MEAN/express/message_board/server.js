var express = require("express");
var path = require("path");
var bodyParser = require('body-parser');
var mongoose = require('mongoose');
var Schema = mongoose.Schema;
mongoose.Promise = global.Promise;

var app = express();

//connecting to the db named message_db
mongoose.connect('mongodb://localhost/message_db');

//define Post Schema a blue print
//a post can have many comments
var PostSchema = new mongoose.Schema({
  name: String,
  text: {type: String, required: true }, 
  comments: [{type: Schema.Types.ObjectId, ref: 'Comment'}],
  date: { type: Date, default: Date.now }
}, {timestamps: true });


// define Comment Schema
// A comment is attatched to one post, refered to in _post
var CommentSchema = new mongoose.Schema({
  name: String,
  _post: {type: Schema.Types.ObjectId, ref: 'Post'},
  text: {type: String, required: true }
}, {timestamps: true });


// set our models by passing them their respective Schemas
mongoose.model('Post', PostSchema);
mongoose.model('Comment', CommentSchema);


// store our models in variables
var Post = mongoose.model('Post');
var Comment = mongoose.model('Comment');


app.use(bodyParser.urlencoded({ extended: true }));
// app.use(express.static(path.join(__dirname, './static')));
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');


//When A post is created from the form
app.post('/post_message', function(req, res){
  var post = new Post({name: req.body.name, text: req.body.text});

  post.save(function(err){
    if (err){
      console.log("Was not able to add post to the DB");
    } else {
      res.redirect('/')
    }
  })
})

//the main page
app.get('/', function (req, res){
 //load all the posts, must then populate the comments with an Object 
 //post is what is returned, the post is passed into the index.ejs page
 Post.find({})
 .populate('comments')
 .exec(function(err, post) {
      console.log(post);
      res.render('index', {post_data: post});
        });
});


//a comment is written and attatched to a post with its id
// create a new comment and add it to the data base
//the comment has a _post atttibute which is equal to the posts id
// the post db array will receive the comment associated to it from the id
// must save the comment and the post 
app.post('/comments/:id', function(req, res){
  Post.findOne({_id: req.params.id}, function(err, post){
    //console.log("the comment info is:", req.body)
    var comment = new Comment(req.body);
    comment._post = post._id;
    post.comments.push(comment);
    comment.save(function(err){
      post.save(function(err){
        if(err){
          console.log("Error");
        }else {
          res.redirect('/');
        }
      })
    })
  })
})



app.listen(8000, function() {
    console.log("listening on port 8000");
})