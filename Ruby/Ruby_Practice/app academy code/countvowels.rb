def count_vowels(string)
	vowels = ['a', 'e', 'i', 'o', 'u']
	count = 0
	i = 0
	
	while i < string.length
		if vowels.include?(string[i])
			count += 1 
		end 
	i += 1 
	end 
	return count
end 

puts("===============================================")
    puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
    puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
    puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
    puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
puts("===============================================")