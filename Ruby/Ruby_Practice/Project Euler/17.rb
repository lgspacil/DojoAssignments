def n_to_s(int)

  set1 = ["","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]

  set2 = ["","","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

  thousands = (int/1000)
  hundreds = ((int%1000) / 100)
  tens = ((int % 100) / 10)
  ones = int % 10
  string = ""
    
  if int == 1000
    string += "onethousand"
  
  elsif int == 100 || int == 200 || int == 300 || int == 400 || int == 500 || int == 600 || int == 700 || int == 800 || int == 900
    string += set1[hundreds] + "hundred"
  
  elsif int >= 100  
    if hundreds > 0 
      string += set1[hundreds] + "hundred" + "and"
    end
    if int % 100 < 20
      string += set1[int%100]
    elsif tens > 0
      string += set2[tens] 
      if ones != 0
        string += "" + set1[ones]
      end
    elsif ones > 0 
      string += "" + set1[ones]
    end
  
  elsif int < 100 && int >= 20 
    if tens > 0
      string += set2[tens] 
    end
  
    if ones > 0 
      string += "" + set1[ones]
    end
  
  elsif int < 20
    string += set1[int]
  end

  
  string
end
  



result = []
(1..1000).to_a.each do |num|
  result << n_to_s(num)
end

print result.join().length
    