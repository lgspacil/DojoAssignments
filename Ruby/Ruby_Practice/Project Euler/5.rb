=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

puts (1..20).to_a.reduce(:lcm)

#another way to comeplete the problem is 

i = 1
while true
  if ((i%11)==0 && (i%12)==0&&(i%13)==0 && (i%14)==0 && (i%15)==0 && (i%16)==0 && (i%17)==0 && (i%18)==0 && (i%19)==0 && (i%20)==0) 
    puts i
    break
  end
  i += 1
end


