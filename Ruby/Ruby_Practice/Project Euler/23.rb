def abundant?(num)
  list = []
  i = num - 1
  while i > 0 
    if num % i == 0
      list << i 
    end
    i -= 1
    end
         
  if list.reduce(:+).to_i > num
    return true
  end
end


abundants = (1..28213).select {|n| abundant?(n) == true}

i = 0 
sums = []
abundants.each do |x|
  abundants[i..abundants.length].each do |y|
    sum = x + y
    sums << sum unless sum > 28213
  end
  i += 1
end

sums.uniq!
puts (1..28213).reject {|n| sums.include? n }.reduce(:+)