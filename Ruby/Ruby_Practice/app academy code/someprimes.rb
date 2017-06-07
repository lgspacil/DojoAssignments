def time_conversion(minutes)
	end_string = ""
	result = 0 

	if minutes < 60 
		end_string = "0:#{minutes.to_s}"
	elsif minutes % 60 == 0 
		hours = minutes / 60 
		end_string = "#{hours}:00"
	else
		min = minutes % 60
		hours = minutes / 60
		return "#{hours}:#{min}" 
	end
end 

puts("===============================================")
    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts("===============================================")
