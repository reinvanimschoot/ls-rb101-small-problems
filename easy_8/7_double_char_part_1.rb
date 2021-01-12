=begin

Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

=end

def repeater(string)
  doubled_chars = string.chars.map do |char|
    char * 2
  end

  doubled_chars.join
end

puts repeater("Hello") == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater("") == ""
