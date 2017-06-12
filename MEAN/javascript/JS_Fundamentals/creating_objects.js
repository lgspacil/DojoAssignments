function VehicleConstructor(name, num_wheels, num_passengers, speed){

	if (!(this instanceof VehicleConstructor)){
    return new VehicleConstructor(name,wheels,passengerNumber, speed);
  	}

  	var chars = "0123456789ABCEDGHIJKLMNOPQRSTUVWXYZ"

	this.distance_travled = 0;
	this.speed = speed;
	this.name = name || "unicycle";
	this.num_passengers = num_passengers || 0;
	this.vin = createVin();

	function createVin(){
		var vin = '';
		for (var i = 0; i < 17; i+=1){
			vin += chars[Math.floor(Math.random()*35)]
		}
		return vin;
	}
}
	
VehicleConstructor.prototype.makeNoise = function(noise){
	var noise = noise || "Honk Honk";
	console.log(noise);
	return this;
};
	
VehicleConstructor.prototype.move = function(){
  this.makeNoise();
  this.updateDistanceTraveled();
  return this;
};

VehicleConstructor.prototype.checkMiles = function(){
  console.log(this.distanceTraveled);
  return this;
};

VehicleConstructor.prototype.updateDistanceTraveled = function(){
  this.distanceTraveled += this.speed;
  console.log(this.distanceTraveled);
  return this;
}

var car = new VehicleConstructor('car', 4, 2, 40);
car.move();
car.checkMiles();
console.log(car.speed);

// var unicycle = VehicleConstructor();

// var bike = VehicleConstructor("bicycle", 2, 0);
// bike.makeNoise = function(){
//   console.log('ring, ring');
// }
// // or simply: bike.makenoise("ring, ring");
// var sedan = VehicleConstructor("sedan", 4, 4);
// sedan.makeNoise = function(){
//   console.log('Honk Honk');
// }

// var bus = VehicleConstructor('bus',6, 0);
// bus.pickupPassengers = function(newPassengers){
//   bus.passengerNumber += newPassengers;
// }

// console.log(bus.passengerNumber);
// bus.pickupPassengers(6);
// console.log(bus.passengerNumber);