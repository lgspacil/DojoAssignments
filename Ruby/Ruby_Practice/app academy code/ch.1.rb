puts "please type in a number: "
input = gets

if input.is_a? String
	puts "please type in an integer"
else
	puts (5 + input.to_i)
end