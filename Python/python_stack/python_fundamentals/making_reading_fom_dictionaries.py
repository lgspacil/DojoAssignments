bio = {'age': '26', 'first name': 'Lucas', 'last name': 'Spacil', 'country': 'USA', 'city': "Suisun City", "favorite language" : 'Python'}


def aboutMe(dict):

	print "My name is " +bio['first name'] + " " + bio['last name']
	print "My country of birth is " +bio['country'] + ' in the city of ' + bio['city']
	print "My favorite language is " + bio['favorite language']


#aboutMe(bio)


print bio.items()
print bio.keys()
print bio.values()