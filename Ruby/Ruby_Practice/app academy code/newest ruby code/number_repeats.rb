def num_repeats(string)
  hash = Hash.new(0)
  
  string.each_char do |letter|
    hash[letter] += 1 
  end 
  
  array = []
  
  hash.each_value do |num|
    array << num / 2 
  end 
  
  puts array.reduce(:+)
      
end 

num_repeats("abdbc")