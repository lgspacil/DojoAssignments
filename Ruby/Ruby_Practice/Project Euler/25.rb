fib_nums = [1,1,2,3,5,8,13,21,34,55,89,144]

while true
  if (fib_nums[-1] + fib_nums[-2]).to_s.length == 1000
    fib_nums << (fib_nums[-1] + fib_nums[-2])
    break
  else
    fib_nums << (fib_nums[-1] + fib_nums[-2])
  end
  
end

puts fib_nums.length