=begin
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end


def collatz_sequence(num)
  
  result = []
  result << num
  
  while true
    if result.last == 1
      break
    
    elsif result.last.even?
      result << (result.last/2)
    
    elsif result.last.odd?
      result << ((3*result.last) + 1)
    end
  end
  
  return result
end


longest_chain = 0
starting_number = 0
i = 13

while i <= 999999
  if longest_chain < collatz_sequence(i).length
    longest_chain = collatz_sequence(i).length
    starting_number = i
  end
  i += 1
  
  if i == 999999
    puts "Starting number is #{starting_number}"
    puts "The longest chain is #{longest_chain}"
  end
  
end

