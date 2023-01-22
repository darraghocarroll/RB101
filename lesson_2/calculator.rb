require "pry"

def prompt(message)
  print " => #{message}"
end

def valid_number?(number)
  return true if number.to_i != 0  
  return true if number.to_f != 0  
  return true if number.to_s == '0'
end

def valid_operator(operator)
  if %w(1 2 3 4).include?(operator) 
    return true
  else return false
  end
end

int_1 = nil
int_2 = nil
operation = nil

prompt("Welcome to calculator! Enter your name: ")

name = ''

loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name") 
  else
    break
  end
end

prompt("Hi #{name}")

loop do #main loop

  loop do #check validity of first number

    prompt("What is the first number? ")
    int_1 = gets.chomp.to_f

    if valid_number?(int_1)
      break
    else
      prompt("Sorry that is not a valid number, try again")
    end
  end

  loop do #get abd check validity of second number
    prompt("what is the second number? ")
    int_2 = gets.chomp.to_f

    if valid_number?(int_2)
      break
    else
      prompt("Sorry that is not a valid number, try again. ")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform
    1) Add
    2) Subtract
    3) Multiple
    4) Divide
  MSG

  prompt(operator_prompt)

  loop do
    operation = gets.chomp

    if valid_operator(operation)
      break
    else
      prompt("Sorry, that is not a valid operation, try again. ")
    end
  end


  case operation
    when '1'
      prompt("Adding the two numbers....")
    when '2'
      prompt("Subtracting the two numbers....")
    when '3'
      prompt('Multiplying the two numbers.....')
    when '4'
      prompt('Dividing the two numbers....')
  end

  
  result = case operation 
           when '1'
    result = int_1 + int_2
  when '2'
    result = int_1 - int_2
  when '3'
    result = int_1 * int_2
  when '4'
    result = int_1 / int_2
  end

  prompt("Your result is #{result}")

  prompt("Would you like to perform another operation? y/n ")

  continue = gets.chomp.downcase
  break if continue == "n"

end

prompt("Thank you for using calculator, goodbye!")
#get interger 1 and 2
#add intergers together
#displays result

#get array
#iterate through each array and concatonate to new array
#display array

#return index 0
#reurn even numbe
 
