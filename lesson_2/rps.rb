VALID_CHOICES = %w[rock paper scissors lizard spock]

require "pry" 

def prompt(message)
  puts "=> #{message}"
end 

def valid_choice?(choice)
  return true if VALID_CHOICES.include?(choice)
end

def user_wins?(user, computer, hash)
  return 0 if user == computer
  hash[user.to_sym].include?(computer) 
end

game_logic = {
  rock: %w[scissors lizard],
  paper: %w[rock spock],
  scissors: %w[paper lizard],
  lizard: %w[spock paper],
  spock: %w[rock scissors]
}

user_wins = 0
computer_wins = 0
round_counter = 1
user_choice = ''

loop do #main loop

  prompt("This is round# #{round_counter}")

  loop do 
    prompt("choose one: #{VALID_CHOICES.join(', ')} ")
    user_choice = gets.chomp
    
    break if valid_choice?(user_choice)
    prompt "Try Again!"
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{user_choice} Computer chose: #{computer_choice}")

  result = user_wins?(user_choice, computer_choice, **game_logic)

  case result
    when result = true
      prompt("User Wins!!!")
      user_wins += 1
    when result == false
      prompt("Computer Wins!!!")
      computer_wins += 1
    when result == 0
      prompt("You Tied!!!")
   end

  prompt("Total user wins: #{user_wins} Total computer_wins: #{computer_wins}")

  if user_wins == 3
    prompt('you are the grand winner!')
    break
  elsif computer_wins == 3
    prompt('computer is the grand winner!')
    break
  else   
     round_counter += 1
  end

  prompt("Would you like to play again (y/n)?") 
  continue = gets.chomp.downcase
  break if continue == 'n'

end 
prompt('Thank you for playing!')
