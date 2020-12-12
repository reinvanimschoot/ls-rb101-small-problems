=begin

Write a method that takes an Array of numbers, 
and returns an Array with the same number of elements, 
and each element has the running total from the original Array.

Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

=end

def running_total(numbers)
  running_totals = []

  numbers.each_index do |index|
    running_totals << numbers[0..index].sum
  end

  running_totals
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
