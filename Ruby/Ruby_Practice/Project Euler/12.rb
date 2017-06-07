require 'prime'
def factors(num)
  result = []
  i = 1
  while i <= num
    if num % i == 0
      result << i
    end
    i += 1
  end
  return result
end

triangle = 1
while true
  if Prime.prime?(triangle)
  elsif factors((1..triangle).reduce(:+)).length > 200
    puts (1..triangle).reduce(:+)
    break
  end
  triangle += 40
end
