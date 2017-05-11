l = ['hello','world','my','name','is','Anna']
char = 'o'

def find_words(array, char):
	result = []
	for word in array:
		if char in word:
			result.append(word)

	return result

print find_words(l, 'o')




