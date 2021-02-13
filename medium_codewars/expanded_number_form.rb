=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

Input: a whole number, greater than 0.
Output: a string containing the expanded form of the input number

Problem: Given a number, we want to return that number in its expanded form as a string.
This means that we split up the number by digit places.

Example:
  845

  The hundreds digit place for this number is 8, which means it is 800
  The tenth digit place for this number is 4, which means it is 40
  The oneth digit place for this number is 5, which is 5.

  So after splitting up, we can say that the expanded form for this number is "800 + 40 + 5"

Datastructures:
  expanded_forms = array

Algorithm:
  We want to get a reference to the digits of the input number in the order of their digit place in the number.
  We then want to iterate over those digits, passing the digit and the index as arguments.
  If the number is 0, we continue with the next iteration.
  If not, we want to check where the digit is to be found in the number, and depending on the place in the number,
  we want to append it to the expanded_form_string with the right amount of 0's added to it.

  We then return expanded_form_string
=end

def expanded_form(number)
  digits = number.digits # [4, 0, 3, 0, 7]

  expanded_forms = []

  digits.each_with_index do |digit, index|
    next if digit.zero?

    zeros = "0" * index

    expanded_forms << "#{digit}#{zeros}"
  end

  expanded_forms.reverse.join(" + ")
end

p expanded_form(12) == "10 + 2"
p expanded_form(42) == "40 + 2"
p expanded_form(70304) == "70000 + 300 + 4"
