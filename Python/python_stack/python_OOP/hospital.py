class Hospital(object):
	def __init__(self, name):
		self.name = name
		self.patients = []
		self.capacity = 100


	def admit(self, patientObject):
		self.patients.append(patientObject)
		return self



class Patient(Hospital):
	def __init__(self, name, Id, bed_num=None):
		self.name = name
		self.Id = Id 
		self.bed_num = bed_num




kaiser = Hospital("Kaiser")

janeDoe = Patient("Jane Doe", 1)
kaiser.admit(janeDoe)

print kaiser.patients[0].name

