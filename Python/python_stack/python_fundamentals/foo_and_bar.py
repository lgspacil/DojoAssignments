def is_prime(num):
	if num == 2:
		return True

	result = []
	i = 1

	while i <= num:
		if num % i == 0:
			result.append(i)

		i += 1

	if len(result) == 2:
		return True
	else:
		return False


def perfect_square(num):
	i = 0
	while i <= num/2:
		if i * i == num:
			return True
			break
		i += 1



for num in range(100, 200):
	if perfect_square(num) == True:
		#print str(num) + " is a Perfect Square"
		print "Bar"
	elif is_prime(num) == True:
		#print str(num) + " is a Prime"
		print "Foo"
	else:
		print "FooBar"






