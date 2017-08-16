//we need to require the controllers because thats where we will send info after we recieved it in the routes section. 
//mongoose is a variable that will conduct the logic in the file path below
var mongoose = require('../controllers/mongoose.js')


module.exports = function (app){
    app.get('/', function(req, res){
        mongoose.index(req, res);
    })
    
    app.get('/add/animal', function(req, res){
        mongoose.add_animal(req, res);
    })
    

    app.post('/add', function(req, res){
        mongoose.adding(req, res);
    })
    
    app.get('/animal_description/:id', function(req, res){
        mongoose.description(req, res);
    })
    
    app.get('/delete/:id', function(req, res){
        mongoose.remove(req, res);
    })
    
    
    app.get('/rename/:id', function(req, res){
        mongoose.rename(req, res);
    });
    
    app.post('/edit/:id', function(req, res){
        mongoose.update(req, res);
    })
}