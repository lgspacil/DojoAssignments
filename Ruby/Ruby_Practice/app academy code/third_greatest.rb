def third_greatest(nums)
  sorted = nums.sort
  third = sorted[-3]
  return third
end 

puts third_greatest([5, 3, 7])
puts third_greatest([5, 3, 7, 4])
puts third_greatest([2, 3, 7, 4])
