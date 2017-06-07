def time_conversion(minutes)
  
  result = ""
  
  if minutes < 10
    result = "0:0#{minutes}"
  
  elsif minutes < 60
    result = "0:#{minutes}"
    
  elsif minutes % 60 == 0
    hour = minutes / 60 
    result = "#{hour}:00"
  
  elsif 
    min = minutes % 60
    hour = minutes / 60
    
    
    
    result = "#{hour}:#{min}"
  end 
  
  return result
end 

puts("\nTests for #time_conversion")
puts("===============================================")
    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts("===============================================")

puts time_conversion(360)
puts time_conversion(400)