def ordered_vowel_word?(word)
  vowels = %w(a e i o u)
  list = []
  word.each_char do |letter|
    if vowels.include?(letter)
      list << letter
    end
  end 

  ind_list = list.map do |vowel|
    vowels.index(vowel)
  end 
  
  if ind_list.length <= 1 
    return true
  else
    i = 0 
    while i < ind_list.length
      ii = i + 1 
      if ind_list[ii] - ind_list[i] >= 0 
        return true
      else
        return false
      end 
      i += 1 
    end
  end  
end 

def ordered_vowel_words(str)
  new_str = str.split(" ")
  result = []
  new_str.each do |word|
    if ordered_vowel_word?(word) == true
      result << word
    end 
  end 
  return result.join(" ")
end 


puts("\nTests for #ordered_vowel_words")
puts("===============================================")
    puts "ordered_vowel_words(\"amends\") == \"amends\": "  + (ordered_vowel_words("amends") == "amends").to_s
    puts "ordered_vowel_words(\"complicated\") == \"\": "  + (ordered_vowel_words("complicated") == "").to_s
    puts "ordered_vowel_words(\"afoot\") == \"afoot\": "  + (ordered_vowel_words("afoot") == "afoot").to_s
    puts "ordered_vowel_words(\"ham\") == \"ham\": "  + (ordered_vowel_words("ham") == "ham").to_s
    puts "ordered_vowel_words(\"crypt\") == \"crypt\": "  + (ordered_vowel_words("crypt") == "crypt").to_s
    puts "ordered_vowel_words(\"o\") == \"o\": "  + (ordered_vowel_words("o") == "o").to_s
    puts "ordered_vowel_words(\"tamely\") == \"tamely\": "  + (ordered_vowel_words("tamely") == "tamely").to_s
    
    phrase = "this is a test of the vowel ordering system"
    result = "this is a test of the system"
    puts "ordered_vowel_words(phrase) == result: "  + (ordered_vowel_words(phrase) == result).to_s
puts("===============================================")