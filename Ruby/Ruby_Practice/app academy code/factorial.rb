def Factorial(num)
  if num == 1
    print 1
  end 
  
  ans = 1 
  
  while num > 0 
    
    ans = ans * (num)
    
    num -= 1 
  end 
  
  return ans
end 
  
  
  
  
  
Factorial(1)