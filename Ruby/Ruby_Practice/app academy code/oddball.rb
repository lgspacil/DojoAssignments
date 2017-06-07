def oddball_sum(array)
  
  result = []
  
  array.select do |num|
    if num.odd?
      result << num
    end 
  end 
  
  if result.length == 0
    puts 0
  else
    puts result.reduce(:+)
  end 
  
  
end 

oddball_sum([1,2,3,4,5]) #== 9 # => 1 + 3 + 5 == 9
oddball_sum([0,6,4,4])# == 0
oddball_sum([1,2,1])# == 2