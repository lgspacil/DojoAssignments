def Capitalize(str)
  sentence = str.split
  answer = sentence.each do |word|
    print word.capitalize + ' '
  end 
end 

Capitalize("hello world")
