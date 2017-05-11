def compare_array(list_one, list_two):

	
	twins = False

	if len(list_one) == len(list_two):

		i = 0
		while i < len(list_one):
			if list_one[i] == list_two[i]:
				twins = True
				i += 1
			else:
				twins = False
				break

	else:
		twins = False

	if twins == True:
		print "The arrays are the same"

	if twins == False:
		print "The arrays are different"

compare_array([1,2,5,6,2],  [1,1,5,6,2])

