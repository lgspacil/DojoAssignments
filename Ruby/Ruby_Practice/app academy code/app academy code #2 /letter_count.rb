def letter_count(str)
  hash = Hash.new(0)
  str.each_char do |letter|
    hash[letter] += 1 unless letter == " "
  end 
  
  return hash
end

puts("\nTests for #letter_count")
puts("===============================================")
    puts "letter_count(\"cat\") == {\"c\" => 1, \"a\" => 1, \"t\" => 1}: "  + (letter_count("cat") == {"c" => 1, "a" => 1, "t" => 1}).to_s
    puts "letter_count(\"moon\") == {\"m\" => 1, \"o\" => 2,\"n\" => 1}: "  + (letter_count("moon") == {"m" => 1, "o" => 2,"n" => 1}).to_s
    puts "letter_count(\"cats are fun\") == {\"a\" => 2, \"c\" => 1, \"e\"=> 1, \"f\" => 1, \"n\" => 1, \"r\" => 1, \"s\" => 1, \"t\" => 1, \"u\" => 1}: "  + (letter_count("cats are fun") == {"a" => 2, "c" => 1, "e"=> 1, "f" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1, "u" => 1}).to_s
puts("===============================================")