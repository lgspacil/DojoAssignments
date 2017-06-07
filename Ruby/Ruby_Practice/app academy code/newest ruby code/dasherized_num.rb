def dasherize_number(num)
  new_num = num.to_s.split("")
  
  array = []
  
  new_num.each do |num|
    if num.to_i % 2 == 0 
      array << num
    else
      array << "-"
      array << num
      array << "-"
    end 
  end
  
  if array[-1] == "-"
    array.pop
  end 
  
  if array [0] == "-"
    array.shift
  end 
  
  join_array = array.join("")
  
  join_array.gsub("--", "-")
  
  
end 

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
    