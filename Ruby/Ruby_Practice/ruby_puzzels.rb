# array = [3,5,1,2,7,9,8,13,25,32]

# sum = array.reduce(:+)

# def larger_than_10(a)
# 	puts a.reject {|num| num < 10}
# end

# larger_than_10(array)


# name = ["john", "kb", "oliver", "cory", "mathew", "christopher"]
# # puts name.shuffle

# puts name.reject {|name| name.length > 5}

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). 
# Shuffle the array and display the last letter of the array. Have it also display the first letter 
# of the array. If the first letter in the array is a vowel, have it display a message.

# alphabet = ("a".."z").to_a
# puts alphabet.shuffle[-1]

# Generate an array with 10 random numbers between 55-100.

# array = []
# 10.times do loop
# 	array << rand(55-100)
# end

# puts array

# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). 
# Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value

# array = []
# 10.times do loop
# 	array << rand(55-100)
# end

# puts array.sort!
# puts "the min in: " + array[0].to_s
# puts "the max in: " + array[-1].to_s

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
# str = ""
# 5.times do loop
# 	str += ("a".."z").to_a[rand(26)]
# end

# puts str

# Generate an array with 10 random strings that are each 5 characters long
list = []
10.times do 
	str = ""
	5.times do 
		str += ("a".."z").to_a[rand(26)]
		
	end
	list << str
end

p list








