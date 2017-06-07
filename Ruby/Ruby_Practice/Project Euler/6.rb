=begin
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


=end

#square of the first 100 natural numbers is
x = (1..100).to_a.map {|num| num**2}.reduce(:+)


#square of the sum of the first 100 natual numbers

y = ((1..100).to_a.reduce(:+))**2

#the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum

puts y - x