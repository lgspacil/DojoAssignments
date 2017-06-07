def time_conversion(minutes)
  if minutes < 60 
    puts ("0:#{minutes}")
  elsif minutes % 60 == 0 
    hour = minutes / 60
    puts "#{hour}:00"
  else 
    min = minutes % 60
    hour = minutes / 60 
    puts "#{hour}:#{min}"   
  end 
  
  
end 

time_conversion(45)
time_conversion(60)
time_conversion(360)
time_conversion(150)
time_conversion(240)