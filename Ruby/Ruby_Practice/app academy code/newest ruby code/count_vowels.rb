def count_vowels(string)
  count = Hash.new(0)
  vowels = ["a", "e", "i", "o", "u"]
  
  string.each_char do |letter|
    if vowels.include?(letter)
      count[letter] += 1 
    end 
  end 
  
  
  return count.values.reduce(:+)
end 

puts 
puts("\nTests for #count_vowels")
puts("===============================================")
    puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
    puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
    puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
    puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
puts("===============================================")
