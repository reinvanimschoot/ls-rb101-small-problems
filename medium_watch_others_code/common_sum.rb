=begin

Problem:
        Given three arrays of integers, return the sum of elements that are in common in all
        three arrays.

Input: three arrays of integers
Output: an integer

- Find the elements that are present in all three arrays
- If the same integer appears more than once in ALL three arrays, we add it 
  again.
- Take the sum of those elements

p common([1, 2, 3], [5, 3, 2], [7, 3, 2]) # == 5
  => [2, 3] => 5

p common([1, 2, 2, 3], [5, 3, 2, 2], [7, 3, 2, 2]) # == 7
  => [2,2,3] => 7

p common([1, 2, 2, 3], [5, 3, 2], [7, 3, 2, 2]) # == 5
  => [2,3] => 5

Datastructure;
  common_elements = array of elements found in all three arrays

Algorithm:
  - We take the first array and iterate over it, providing the integer as argument

    - If the element is not found in the second or third array, we continue
    -If the element is found and the count of that element in both arrays is
      greater than the count of that integer in the common_elements array
      We add it the integer to the common elements array
    - If not, we continue

  - We take all the elements in the common_elements array and add them together
  - We return that sum
=end

def common(array_one, array_two, array_three)
  common_elements = []

  array_one.each do |integer|
    next unless array_two.include?(integer) && array_three.include?(integer)

    tracked_count = common_elements.count(integer)

    next if array_two.count(integer) == tracked_count || array_three.count(integer) == tracked_count

    common_elements << integer
  end

  common_elements.sum
end

p common([1, 2, 3], [5, 3, 2], [7, 3, 2]) == 5
p common([1, 2, 2, 3], [5, 3, 2, 2], [7, 3, 2, 2]) == 7
p common([1, 2, 2, 3], [5, 3, 2], [7, 3, 2, 2]) == 5
p common([1, 2, 2, 2, 2, 2, 3], [5, 3, 2, 2, 2], [7, 3, 2, 2, 2]) == 9
