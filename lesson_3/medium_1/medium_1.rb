(0..9).each do |x|
  x.times{|x| print " "}
  puts ("The Flinstones Rock!")
end

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }


def factors(number)
  divisor = number
  factors = []
  loop do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
    break if divisor == 1
  end 
  factors
end

p factors(100)


ary = [1, 2, 3, 4, 5]

ary + [6]
ary << 7 

p ary


limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

p new_answer = mess_with_it(answer)

p answer - 8

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

new_hash = mess_with_demographics(munsters)

p new_hash
p munsters


