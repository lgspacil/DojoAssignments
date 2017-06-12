function personConstructor(para){
	var person = {
	name: para,
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
	return person
}

p1 = personConstructor("lucas")
p1.say_name()