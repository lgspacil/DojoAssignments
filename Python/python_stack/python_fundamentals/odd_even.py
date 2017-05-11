def odd_even():
	for num in range(1,2001):
		if num % 2 == 0:
			print "Number is " + str(num) + ". This is an even number"
		else:
			print "Number is " + str(num) + ". This is an odd number"


#using map to repeat a opperation
items = [1, 2, 3, 4, 5]
 
def sqr(x): return x ** 2

#print list(map(sqr, items))


def multiply(array, mult):
	result = []
	for num in array:
		result.append(num * mult)
	return result


def layered_multiples(arr):
    print arr
    new_array = []
    for x in arr:
        val_arr = []
        for i in range(0,x):
            val_arr.append(1)
        new_array.append(val_arr)
    return new_array

x = layered_multiples(multiply([2,4,5],3))
print x


