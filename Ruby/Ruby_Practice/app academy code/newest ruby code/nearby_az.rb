def nearby_az(string)
  position_of_a = string.index("a")
  position_of_z = string.index("z")
  
  
  if string.include? "a" and string.include? "z"
    
    difference = (position_of_z) - (position_of_a)
  
    if difference > 3 
      return false
    
    elsif difference < 0 
      return false
    
    else
      return true
    end
    
  else
    return false
  end 
end 

puts("\nTests for #nearby_az")
puts("===============================================")
    puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
    puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
    puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
    puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
    puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
    puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
puts("===============================================") 
   
  