def palindrome(string)
  word1 = string
  word2 = string.reverse
  
  if word1 == word2 
    return true
  else 
    return false
  end 
end 

puts palindrome("abc")
puts palindrome("abcba")
puts palindrome("z")