def capitalize_words(string)
  new_string = string.split(" ")
  puts new_string.length
  
  capitalize_list = []
  i = 0 
  
  while i <= (new_string.length - 1)
    capitalize_list << new_string[i].capitalize
    i += 1 
  end 
  
  return capitalize_list.join(" ")
end 

puts capitalize_words("i hope this works")


puts("\nTests for #capitalize_words")
puts("===============================================")
    puts(
      'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
      (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
    )
    puts(
      'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
      (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
    )
puts("===============================================")