def is_prime?(number)
  i = 1
  list = []
  while i <= number
    if number % i == 0
      list << i
    end
    i += 1
  end
  if list.length == 2
    return true
  else
    return false
  end
end

def largest_prime_factor(number)
  i = number - 1
  list = []
  while i > 0
    if number % i == 0 && is_prime?(i) == true
      list << i 
      break
    end
    i -= 1
  end
  puts list
end

largest_prime_factor(6008517854)


