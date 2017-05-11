class Car(object):

	def __init__(self, price, speed, fuel, mileage):
		self.price = price
		self.speed = speed
		self.fuel = fuel
		self.mileage = mileage
		if self.price > 10000:
			self.tax = 0.15
		else:
			self.tax = 0.12 
		self.display_all()


	def display_all(self):
		print "Price: " + str(self.price)
		print "Speed: " + str(self.speed) + "mph"
		print "Fuel: " + self.fuel
		print "Mileage: " + str(self.mileage)
		print "Tax: " + str(self.tax)

a = Car(12000, 90, "Full", 90)
b = Car(1000, 80, "Not Full", 24)
c = Car(22000, 90, "Full", 29)
d = Car(10000, 120, "Full", 40)
e = Car(30000, 101, "Full", 21)
f = Car(56000, 160, "Full", 9)



