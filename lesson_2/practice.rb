print "What is the first number?: "
int_1 = gets.chomp.to_i
print "what is the second number?: "
int_2 = gets.chomp.to_i

puts " "

print "What operation would you like to perform?: "
operation = gets.chomp

if operation == "+"
  result = int_1 + int_2
elsif operation == "-"
  result = int_1 - int_2
elsif operation == "/"
  result = int_1.to_f / int_2.to_f
else operation == "*"
  result = int_1 * int_2
end

puts "Your result is #{result}"

#get interger 1 and 2
#add intergers together
#displays result

#get array
#iterate through each array and concatonate to new array
#display array

#return index 0
#reurn even numbers

