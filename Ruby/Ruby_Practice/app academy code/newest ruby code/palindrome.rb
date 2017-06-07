def palindrome?(string)
  word1 = string
  word2 = string.reverse
  
  if word2 == word1
    return true
  else 
    return false
  end 
  
end 

puts("\nTests for #palindrome?")
puts("===============================================")
    puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
    puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
    puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
puts("===============================================")