#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.


require 'prime'
result = []
(2..2000000).map do |num|
  if Prime.prime?(num)
    result << num
  end
end

puts result.reduce(:+)
  
    