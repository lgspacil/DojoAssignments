def dasherize_number(num)
  
  num_s = num.to_s 
  num_list = []
  ans_list = []
  
  
  num_s.each_char do |num|
    num_list << num.to_i
  end 
  
  num_list.each do |num|
    if num % 2 == 0 
      ans_list << num.to_s
    elsif 
      ans_list << "-" 
      ans_list << num.to_s
      ans_list << "-"
    end 
  end 
  
  if ans_list[0] == "-"
    ans_list.shift
  end 
  
  if ans_list[-1] == "-"
    ans_list.pop
  end 
  
  result = ans_list.join.to_s
  
  result.gsub! "--", "-"
  return result
end 


puts dasherize_number(9999999999)

puts("\nTests for #dasherize_number")
puts("===============================================")
    puts(
      'dasherize_number(203) == "20-3": ' +
      (dasherize_number(203) == '20-3').to_s
    )
    puts(
      'dasherize_number(303) == "3-0-3": ' +
      (dasherize_number(303) == '3-0-3').to_s
    )
    puts(
      'dasherize_number(333) == "3-3-3": ' +
      (dasherize_number(333) == '3-3-3').to_s
    )
    puts(
      'dasherize_number(3223) == "3-22-3": ' +
      (dasherize_number(3223) == '3-22-3').to_s
    )
puts("===============================================")