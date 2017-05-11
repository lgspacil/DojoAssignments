# def mixed_array(array):
# 	sentence = "String: "
# 	num_sum = []
# 	numbers = "Sum: "
# 	version = 0 

# 	for val in array:
# 		if isinstance(val, basestring):
# 			sentence += val + " "

# 		elif isinstance(val, int) or isinstance(val, float):
# 			num_sum.append(val)

# 	numbers += str(sum(num_sum))
 
# 	if sum(num_sum) == 0:
# 		print "The array you entered is of String Type"
# 		print sentence
# 	elif len(sentence) == 8:
# 		print "The array you entered is of integer type"
# 		print numbers
# 	else:
# 		print "The array you entered is of mixed type"
# 		print sentence
# 		print numbers


#mixed_array(['magical unicorns',19,'hello',98.98,'world'])
#mixed_array(['magical','unicorns'])
#mixed_array([2,3,1,7,4,12])


def mixed_array(list1):

	numbers = []
	sentence = ""

	for i in list1: 

		if type(i) == int or type(i) == float:
			numbers.append(i)

		if type(i) == str:
			sentence += i + " "

	print sentence
	print "Sum: " + str(sum(numbers))




mixed_array(['magical unicorns',19,'hello',98.98,'world'])











