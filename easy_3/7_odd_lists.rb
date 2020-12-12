=begin

Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

=end

def oddities(array)
  oddities_array = []

  array.each_with_index do |number, index|
    oddities_array << number if index.even?
  end

  oddities_array
end

# OR

def oddities(array)
  array.select.with_index do |_, index|
    index.even?
  end
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(["abc", "def"]) == ["abc"]
puts oddities([123]) == [123]
puts oddities([]) == []
