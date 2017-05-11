class Store(object):

	def __init__(self, price, item_name, weight, brand, status = "for sale"):
		self.price = price
		self.item_name = item_name
		self.weight = weight
		self.brand = brand
		self.status = status

	def sell(self):
		self.status = "sold"
		return self

	def add_tax(self, tax):
		self.price = self.price + (self.price * tax)
		return self

	def product_return(self, reason):
		if reason == "defective":
			self.price = 1
			self.status = reason
		elif reason == "returned in box":
			self.status = "for sale"
		elif reason == "opened":
			self.status == "open box, there is a discount"
			self.price = self.price * .8
		else:
			self.status = reason


	def display_info(self):
		print "Price: " + str(self.price)
		print "Item Name: " + self.item_name
		print "Weight: " + str(self.weight) + " lbs"
		print "Brand: " + self.brand
		print "Status: " + self.status
		return self


bestBuy = Store(200, 'Xbox', 10, 'Microsoft')
bestBuy.add_tax(0.07).display_info()


