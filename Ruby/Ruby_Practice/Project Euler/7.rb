=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

require 'prime'

result = Prime.first(10001)
puts result.last

#or

def is_prime?(number)
  
  i = number - 1 
  array = []
  
  while i > 0 
    if number % i == 0 
      array << i 
    end 
    i -= 1 
  end 
  
  if array.length > 1 
    return false
  else
    return true
  end 
end 
  
result = []
i = 3
while true
  break if result.length == 10001
  if is_prime?(i)
    result << i
  end
  i += 2
end
puts result.last


    