def no_repeat?(year)
  chars_seen = []
  year.to_s.each_char do |char|
    return false if chars_seen.include?(char)
    chars_seen << char
  end

  return true
end

def no_repeats(year_start, year_end)
  result = []
  (year_start..year_end).each do |year|
    if no_repeat?(year)
      result << year
    end 
  end 
  if result.length == 0 
    return []
  else
    return result.to_a
  end
end 

puts no_repeats(1123, 1123)

puts("\nTests for #no_repeats")
puts("===============================================")
    puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
    puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
    puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
puts("===============================================")
  
  