=begin

Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from
both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

=end

def interleave(array_one, array_two)
  interleaved_array = []

  array_one.each_with_index do |element, index|
    interleaved_array << element
    interleaved_array << array_two[index]
  end

  interleaved_array
end

puts interleave([1, 2, 3], ["a", "b", "c"]) == [1, "a", 2, "b", 3, "c"]
