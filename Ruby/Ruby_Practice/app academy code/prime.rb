def is_prime?(num)
  if num == 2 
    return true
  end
  
  result = []
  i = 1 
  while i <= num
    if num % i == 0 
      result << i 
    end
    i += 1 
  end
  
  if result.length == 2
    return true
  else
    return false
  end
end

puts("\nTests for #is_prime?")
puts("===============================================")
    puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
    puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
    puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
    puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)
puts("===============================================")