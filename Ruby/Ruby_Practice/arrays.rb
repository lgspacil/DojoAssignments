# a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') 

b = %w{lucas gaglianone spacil fifa time ps4}


b.delete_at(0)
# puts b

# puts "Fetch the value at index two: " + b.fetch(2)

#checks if this value is in the array
# puts b.fetch(5) { |key|  puts "#{key} is not in the array"}

# puts b.reverse

# puts b.sort

# puts b.slice(2,3)
puts b.insert(5, "happy")