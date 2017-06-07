def is_power_of_two?(num)
  if num < 1 
    return false
  end 
  
  if num == 1 
    return true
  end 
  
  if num % 2 == 0 
    
    even = num / 2
    
    if even % 2 == 0 
      return true
    else
      return false
    end 
  else
    return false
  end 
end 

puts is_power_of_two?(8)

puts("\nTests for #is_power_of_two?")
puts("===============================================")
    puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
    puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
    puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
    puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
    puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
puts("===============================================")