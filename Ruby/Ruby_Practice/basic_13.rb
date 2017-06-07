#Print 1-255

# (1..255).each do |num|
# 	puts num
# end


#print odd numbers from 1-255

# (1..255).each do |num|
# 	puts num if num.odd? 
# end


#print sum 
# sum = 0
# (0..255).each do |num|
# 	sum += num
	
# 	puts "New num: #{num} Sum: #{sum}"
# end

# Iterating through an array

# a =  [1,3,5,7,9,13]
# a.each do |num|
# 	puts num
# end
#or
# a.each {|num| puts num}

#Find the Max

# a = [-1,-5,-7]

# puts a.max

#greater than Y
# a = [1, 5, 10, -2]
# a.find_all {|num| num > 3}

# #square the vales
# a =  [1, 5, 10, -2]
# square = a.map {|num| num * num}
# puts square

#eliminate negative
# a = [1, 5, 10, -2]
# puts a.reject {|obj| obj < 0}

#max min and average
# a = [1, 5, 10, -2]
# max = a.max
# min = a.min
# avg = a.inject(:+)/a.length

# #shifting the values in an array
# a = [1, 5, 10, 7, -2]
# a.rotate!
# a[-1] = 0 
# puts a 

# Number to String
# Write a program that takes an array of numbers and 
# replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] 
# after your program is done that array should be ['Dojo', 'Dojo', 2].

arr = [-1, -3, 2]
puts arr.each_index { |index| arr[index] = "Dojo" if arr[index] < 0 }
