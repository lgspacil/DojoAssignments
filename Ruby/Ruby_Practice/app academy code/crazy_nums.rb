numbers = (1..20).to_a

new_nums = numbers.each do |num|
  next if num % 5 == 0 
  puts num
end

  