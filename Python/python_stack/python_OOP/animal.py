class Animal(object):
	def __init__(self, name): #attributes
		self.name = name
		self.health = 100

	def walk(self):
		self.health -= 1
		return self

	def run(self):
		self.health -= 5
		return self

	def displayHealth(self):
		print "Name: " + self.name
		print "Health: " + str(self.health)




class Dog(Animal):
	def __init__(self, name):
		super(Dog, self).__init__(name)
		self.name = name
		self.health += 50

	def pet(self):
		self.health += 5
		return self


class Dragon(Animal):
	def __init__(self, name):
		super(Dragon, self).__init__(name)
		self.name = name
		self.health += 70

	def fly(self):
		self.health -= 10
		return self

	def displayHealth(self):
		print "This is a dragon"
		super(Dragon, self).displayHealth()  #this calls the displayHealth from the Animal class
		



#milo = Dog('Milo').walk().walk().walk().run().run().pet().displayHealth()

#aragon = Dragon("Aragon").walk().walk().walk().run().run().fly().fly().displayHealth()
#animal1 = Animal("Otter").walk().run().displayHealth()


