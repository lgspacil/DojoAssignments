def two_sum(nums)
  index_1 = 0 
  while index_1 < nums.length       #while 0 < 4
    index_2 = index_1 + 1           # index_2 = 1 
    while index_2 < nums.length     #while 1 < 4
      if nums[index_1] + nums[index_2] == 0   #if nums[0] + nums[1] == 0 
        return [index_1, index_2]
      end 
      
      index_2 += 1 
    end 
    
    index_1 +=1 
  end 
  
  return nil
end 

puts("\nTests for #two_sum")
puts("===============================================")
    puts(
      'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
    )
    puts(
      'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
    )
puts("===============================================")
      