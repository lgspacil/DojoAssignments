def crazy_nums(number)
  result = []
  i = number - 1 
  
  1.upto(i) do |num|
    if num % 5 == 0 and num % 3 == 0
      next
    elsif num % 5 == 0 
      result << num
    elsif num % 3 == 0 
      result << num
    else
      next
    end
  end
  print result
end


crazy_nums(100)