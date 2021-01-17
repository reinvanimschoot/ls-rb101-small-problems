=begin

Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

=end

def rotate_array(array)
  array[1..-1].push(array[0])
end

def rotate_rightmost_digits(number, rotation_cycles)
  digit_array = number.to_s.chars

  digits_to_rotate = digit_array.slice!(-rotation_cycles..-1)
  rotated_digits = rotate_array(digits_to_rotate)

  digit_array.concat(rotated_digits)

  digit_array.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
