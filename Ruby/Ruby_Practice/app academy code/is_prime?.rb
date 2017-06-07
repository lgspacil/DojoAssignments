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

is_prime?(8)
puts "======="
is_prime?(5)
puts "======="
is_prime?(2)
puts "======="
is_prime?(3)
puts "======="
is_prime?(16)
puts "======="

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #is_prime?")
puts("===============================================")
    puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
    puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
    puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
    puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)
puts("===============================================")
    
      
    