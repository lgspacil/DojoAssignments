def longest_palindrome(string)
  longest_word = ""
  
  if string == string.reverse
    return string
  end 
  
  idx1 = 0
  
  while idx1 < string.length
    idx2 = idx1 + 1 
    while idx2 < string.length
      if string[idx1..idx2] == string[idx1..idx2].reverse
        if string[idx1..idx2].length > longest_word.length
          longest_word = string[idx1..idx2]
        end 
      end 
      idx2 += 1 
    end 
    idx1 += 1 
  end
  
  return longest_word
end 

puts("\nTests for #longest_palindrome")
puts("===============================================")
    puts(
      'longest_palindrome("abcbd") == "bcb": ' +
      (longest_palindrome('abcbd') == 'bcb').to_s
    )
    puts(
      'longest_palindrome("abba") == "abba": ' +
      (longest_palindrome('abba') == 'abba').to_s
    )
    puts(
      'longest_palindrome("abcbdeffe") == "effe": ' +
      (longest_palindrome('abcbdeffe') == 'effe').to_s
    )
puts("===============================================")