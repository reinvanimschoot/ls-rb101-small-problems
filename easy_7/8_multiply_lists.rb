=begin

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array
that contains the product of each pair of numbers from the arguments that have the same index.
You may assume that the arguments contain the same number of elements.

Examples:

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


=end

def multiply_list(array_one, array_two)
  array_one.map.with_index { |number, index| number * array_two[index] }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
