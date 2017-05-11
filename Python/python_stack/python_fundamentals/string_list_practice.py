str = "its thanksgiving day. its my birthday,too!"

print str.find('day')

print str.replace('day', 'month', 1)

print "---------------------------------------"

#min and max

x = [2,54,-2,7,12,98]

print min(x)
print max(x)

print "---------------------------------------"

#First and Last

x = ["hello",2,54,-2,7,12,98,"world"]

first = x[0]
last = x[-1]
new_list = []


new_list.append(first)
new_list.append(last)
print new_list

print "---------------------------------------"

x = [19,2,54,-2,7,12,98,32,10,-3,6]

sorted_x = sorted(x)

first_part, second_part = sorted_x[:len(sorted_x)/2], sorted_x[len(sorted_x)/2:]

result = []
second_part[0] = first_part
print second_part


