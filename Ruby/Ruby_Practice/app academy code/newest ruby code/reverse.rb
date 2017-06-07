def reverse(string)
  
  result = ""
  i = 0
  
  while i < string.length
    result = string[i] + result
    i += 1 
  end 
  
  return result
end 

puts("\nTests for #reverse")
puts("===============================================")
    puts(
      'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
    )
    puts(
      'reverse("a") == "a": ' + (reverse("a") == "a").to_s
    )
    puts(
      'reverse("") == "": ' + (reverse("") == "").to_s
    )
puts("===============================================")