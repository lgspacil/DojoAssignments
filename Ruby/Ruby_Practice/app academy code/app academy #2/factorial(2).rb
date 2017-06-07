def factorial(number)
  
  if number == 0
    return 1 
  end 
  
  result = 1
  
  while number > 0 
    result = result * number
    
    number -= 1 
    
  end 
  
  return result
end 

puts factorial(0)
puts factorial(4)