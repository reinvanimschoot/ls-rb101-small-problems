=begin

In the previous exercise, you developed a method that converts non-negative numbers to strings. 
In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), 
Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

=end

STRING_REPRESENTATION = {
  0 => "0",
  1 => "1",
  2 => "2",
  3 => "3",
  4 => "4",
  5 => "5",
  6 => "6",
  7 => "7",
  8 => "8",
  9 => "9",
}

def signed_integer_to_string(integer)
  digits = integer.abs.digits.reverse

  char_map = digits.map { |digit| STRING_REPRESENTATION[digit] }

  string = char_map.join("")

  case true
  when integer.negative?
    string.prepend("-")
  when integer.positive?
    string.prepend("+")
  end

  string
end

puts signed_integer_to_string(4321) == "+4321"
puts signed_integer_to_string(-123) == "-123"
puts signed_integer_to_string(0) == "0"
