def wonky_coins(n)
  return 1 if n == 0

  # call wonky_coins from inside itself. This is called *recursion*.
  return wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
end

puts("\nTests for #wonky_coins")
puts("===============================================")
    puts "wonky_coins(1) == 3: "  + (wonky_coins(1) == 3).to_s
    puts "wonky_coins(5) == 11: "  + (wonky_coins(5) == 11).to_s
    puts "wonky_coins(6) == 15: "  + (wonky_coins(6) == 15).to_s
    puts "wonky_coins(0) == 1: "  + (wonky_coins(0) == 1).to_s
puts("===============================================")