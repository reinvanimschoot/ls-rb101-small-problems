=begin

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the
string the substring begins. This means that all substrings that start at position 0 should come first,
then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position,
the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

=end

def substrings(string)
  string_size = string.length
  all_substrings = []

  string_size.times do |start_index|
    substring = string[start_index..-1]
    substring_size = substring.length

    substring_size.times do |end_index|
      all_substrings << substring[0..end_index]
    end
  end

  all_substrings
end

puts substrings("abcde") == [
  "a", "ab", "abc", "abcd", "abcde",
  "b", "bc", "bcd", "bcde",
  "c", "cd", "cde",
  "d", "de",
  "e",
]
