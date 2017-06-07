def most_common_letter(string)
  
  new_string = string.split("")
  
  counts = Hash.new(0)
  
  new_string.each do |letter|
    counts[letter] += 1 
  end 
  
  big_letter = ""
  
  counts.each {|key,value| big_letter = key if value == counts.values.max}
  
  puts "[#{big_letter.to_s}], #{counts.values.max}"
  
end 


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
