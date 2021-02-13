=begin

Write a method that computes the difference between the square of the sum of
the first n positive integers and the sum of the squares of the first n positive integers.

Examples:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Input:number: integer, zero? negative?
Output: Integer, (square of the sum of the first n positive integers) - (sum of the squares of the first n positive integers)

Example:

the result for 3 would be:

- the square of the sum of the positive integers leading up to and including 3:
  (1 + 2 + 3)**2 
  which is 36

- the sum of the squares of the positive integers leading up to and including 3:
  (1**2 + 2**2 + 3**2)
  which is 14

- 36 - 14 = 22

Datastructures:
 - range_array: n positive numbers upto and including the argument "number"
 - array of the sums of the square of the integers in the range

Algorithm:
  - square of the sum
    We take the sum of the integers in the range_array and take the square of that sum
  - sum of the squares
    We iterate over the integers in the numbers array and take the square for each number we iterate over
    We then store that square in a different array
    afterwards, we take the sum of that array.


=end

def sum_square_difference(number)
  numbers = (1..number).to_a

  sum_of_numbers = numbers.sum
  square_of_sum = sum_of_numbers ** 2

  numbers_squared = numbers.map { |n| n ** 2 }
  sum_of_squares = numbers_squared.sum

  square_of_sum - sum_of_squares
end

puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
