def translate(str)
p  sentence = str.split(" ")
pigged_words = []
  sentence.each do |word|
   pigged_words <<  piggy(word)
  end
  pigged_words.join(" ")
end


def piggy (words)
  vowels = %w(a e i o u q)
  words = words.chars
  until vowels.include?(words[0])
    words.push(words.shift)
  end
  if words[0] == "q"
    words.push(words.shift)
    words.push(words.shift)
  end
    words.join("") + "ay"
end
