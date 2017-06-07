def square_nums(number)
  i = number - 1 
  result =[]
  while i > 0
    if i * i < number
      result << i
      break
    end
    i -= 1 
  end
  puts result
end


#square_nums

#write a method square_nums that takes a number max and returns the number of perfect squares less than max. Do not use Math.sqrt(x) or x ** 0.5; we don't want you to calculate square roots for this problem. You will, however, want to find squares (x * x is fine).

#square_nums(5) == 2
#square_nums(10) == 3
#square_nums(25) == 4