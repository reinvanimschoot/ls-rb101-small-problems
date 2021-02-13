=begin

The maximum sum subarray problem consists in finding the maximum sum of a contiguous
subsequence in an array of integers.

max_sequence of [-2, 1, -3, 4, -1, 2, 1, -5, 4] should be 6 [4, -1, 2, 1]

The easy case is when the array is made up of only positive numbers an the maximum sum is the sum of the whole array.
If the array is made up of only negative numbers, return 0 instead.

An empty array is considered to have zero as the greatest sum. Note that the empty array is also a valid subarray.

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

Input: array of Integers, both negative and positive OR an empty array
Output: maximum sum of a contiguous subsequence of the provided array. contiguous means adjacent

Datastructures:
  highest_sum = integer, maximum sum of a contiguous subsequence of the provided array. contiguous means adjacent

Algorithm:

We create an array of all possible subarrays contained in the provided array argument.
We then find the subarray in this collection that returns the highest sum.

How do we create an array of possible subarrays:
  We have an outer loop that defines the starting index of our subarrays
    We then have an inner loop that defines the ending index our subarrays.
      If the ending index is equal or less than the last index of our provided array
         we use the current starting index and ending index, to create a subarray and take the sum
         if the sum is higher than the current value of highest_sum, replace highest sum
      Else
        We break out of the loop
  If the starting index is equal or less than the last index of the provided array
    We increment the starting index by one
  else
    we break out of the loop
=end

def max_sequence(numbers)
  max_sequence_sum = 0

  numbers.each_index do |starting_index|
    numbers.each_index do |ending_index|
      sub_array_sum = numbers[starting_index..ending_index].sum

      max_sequence_sum = sub_array_sum if sub_array_sum > max_sequence_sum
    end
  end

  max_sequence_sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
