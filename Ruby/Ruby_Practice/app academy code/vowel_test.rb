def LetterChange(str)

  str.each_char do |character|
    if %w{q w e r t y u i o p a s d f g h j k l z x c v b n m}.include?(character)
      if %w{a e i o u}.include?(character) 
        print character.upcase!.next
      else
        print character.next
      end 
    else
      print character
    end   
  end 
end 


LetterChange("hello3")  

