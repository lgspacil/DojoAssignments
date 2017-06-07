def reverse(string)
  #original_string = string.split("")
  new_string = ""
  i = 0 
  
  puts string[i]
  puts string.length
  
  while i < string.length
    new_string =  string[i] + new_string
    
    i += 1
  end 
  
  return new_string
end 

puts reverse("my name is lucas spacil") 
  
  