def ceaser_cipher(string, num)
  alphabet = ("a".."z").to_a #DO NOT TOUCH, WILL BE THE MAIN ABC'S
  edit_alphabet = ("a".."z").to_a #This one will be the edited ABC's
  pop_num = edit_alphabet.pop(num)
  new_alphabet = edit_alphabet.unshift(pop_num).flatten
  result = []
  string.each_char do |letter|
    if letter == " "
      result << " "
    else
      index_old = alphabet.index(letter)
      result << new_alphabet[index_old]
    end
  end
  
  
  puts result.join
    
  
end

ceaser_cipher("", 3) 