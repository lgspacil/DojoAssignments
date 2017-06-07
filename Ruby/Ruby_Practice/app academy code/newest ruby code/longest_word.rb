def longest_word(sentence)
  split_sentence = sentence.split
  
  current_longest = ""
  
  i = 0 
  
  while i < split_sentence.length
    if current_longest.length < split_sentence[i].length
      current_longest = split_sentence[i]
    else
      current_longest = current_longest
    end 
    i += 1 
  end 
  
  return current_longest
end 

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