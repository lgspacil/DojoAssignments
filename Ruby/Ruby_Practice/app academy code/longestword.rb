def longestword(sentence)
	out = ""
	words = sentence.split(" ")

	words.each do |word|
		if (out.length < word.length)
			out = word 
		end 
	end 

	return out
end 

puts longestword("what is the longest word")
