def lucky_sevens?(array)
  i = 0 
  while i < (array.length - 2)
    if (array[i] + array[i + 1] + array[i + 2] == 7)
      return true
    end
    i += 1
  end   
  return false
end 


puts lucky_sevens?([7,7,7,7]) #== false
puts lucky_sevens?([3,4,3,4]) #== false

