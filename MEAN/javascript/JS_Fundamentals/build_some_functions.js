function running(){
	console.log("I am running");
}

function multiplyByTen(num){
	console.log(num * 10);
}

function stringOne(){
	return "One string"
}


function stringTwo() {
	return "Another string"
}

function caller(argument){
	if (typeof argument == "function"){
		console.log("You passed in a function")
	}
	else{
		console.log("You passed in something other than a function")
	}
}


function myDoubleConsoleLog(a,b){
	if (typeof a == "function"){
		console.log(a())	
	}
	else if (typeof a != "function"){
		console.log("this was not a function")
	}

	if (typeof b == "function"){
		console.log(b())
	}
	else if (typeof b != "function"){
		console.log("this was not a function")
	}
}


myDoubleConsoleLog(stringOne, stringTwo)

function caller2(para){
	console.log("starting");
	var x = setTimeout(function(){
		if (typeof(para) == "function"){
			para(stringOne, stringTwo);
		}
	}, 2000);
	console.log('ending')
	return "interesting"
	
}

caller2(myDoubleConsoleLog);



