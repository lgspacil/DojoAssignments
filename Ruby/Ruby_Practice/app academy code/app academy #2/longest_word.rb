def longest_word(sentence)
  words = sentence.split(" ")
  current_long_word = ""
  
  i = 0
  
  while i < words.length
    if words[i].length > current_long_word.length
      current_long_word = words[i]
    else 
      current_long_word = current_long_word
    end 
    
    i += 1 
  end 
  
  return current_long_word
  
end 


puts longest_word("what is the longest word")


puts("\nTests for #longest_word")
puts("===============================================")
    puts(
      'longest_word("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )
puts("===============================================")