def factorial(num)
  result = []
  i = 0
  while i < num
    result << (num - i)
    i += 1
  end
  return result.reduce(:*)
end


p factorial(100).to_s.split("").map {|x| x.to_i}.reduce(:+)

