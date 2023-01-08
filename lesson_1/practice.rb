NUMBERS = [1,2,3]
arr = [1,2,3]

def test
  puts NUMBERS.inspect 
end




test


def string_lengths(sentence)
  strings = sentence.split
  strings.map { |chars| chars.length }
end

p string_lengths("this is cool")
