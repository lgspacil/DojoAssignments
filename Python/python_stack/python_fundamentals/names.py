users = {
 'Students': [
     {'first_name':  'Michael', 'last_name' : 'Jordan'},
     {'first_name' : 'John', 'last_name' : 'Rosales'},
     {'first_name' : 'Mark', 'last_name' : 'Guillen'},
     {'first_name' : 'KB', 'last_name' : 'Tonel'}
  ],
 'Instructors': [
     {'first_name' : 'Michael', 'last_name' : 'Choi'},
     {'first_name' : 'Martin', 'last_name' : 'Puryear'}
  ]
 }

students = [
    {'first_name':  'Michael', 'last_name' : 'Jordan'},
    {'first_name' : 'John', 'last_name' : 'Rosales'},
    {'first_name' : 'Mark', 'last_name' : 'Guillen'},
    {'first_name' : 'KB', 'last_name' : 'Tonel'}
]


def print_students(students):
	for names in students:
		print names['first_name'] + " " + names['last_name']


def print_all(users):

	for groups in users:
 		print groups
 		counter = 1

 		for persons in users[groups]:
 			print str(counter) + " - " + persons['first_name'] + " " + persons['last_name'] + " - " + str(len(persons['first_name']) + len(persons['last_name']))
 			counter += 1




print_students(students)
print_all(users)