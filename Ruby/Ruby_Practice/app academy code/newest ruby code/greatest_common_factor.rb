def greatest_common_factor(number1, number2)
  if number1 > number2
    num = number2
  else
    num = number1 
  end 
  
  
  
  while num > 0
    if number1 % num == 0 && number2 % num == 0 
      return num   
    end 
    num -= 1
  end 
end 

puts greatest_common_factor(3, 9)