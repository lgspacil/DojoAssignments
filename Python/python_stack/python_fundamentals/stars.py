def draw_stars(list):


	for item in list:
		if type(item) == int:
			string = ""

			print '*' * item

		if type(item) == str:
			string = ""

			for thing in range(0,len(item)):
				string += item[0].lower()
			print string



#draw_stars([4, 6, 1, 3, 5, 7, 25])
draw_stars([4, "Tom", 1, "Michael", 5, 7, "Jimmy Smith"])