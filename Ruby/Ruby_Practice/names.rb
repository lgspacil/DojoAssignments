a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]


def name_print(list)
	puts "You have #{list.length} names in the array"
	list.each do |name|
		puts "The name is "+ name[:first_name] +" "+ name[:last_name]
	end
end

name_print(names)