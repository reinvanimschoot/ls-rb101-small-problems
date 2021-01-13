=begin

Write a method that takes a string argument, and returns true if all of the alphabetic characters
inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Examples:

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

=end

def uppercase?(string)
  string.chars.all? { |char| char.upcase == char }
end

puts uppercase?("t") == false
puts uppercase?("T") == true
puts uppercase?("Four Score") == false
puts uppercase?("FOUR SCORE") == true
puts uppercase?("4SCORE!") == true
puts uppercase?("") == true
