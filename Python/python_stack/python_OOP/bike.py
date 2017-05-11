class Bike(object):

	def __init__(self, price, max_speed, miles):
		self.price = price
		self.max_speed = max_speed
		self.miles = miles


	def displayInfo(self):
		print "The bikes price is: $" + str(self.price)
		print "The bike has a max speed of: " + str(self.max_speed) + "mph."
		print "Total miles: " + str(self.miles)
		return self

	def ride(self):
		print "Riding"
		self.miles += 10
		return self

	def reverse(self):
		print "Reversing"
		self.miles -= 5
		return self


ride1 = Bike(300, 25, 10)
ride1.reverse().reverse().displayInfo()

print "-----------------------"

#ride2 = Bike(300, 20, 10)
ride1.ride().ride().reverse().reverse().displayInfo()

print "-----------------------"

#ride3 = Bike(300, 20, 10)
ride1.reverse().reverse().reverse().displayInfo()


