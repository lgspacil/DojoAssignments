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




#Write a method crazy_nums that takes a number, max, and returns an array of the integers that

#ARE less than max
#AND ARE divisible by either three or five
#BUT ARE NOT divisible by _both_ three and five
#You should return the result in increasing order.

#You may wish to use the modulo operation: 5 % 2 returns the remainder when dividing 5 by 2: 1. If num is divisible by i, then num % i == 0.

#crazy_nums(3) == []
#crazy_nums(10) == [3, 5, 6, 9]
#crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]