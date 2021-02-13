=begin

Find all pairs

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0

If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)


========================================================

Input: an array with zero elements OR one or more integers.
Output: the count of integer pairs in the array.

Problem:
  Given an array of integers we want to check which integers are to found in pairs.
  We return the pair-count as our return value.

  If an integer is found 3 times, it counts as one pair
  If an integer is found 4 times, it counts as two pairs

  If the array is empty or only has one value, we return 0.


Examples:
  [1, 4, 15, 1000, 1, 1, 2, 2] = 2 pairs, 1 and 1, 2 and 2
  [] = 0 pairs
  [57] = 0 pairs
  [4,4,4,4,4,4,4,4,4] = 4 pairs

Datastructures:
  unique_values = array
  pair_count = 0


Algorithm:
  We want to have a reference to the unique values in the array.

  We then use that unique_values array and loop over it.
    For every value in the unique values array, 
    we count how many times that value is found in the original input array.
    We take that count and divide it by 2 to get the pairs.
    We then increment our pair_count with the result of the division.

  After this iteration, we return the pair_count.
=end

def pairs(integers)
  unique_values = integers.uniq
  pairs_count = 0

  unique_values.each do |integer|
    pairs = count_value_pairs(integers, integer)

    pairs_count += pairs
  end

  pairs_count
end

def count_value_pairs(array, value)
  count = array.count(value)
  count / 2
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
