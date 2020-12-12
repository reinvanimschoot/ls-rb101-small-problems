=begin

The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer.
String#to_i and the Integer constructor (Integer()) behave similarly.
In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer.
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters;
assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc.
Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

=end

def string_to_integer(string)
  integer_representation = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

  integer = 0

  string_chars = string.chars

  reverse_chars = string_chars.reverse

  reverse_chars.each_with_index do |char, index|
    digit = integer_representation[char]
    digit_with_place_weight = digit * 10 ** index

    integer += digit_with_place_weight
  end

  integer
end

puts string_to_integer("4321") == 4321
puts string_to_integer("570") == 570
