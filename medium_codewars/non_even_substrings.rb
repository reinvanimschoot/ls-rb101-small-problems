=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

Input: a string of integers
Output: an integer, the number of odd-numbered substrings in the given input string

Given the input string, we want to figure out, of all the substrings that we can build with that string,
how many are odd-numbered.

Datastructures:
odd_numbered_substring_count = integer, how many odd numbered substrings there are


Algorithm:
- We want to iterate over all the substrings of the given input string
 - for each substring, we check if the number it forms is odd
- if so, we increase the odd_numbered_substring_count by 1.
  if not, we continue

we return the odd_numbered_substring_count

How do we iterate over all the substrings?
- We have an outer loop that iterates over the length of the input string and passed a starting index as argument
  - we have an inner loop that uses this starting index as starting point and has the length of the input string as ending point, as argument we pass an end_index
    We use the current starting_index and ending_index as limits to take a substring from the given input string.
=end

def solve(string)
  odd_numbered_substring_count = 0

  (0...string.length).each do |start_index|
    (start_index...string.length).each do |end_index|
      substring = string[start_index..end_index]

      odd_numbered_substring_count += 1 if substring.to_i.odd?
    end
  end

  odd_numbered_substring_count
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
