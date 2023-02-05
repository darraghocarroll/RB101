ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }


p ages.include?("Spot") 

p ages.key?("Spot")
p ages.assoc("Spot")
p ages.member?("Spot")
p ages.any?("Spot")

munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages

advice = "Few things in life are as important as house training your pet dinosaur."


puts advice.include?('dino')
puts advice.match?('dino')

p flintstones = %w(Fred Barney Wilma Betty BamBam Pepples)

p flintstones << 'Dino'
p flintstones.push('Darragh', 'moani')

p advice.slice(0, advice.index("house"))


state = 'The Flintstines Rock!'

x = 0
state.each_char{|n| x += 1 if n == 't'}

p x
p state.count('t')

title = "-"
'XXXXXXXXXX'.each_char do |x|
  sleep 0.5
  print x
end 


puts title.center(80, '-')
sleep(5)
