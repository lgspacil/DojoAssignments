nums = [0,1,2,3,4,5,6,7,8,9]

new_nums = nums.permutation.to_a
perm_count = 0
new_nums.each do |perm|
  perm_count += 1  
  if perm_count == 1000000
    puts "The millionth number is #{perm.join}"
    break
  end
end
