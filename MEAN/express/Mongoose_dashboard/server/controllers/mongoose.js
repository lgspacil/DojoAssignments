//came here after being sent from the routes.js section

var mongoose = require('mongoose');

//since we have the animal model we need to set Aniaml as a variable
var Animal = mongoose.model('Animal');

module.exports = {
    index: function(req, res){
        Animal.find({}, function(err, result){
            res.render('index', {animal_data: result});
        })
    },

    add_animal: function(req, res){
        res.render('result');
    },
    
    adding: function(req, res){
        var animal = new Animal({name: req.body.name, weight: req.body.weight, color: req.body.color, habitat: req.body.habitat});
        animal.save(function(err){
            if(err){
                console.log("There was an error!")
            }else{
                res.redirect('/');
            }
        })
    },

    description: function(req, res){
        console.log(req.params.id);
        Animal.find({_id: req.params.id}, function(err, result){
            if(err){
                console.log("there was an error loading the page");
            }else{
                res.render('animal_detail', {animal_data: result});
            }
        })
    },

    remove: function(req, res){
        Animal.remove({_id: req.params.id}, function(err, result){
            if (err){
                console.log("Unable to delete this item");
            } else{
                res.redirect('/');
            }
        })
    },

    rename: function(req, res){
        res.render('edit', {id: req.params.id});
    },

    update: function(req, res){
        Animal.update({_id: req.params.id}, {$set: {name: req.body.name, weight: req.body.weight, color: req.body.color, habitat: req.body.habitat}}, function(err, result){
            if (err) {
                console.log("there was an error")
            }else{
                res.redirect('/');
            }
        })
    }
}