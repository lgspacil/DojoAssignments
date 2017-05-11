def make_dict(arr1, arr2):
	new_dict = {}

	if len(arr1) >= len(arr2):
		key = arr1
		value = arr2
	else:
		key = arr2
		value = arr1

	i = 0
	while i < len(key):

		new_dict[key[i]] = value[i]

		i += 1

	print new_dict

name = ["Anna", "Eli", "Pariece", "Brendan", "Amy", "Shane", "Oscar"]
favorite_animal = ["horse", "cat", "spider", "giraffe", "ticks", "dolphins", "llamas"]


make_dict(name, favorite_animal)