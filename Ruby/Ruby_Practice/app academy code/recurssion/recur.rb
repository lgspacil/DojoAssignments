def recurssion(n)
  if n == 0
    "no more bottles of beer on the wall!"
  else
    puts "#{n} bottles of beer on the wall"
    recurssion(n-1)
  end
end

puts recurssion(4)
