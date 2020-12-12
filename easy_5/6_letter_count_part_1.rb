=begin

Write a method that takes a string with one or more space separated words and
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

=end

def word_sizes(string)
  word_size_count = {}

  words = string.split(" ")

  words.each do |word|
    word_size = word.length

    value = word_size_count.key?(word_size) ? word_size_count[word_size] += 1 : 1

    word_size_count[word_size] = value
  end

  word_size_count
end

puts word_sizes("Four score and seven.") == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes("Hey diddle diddle, the cat and the fiddle!") == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes("") == {}
