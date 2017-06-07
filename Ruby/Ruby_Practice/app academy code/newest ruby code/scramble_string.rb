def scramble_string(string, positions)
  split_string = string.split("")
  
  i = 0 
  result = []
  
  while i < string.length
    result << split_string[positions[i]]
    i += 1 
  end 
  
  result.join("")
end 

puts("\nTests for #scramble_string")
puts("===============================================")
    puts(
      'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
      (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
    )
    puts(
      'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
      (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s
    )
puts("===============================================")