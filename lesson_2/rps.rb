# problem
  # input- user choice
  # output- computer choice and user choice
  # explicit_requirements-
  # identify_rules-
  # mental_model-
# write examples/test cases
# Data Structures - three arrays or a nested array?
# Algorithm
# Code

VALID_CHOICES = ["rock", "paper", "scissors"]

def test_method
  prompt('test message')
end


def prompt(message)
  puts "=> #{message}"
end 

test_method

def valid_choice?(choice)
  return true if VALID_CHOICES.include?(choice)
  return false
end

user_choice = ''
loop do 
  loop do # main loop
    prompt("choose one: #{VALID_CHOICES.join(', ')} ")
    user_choice = gets.chomp
    
    break if valid_choice?(user_choice)
    prompt "Try Again!"
  end
    
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{user_choice} Computer chose: #{computer_choice}")

  if (user_choice == 'rock' && computer_choice == 'scissors') || 
     (user_choice == 'paper' && computer_choice == 'rock') ||
     (user_choice == 'scissors' && computer_choice == 'paper') 
     prompt('You Won!')
  elsif (user_choice == 'rock' && computer_choice == 'paper') || 
        (user_choice == 'paper' && computer_choice == 'scissors') ||
        (user_choice == 'scissors' && computer_choice == 'rock')
        prompt('You Won!') 
  else
    prompt("It's a tie! ")
  end

  prompt("Would you like to play again (y/n)?") 
  continue = gets.chomp.downcase

  break if continue == 'n'
end

prompt('Thank you for playing!')
