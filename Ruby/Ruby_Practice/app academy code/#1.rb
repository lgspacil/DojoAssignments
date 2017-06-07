def crazy_sum(numbers)
  i = 0
  result = 0 
  
  numbers.each do |num|
    result = result + (num * i)
    i += 1
  end
  
  puts result
end

crazy_sum([2, 3, 5, 2])