file = File.read("p022_names.txt").split(",")
file.map! { |n| n.tr('^A-Za-z0-9','') }
file.sort!

ALPHABET_SCORE = {
  "A" => 1,
  "B" => 2,
  "C" => 3,
  "D" => 4,
  "E" => 5,
  "F" => 6,
  "G" => 7,
  "H" => 8,
  "I" => 9,
  "J" => 10,
  "K" => 11,
  "L" => 12,
  "M" => 13,
  "N" => 14,
  "O" => 15,
  "P" => 16,
  "Q" => 17,
  "R" => 18,
  "S" => 19,
  "T" => 20,
  "U" => 21,
  "V" => 22,
  "W" => 23,
  "X" => 24,
  "Y" => 25,
  "Z" => 26

}


list_of_final_scores = []

file.each do |name|
  
  letter_score = []
  
  name.each_char do |letter|
    letter_score << ALPHABET_SCORE[letter]
  end
  
  list_of_final_scores << (letter_score.reduce(:+) * (file.index(name).to_i + 1))
end

print list_of_final_scores.reduce(:+)
    
    
    
    
    
    