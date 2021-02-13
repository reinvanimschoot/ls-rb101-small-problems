=begin

A featured number (something unique to this exercise) is an odd number that is a multiple of 7,
and whose digits occur exactly once each. 

So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7),
and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument.
Return an error message if there is no next featured number.

Examples:

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no p

Input: an integer
Output: Either the next "featured" number OR an error message if there is not next featured number

Challenge: Find the next featured number

A featured number is:
  - a multiple of 7
  - a number whose digits occur exactly once
  - an odd number

Algoritm:

We take the provided integer and use it as the start of a loop,
where we increment the integer by one until we reach 9_999_999_999

  if we detect a featured number, we return that featured number
  if we reach 9_999_999_999 without encountering a new featured number, we return a string "there is no p"
=end

def featured(number)
  return "There is no possible number that fulfills those requirements." if number >= 9_876_543_210

  (number + 1).upto(9_999_999_998) do |num|
    digits_occur_once = num.digits.uniq == num.digits
    multiple_of_seven = (num % 7).zero?

    return num if digits_occur_once && multiple_of_seven && num.odd?
  end
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999) # -> There is no p
