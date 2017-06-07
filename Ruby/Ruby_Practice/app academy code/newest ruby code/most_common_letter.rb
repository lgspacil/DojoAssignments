def most_common_letter(string)
  
  count = Hash.new(0)
  
  string.each_char do |letter|
    count[letter] += 1 
  end 
  
  result = ""
  
  count.each {|key,value| result = key if value == count.values.max}
  
  
  puts "[#{result.to_s}, #{count.values.max}]"
  
end 

most_common_letter("abca")

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")
  