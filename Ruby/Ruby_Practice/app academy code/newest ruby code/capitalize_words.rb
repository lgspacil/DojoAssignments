def capitalize_words(string)
  split_string = string.split(" ")
  
  i = 0 
  result = []
  
  while i < split_string.length
    result << split_string[i].capitalize 
    i += 1 
  end 
  
  return result.join(" ")
end

puts capitalize_words("this is a sentence")

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
    