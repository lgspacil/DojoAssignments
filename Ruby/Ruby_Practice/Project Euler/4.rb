number1 = 999
number2 = 999
result = []
i = 0
while i < number1 
  ii = i + 1
  while ii < number2
    if ((number1 - i) * (number2 - ii)).to_s == ((number1 - i) * (number2 - ii)).to_s.reverse
      result << ((number1 - i) * (number2 - ii))
      break
    end
    ii += 1
  end
  i += 1
end

puts result.max