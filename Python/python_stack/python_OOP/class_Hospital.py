class Hospital(object):
  def __init__(self, name, capacity):
    self.name = name
    self.patients = []
    self.capacity = capacity
    self.beds_in_use = [False]* capacity

  def admit(self, patient):
    if len(self.patients) == self.capacity:
      print "admission is complete"
      return "admission is complete"
    else:
      i = 0
      while i < len(self.beds_in_use):
        if self.beds_in_use[i] == False:
          self.beds_in_use[i] = True
          patient.bed_num = i
          print patient.bed_num 
          self.patients.append(patient)
          break
        i +=1
      # if check is to make sure we didnt go through the entire list and not find a bed for the patient
      # we should never hit this bc we shouldnt enter the while loop if there are no beds
      if patient.bed_num == None:
        print "Error" 

  def discharge(self, patient):
    # remove from patients array
    j=0
    while j < len(self.patients):
      if patient.id == self.patients[j].id:
        self.patients.pop(j)
        break
      j+=1

    # remove from beds
    self.beds_in_use[patient.bed_num] = False
    patient.bed_num = None    

class Patient(object):
  def __init__(self, id, name, allergies):
    self.id = id
    self.name = name
    self.allergies = allergies
    self.bed_num = None

h = Hospital("st josephs", 100)
p = Patient(1, "shane", "pollen")
p2 = Patient(2, "shane2", "pollen")
p3 = Patient(3, "shane3", "pollen")
h.admit(p)
h.admit(p2)
h.admit(p3)
print p2.bed_num
print h.beds_in_use
print h.patients
h.discharge(p2)
print p2.bed_num
print h.beds_in_use
print h.patients