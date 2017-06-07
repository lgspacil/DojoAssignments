def nearby_az(string)
  if string.include? "a"
    position_of_a = string.index("a")
    position_of_z = string.index("z")
    difference = (position_of_z.to_i) - position_of_a.to_i 
    
    variable = string.include? "z" 
    
    if variable == false
      return false
    
    elsif difference >= 4  
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

puts nearby_az("za")