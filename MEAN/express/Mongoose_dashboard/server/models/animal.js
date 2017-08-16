var mongoose = require('mongoose');

//the schema is moved here and each schema would have its own separate file
var AnimalSchema = new mongoose.Schema({
	name: String,
	color: String,
	date: { type: Date, default: Date.now },
	weight: Number,
	habitat: String

});

var Animal = mongoose.model('Animal', AnimalSchema);