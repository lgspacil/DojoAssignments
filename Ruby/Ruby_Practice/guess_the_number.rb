puts "Enter a number from 1 to 28: "
input = gets.chomp.to_i

while input != 25	
	if input < 25
		puts "Too Low, Guess Again"
		input = gets.chomp.to_i
	else input > 25
		puts "Too High, Guess Again"
		input = gets.chomp.to_i
	end

	if input == 25
		puts "Nice you got the right number!"
	end
	
end
