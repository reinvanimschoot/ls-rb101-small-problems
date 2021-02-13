=begin
For a given nonempty string s find a minimum substring t and the maximum number k,
such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters.
Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string

s = "ababab"
the answer is

["ab", 3]
Example #2:

for string

s = "abcde"
the answer is

because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

input: a non-empty string of lowercase characters.
output: a tuple of the smallest substring of which the input string is built and the amound of times it is repeated

We are given a string and we want to find the smallest substring out of which that string is built and how many times it is repeated.

Examples: 

  "rerere" => ["re", 3]
  "rein" => ["rein", 1]

Datastructures:
  min substring = smallest substring
  repetitions = times the smallest substring is repeated

Algorithm:

- We iterate over the substrings of the given input string
  for each substring, we check if we can build the entire input string using only repetitions of the substring
    if so and the currently stored minimum substring is larger than the current substring,
        we store the current substring as new min_substring and the current repetitions as the substring_repetitions.
    if not, we continue


  How do we check if a string can be built from a substring and how many repetitions are needed.
  In increments of the length of the substring, we want to iterate over the length of the string, passing the current increment step as argument
   For each iteration, we take the increment step as starting index and the length of the substring as end index and check whether or not,
   this currently iterated part of the string matches the substring, 
   if it doesnt, we return false
    if it does, we continue
  We return true if the iteration was never broken by returning false.
=end

def f(string)
  min_substring = string
  repetitions = 1

  (0...string.length).each do |start_index|
    (start_index...string.length).each do |end_index|
      substring = string[start_index..end_index]

      next unless (string.length % substring.length).zero?

      possible_repetitions = string.length / substring.length

      string_built_with_substrings = substring * possible_repetitions

      if string_built_with_substrings == string
        min_substring = substring
        repetitions = possible_repetitions
      end
    end
  end

  [min_substring, repetitions]
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
