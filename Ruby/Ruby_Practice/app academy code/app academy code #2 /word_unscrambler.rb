def word_unscrambler(word, dictionary)
  
  s1 = word.split("").sort
  
  result = []
  i = 0 
  
  while i < dictionary.length
    if s1 == dictionary[i].split("").sort
      result << dictionary[i]
    end
    i += 1 
  end 
  
  
  
  
  if result == []
    return "[]"
  else
    return result
  end 
  
  
  
end 

puts word_unscrambler("lucas", ["sacul", "lcsua"])