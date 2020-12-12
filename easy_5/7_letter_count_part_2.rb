=begin

Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. 
For instance, the length of "it's" is 3, not 4.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

=end

def word_sizes(string)
  word_size_count = {}

  words = string.split(" ")

  words.each do |word|
    word_size = word.count("a-zA-Z")

    value = word_size_count.key?(word_size) ? word_size_count[word_size] += 1 : 1

    word_size_count[word_size] = value
  end

  word_size_count
end

puts word_sizes("Four score and seven.") == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes("Hey diddle diddle, the cat and the fiddle!") == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes("") == {}
