def greatest_common_factor(number1, number2)
  
  i = number1
  
  
  while i > 0
    
    if (number1 % i == 0) && (number2 % i == 0)
      return i 
    end
    
    i -= 1 
  end 
end 









puts greatest_common_factor(3, 9)
puts greatest_common_factor(16, 24)
puts greatest_common_factor(3, 5)
puts greatest_common_factor(99, 9)
  
  
  