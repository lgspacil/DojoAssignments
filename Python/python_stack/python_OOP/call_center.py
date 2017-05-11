class Call(object):
	def __init__(self, id, name, number, time, reason):
		self.id = id
		self.name = name
		self.number = number
		self.time = time
		self.reason = reason

	def display(self):
		print "Id: " + str(self.id)
		print "Name: " + self.name
		print "Number: " + str(self.number)
		print "Time: " + str(self.time), 
		print "Reason: " + self.reason


class CallCenter(object):
	def __init__(self):
		self.call_list = []
		self.quene_size = 0

	def addCall(self, callObject):
		self.call_list.append(callObject)
		self.quene_size +=1
		return self

	def removeCall(self):
		self.call_list.pop(0)
		return self

	def showListInfo(self, i):
		pass




lucas = Call(1, "Lucas Spacil", 7072084532, 646, "Testing the program")
monika = Call(2, "Monika Spacil", 7072084445, 800, "Hello")
martha = Call(3, "Martha Spacil", 7078166799, 946, "Does this work")
miro = Call(4, "Miro Spacil", 7078167404, 746, "I am retired")
walter = Call(4, "walter cruise", 7078784904, 906, "I am made up")


mainCallCenter = CallCenter()
mainCallCenter.addCall(lucas).addCall(monika.name).addCall(miro.name).addCall(martha.name).addCall(walter.name)

#print mainCallCenter.call_list[0].name 
print mainCallCenter.quene_size













		
		