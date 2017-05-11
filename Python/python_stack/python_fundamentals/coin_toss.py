import random



print "Scores and Grades"

for score in range(1,11):
	random_num = random.randint(60,100)
	if random_num >= 90:
		print "Score: " + str(random_num) + "; Your grade is A"
	elif random_num >= 80:
		 print "Score: " + str(random_num) + "; Your grade is B"
	elif random_num >= 70:
		print "Score: " + str(random_num) + "; Your grade is C"
	else:
		print "Score: " + str(random_num) + "; Your grade is C"

print "End of the program, Bye!"



	
