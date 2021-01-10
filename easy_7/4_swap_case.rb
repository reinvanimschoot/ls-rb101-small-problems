=begin

Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced
by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

=end

def swapcase(string)
  swapped_chars = string.chars.map do |char|
    char == char.upcase ? char.downcase : char.upcase
  end

  swapped_chars.join
end

puts swapcase("CamelCase") == "cAMELcASE"
puts swapcase("Tonight on XYZ-TV") == "tONIGHT ON xyz-tv"
