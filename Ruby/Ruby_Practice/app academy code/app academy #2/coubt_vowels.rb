def count_vowels(string)
  
  i = 0 
  vowel_count = 0
  
  vowels = %w(a e i o u A E I O U)
  
  
  while i < string.length #while 1 < 4
    if vowels.include?(string[i]) # if aeiou include b
      vowel_count += 1 # vowel_count = vowel_count + 1 
    end 
    
    i += 1 # i = i + 1 
  end 
  
  return vowel_count
end 

puts count_vowels("abcd") 
puts count_vowels("color")
puts count_vowels("cecilia")
puts count_vowels("gAglianone was here")


puts("\nTests for #count_vowels")
puts("===============================================")
    puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
    puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
    puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
    puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
puts("===============================================")