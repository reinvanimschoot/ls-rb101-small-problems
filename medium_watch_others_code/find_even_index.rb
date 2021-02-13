=begin

Input: Array of integers
Output: index or -1

We want to find an index in the given array for which it is true,
that when you take the sum of the values of all the elements right to that index
and all the values of the elements left to that index, those sums would be equal.

The value of the element at that index is of no importance. 

If we do not find an index for which the above predicate is true, we return -1.

Example: the input is the array [1,2,3,4,3,2,1]

The method we will write should return the index 3. The value found at that index is 4 but that 
doesn't matter. What matters is the fact that the elements left of the index 3 are 1,2,3 for which the sum is 6
and the values right of index 3 are 1,2,3 for which the sum is also 6.

Example: the input is the array [1,2,3,4,6]
The method will once again return in the index 3. The values left of the index 3 are 1,2,3 for which the sum is 6
and the value right of index 3 is 6. There is only one value so the sum would just be 6, which is equal to the sum of the values
left of index 3.

Algorithm:

We iterate over the indices of the array.
  For each index, we take collect the elements to the left of that index, 
  without including the value at the index and we collect the elements to the right of that index, 
  without including the vlaue at the index.

  We then take the sum of the values left of that index and we take the sum of the values right of that index.

  If they are equal, we return the index.

  If we iterate over all the indices and the sum of the right and left values is never equal, we return -1.
=end

def find_even_index(integers)
  integers.each_index do |index|
    left_values, right_values = left_and_right_values(index, integers)

    return index if left_values.sum == right_values.sum
  end

  -1
end

def left_and_right_values(index, array)
  left_values = array[0...index]
  right_values = array[(index + 1)..-1]

  [left_values, right_values]
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
