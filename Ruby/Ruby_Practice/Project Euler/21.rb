def d(num)
  result = []
  i = 1 
  while i < num
    if num % i == 0
      result << i
    end
    i += 1
  end
  return result.reduce(:+)
end

result = []
(2..10000).to_a.each do |n|
  x = d(n) 
  y = d(x)

  if d(n) != d(x) && d(x) == n
    if result.include?(n) || result.include?(d(n))
    else
      result << n
      result << d(n)
    end
  end
end

p result.reduce(:+)