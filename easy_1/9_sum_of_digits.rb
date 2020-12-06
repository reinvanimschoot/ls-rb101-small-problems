=begin

Write a method that takes one argument, a positive integer, and returns the sum of its digits.

=end

def sum(number)
  number.digits.sum
end

# OR

def sum(number)
  digit_array = number.to_s.split("").map { |string_digit| string_digit.to_i }

  digit_array.reduce { |digit, sum| digit + sum }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
