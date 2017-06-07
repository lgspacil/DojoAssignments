MORSE_CODE = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
}

def morse_code(word)
  split_word = word.split("")
  result = []
  split_word.map do |letter|
    result << MORSE_CODE[letter]
  end 
  result.join(" ")
  
end 

def morse_encode(str)
  words = str.split(" ")
  encoded_words = words.map do |word|
    morse_code(word)
  end 
  encoded_words.join("  ")
end 

puts("\nTests for #morse_encode")
puts("===============================================")
    puts "morse_encode(\"q\") == \"--.-\": "  + (morse_encode("q") == "--.-").to_s
    puts "morse_encode(\"cat\") == \"-.-. .- -\": "  + (morse_encode("cat") == "-.-. .- -").to_s
    puts "morse_encode(\"cat in hat\") == \"-.-. .- -  .. -.  .... .- -\": "  + (morse_encode("cat in hat") == "-.-. .- -  .. -.  .... .- -").to_s

puts("===============================================")

  