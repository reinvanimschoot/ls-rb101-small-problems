=begin

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
If the argument has an odd length, you should return exactly one character.
If the argument has an even length, you should return exactly two characters.

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

=end

def center_of(string)
  string_length = string.length
  middle = string_length / 2

  string_length.even? ? string[middle - 1..middle] : string[middle]
end

puts center_of("I love ruby") == "e"
puts center_of("Launch School") == " "
puts center_of("Launch") == "un"
puts center_of("Launchschool") == "hs"
puts center_of("x") == "x"
