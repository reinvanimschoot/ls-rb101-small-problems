=begin

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from
the argument Arrays. There should be no duplication of values in the returned Array,
even if there are duplicates in the original Arrays.

Example

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=end

def merge(array_one, array_two)
  new_array = array_one + array_two

  new_array.uniq
end

# OR

def merge_v2(array_one, array_two)
  array_one | array_two
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
