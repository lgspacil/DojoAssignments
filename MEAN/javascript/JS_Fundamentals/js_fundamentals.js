// var a = function add_nums(x,y){
// 	var sum = 0
// 	for(var i = 0; i <=x; i++){
// 		sum += i
// 	}
// 	for(var i = 0; i <=x; i++){
// 		sum += i
// 	}
// 	return sum
// }

// var b = function find_min(array){
// 	var min = array[0];
// 	for (var i = 1; i< array.length; i++){
// 		if (array[i] < min){
// 			min = array[i]
// 		}
// 	}
// 	return min
// }

// var c = function find_avg(array){
// 	sum = 0
// 	for (var i=0; i<array.length; i++){
// 		sum += array[i]
// 	}
// 	return (sum/array.length)

// }

//------------------------------------------------------


var a = function(x,y){
	var sum = 0
	for(var i = 0; i <=x; i++){
		sum += i
	}
	for(var i = 0; i <=x; i++){
		sum += i
	}
	return sum
}

var b = function(array){
	var min = array[0];
	for (var i = 1; i< array.length; i++){
		if (array[i] < min){
			min = array[i]
		}
	}
	return min
}

var c = function(array){
	sum = 0
	for (var i=0; i<array.length; i++){
		sum += array[i]
	}
	return (sum/array.length)

}

//------------------------------------------------------
// Methods of an Object

var object = {

	add_nums: function(x,y){
	var sum = 0
	for(var i = 0; i <=x; i++){
		sum += i
	}
	for(var i = 0; i <=x; i++){
		sum += i
	}
	return sum
	},

	find_min: function(array){
	var min = array[0];
	for (var i = 1; i< array.length; i++){
		if (array[i] < min){
			min = array[i]
		}
	}
	return min
	},

	find_avg: function(array){
	sum = 0
	for (var i=0; i<array.length; i++){
		sum += array[i]
	}
	return (sum/array.length)

	}
}

//console.log(object.find_min([2,3,1,7,8,0]))

// console.log(find_avg([2,3,1,7,8,0]))
// console.log(find_min([2,3,1,7,8,0]))
// console.log(add_nums(5,3))

var person = {
	name: "Lucas Spacil",
	distance_traveled: 0,

	say_name: function(){
		console.log(this.name) 
	},

	say_something: function(phrase){
		console.log(this.name + " says " + phrase)
	},

	walk: function(){
		this.distance_traveled += 3
		console.log(this.name + " is walking")
	},

	run: function(){
		this.distance_traveled += 10
		console.log(this.name + " is running")
	},

	crawl: function(){
		this.distance_traveled += 1;
		console.log(this.name + " is crawling")
	}



}

//person.say_name()
person.say_something("I am cool!")
person.crawl()

