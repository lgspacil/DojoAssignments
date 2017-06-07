#create another array, then when looping through the letters I will look to see if the letter is in the array with .include? 

def num_repeats(string)
  
  hash = Hash.new(0)
  array = Array.new
  
  
  string.each_char do |letter|
    hash[letter] += 1 
  end 
  puts hash
  
  hash.each_value do |value|
    array << value / 2 
  end 
  puts array
  
  return array.reduce(:+)
  
  
  
end 


#puts num_repeats("aabb")
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts("\nTests for #num_repeats")
puts("===============================================")
    puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
    # one character is repeated
    puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
    puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
    puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
    puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
puts("===============================================")

