=begin

Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
The return value should be arranged in order from shortest to longest substring.

Examples:

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=end

def leading_substrings(string)
  substrings = []

  string.length.times do |index|
    substrings << string[0..index]
  end

  substrings
end

puts leading_substrings("abc") == ["a", "ab", "abc"]
puts leading_substrings("a") == ["a"]
puts leading_substrings("xyzzy") == ["x", "xy", "xyz", "xyzz", "xyzzy"]
