def wonky_coins(n)
  return 1 if n == 0
  return wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
end

puts wonky_coins(1)
puts wonky_coins(5)  