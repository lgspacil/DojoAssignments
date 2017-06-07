def is_power_of_two?(num)
  square_root = Math.sqrt(num)
  if num == 1 
    return true 
  elsif num == 0 
    return false
  elsif
    square_root % 2 == 0 
      return true 
  else
    return false
  end 
end 

puts is_power_of_two?(1)
puts is_power_of_two?(16)
puts is_power_of_two?(64)
puts is_power_of_two?(78)
puts is_power_of_two?(0)

puts("\nTests for #is_power_of_two?")
puts("===============================================")
    puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
    puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
    puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
    puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
    puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
puts("===============================================")


