//this will pull all the schemas that I have set up in the models folder

var mongoose = require('mongoose');
var fs = require('fs');

mongoose.connect('mongodb://localhost/animals_db');

//will look in the models folder and anything that has a js file name it will read
var models_path = (__dirname + '/../models');
fs.readdirSync(models_path).forEach(function (file){
    if(file.indexOf('.js') >= 0){
        require(models_path + '/' + file);
    }
})
