def LongestWord(sen)
  my_array = sen.split(/[^\w-]+/)
  
  longest_word = ''
  my_array.max_by {|x| x.length}
  
end 

puts LongestWord("I!!! love my dog")