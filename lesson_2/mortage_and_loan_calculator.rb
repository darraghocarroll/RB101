

#problem
  #input- loan amount, APR, loan duration 
#output- monthly interest rate, loan duration in months, monthly payment.
  #explicit_requirements- 
  #identify_rules-
  #mental_model-
#write examples/test cases
#Data Structures- array
#Algorithm
#Code

require 'yaml'
MESSAGES = YAML.load_file('mortage_messages.yml')
require "pry"

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  return false if number < 0 
  return true if number.to_s != '0'
end

prompt(MESSAGES['welcome'])

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
prompt(MESSAGES['information'])

loan_info = Hash.new 

loop do #main loop

  loop do #get loan amount

    prompt(MESSAGES['get_amount']) 
    loan_info[:amount] = gets.chomp.to_f  

    if valid_number?(loan_info[:amount]) 
      break
    else
      prompt("Sorry that is not a amount, try again")
    end
  end

  loop do #get APR

    prompt(MESSAGES['get_APR'])
    loan_info[:APR] = gets.chomp.to_f / 1200

    if valid_number?(loan_info[:APR])
      break
    else
      prompt("Sorry that is not a valid APR, try again. ")
    end
  end

  loop do #get loan duration
    prompt(MESSAGES['get_duration']) 
    loan_info[:duration]= gets.chomp.to_f * 12 

    if valid_number?(loan_info[:duration]) 
      break
    else
      prompt("Sorry that is not a valid duration, try again")
    end
  end

  loan_info[:monthly_payment] = loan_info[:amount] * (loan_info[:APR]
    ./ (1 - (1 + loan_info[:APR])**(-loan_info[:duration])))

  loan_info.each{|k,v| puts "#{k}: #{v}"}
  prompt("Would you like to perform another operation? y/n ")

  continue = gets.chomp.downcase
  break if continue == "n"

end

prompt("Thank you #{name} for using calculator, goodbye!")

# problem
  # input- 
  # output-
  # explicit_requirements-
  # identify_rules-
  # mental_model-
# write examples/test cases
# Data Structures
# Algorithm
# Code

