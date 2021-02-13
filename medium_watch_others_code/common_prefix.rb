=begin

Write a method to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

Example 1:

Input: ["flower", "flow", "flight"]
Output: "fl"

Example 2:

Input: ["dog", "racecar", "car"]
Output: ""

You may assume that all given inputs are in lowercase letters a-z.

Input: an array of lowercase strings
Output: a string being the common prefix OR an empty string if no common prefix is found

We want to check all the different strings to see whether or not they have a common prefix.
If they dont, we immediately return an empty string. 
If they do, we check how long that common prefix is, and return the prefix.

Datastructures:
  - array of strings
  - shortest_string: shortest string in the array
  - common_prefix = string

Algorithm
  We take the shortest string in the array and store it

  Outer loop: We take the stored shortest string and iterate over the characters and index
    Inner loop: We iterate over the strings inside of the array

    We check the character at the provided index from the outer loop for our current iterated string
      If the character at this index is the same as the character we are iterating over in the outer loop,
        we add it to the common prefix
      If not, 
        we break out of the loop
=end

def common_prefix(strings)
  common_prefix = ""

  shortest_string = strings.min_by(&:length)

  shortest_string.chars.each_with_index do |character, index|
    common_prefix << character if strings.all? { |string| string[index] == character }
  end

  common_prefix
end

puts common_prefix(["flower", "flow", "flight"]) == "fl"
puts common_prefix(["lower", "low", "gra"]) == ""
puts common_prefix(["grade", "grade", "grade"]) == "grade"
puts common_prefix(["possible"]) == "possible"
puts common_prefix(["dog", "racecar", "car"]) == ""
