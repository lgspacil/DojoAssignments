def factorial(number)
  
  if number == 0 
    puts 1
  end 
  
  i = number
  
  while i > 1 
    number = number * (i -1)
    
    i -= 1 
  end 
  
  return number
end 

puts factorial(3)
puts factorial(4)
puts factorial(0)
puts factorial(1)

