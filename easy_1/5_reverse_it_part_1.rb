=begin

Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

=end

def reverse_sentence(sentence)
  word_array = sentence.split(" ")

  word_array.reverse!

  word_array.join(" ")
end

puts reverse_sentence("") == ""
puts reverse_sentence("Hello World") == "World Hello"
puts reverse_sentence("Reverse these words") == "words these Reverse"
