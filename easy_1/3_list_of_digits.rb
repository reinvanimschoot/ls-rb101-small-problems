=begin

Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

=end

# def digit_list(number)
#   number.digits
# end

# OR

def digit_list(number)
  digits = []

  number.to_s.split("").each do |digit_as_string|
    digits << digit_as_string.to_i
  end

  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
