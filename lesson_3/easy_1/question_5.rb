# programatically determine if 42 lies between 10 and 100

range = (10..100).to_a
puts range.include?(42)

puts (10..100).cover?(42)

famous_words = "seven years ago..."

#famous_words = "Four score and " + famous_words

famous_words.prepend("Four score and ")
p famous_words


ary = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
p ary.flatten

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc("Barney")
flintstones.keep_if{|name| name =~ /Barney/}
p flintstones
