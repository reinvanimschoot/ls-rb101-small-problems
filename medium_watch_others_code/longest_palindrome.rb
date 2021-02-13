=begin

Find the length of the longest substring in the given string that is the same in reverse.

As an example, if the input was "I like racecars", the return value would be 7 (the substring would be "racecar")
If the length of the input string is 0, return value must be 0 as well.

"a" => 1
"aab" => 2
"abcde" => 1
"zzbaabcd" => 4
"" => 0

Spaces, punctuation marks, digits are allowed.

Input: string, can be empty, can include uppercase, lowercase, digits, spaces, puncutation marks.

The problem:
 We are given a string as input and we want to see what the longest substring is in that given string that is the same
 in reverse, in other words, a palyndrome. We then return the length of the substring.
 If the string is empty, we just return 0.

Datastructures:
  palyndrome_length: integer, longest found palyndrome substring

Algorithm:

We iterate over all possible substrings (SUBPROCESS)
  For each substring, we check if it is the same in reverse,
    if it is, we check the currently stored longest palyndrome length,
      if it is longer, we store the new length
      if not, we continue
    if not, we continue with the next substring

  Substrings:
      We have an outer loop that loops over the string and provides a starting index
       For each starting index, we have an inner loop, that also loops over the string and specifies the ending index,
        We then use the current starting and ending indices to take a substring of the provided string.
=end

def longest_palyndrome(string)
  string_length = string.length

  return 0 if string_length.zero?

  palyndrome_length = 1

  (0...string_length).each do |starting_index|
    (0...string_length).each do |ending_index|
      substring = string[starting_index..ending_index]

      next unless palindrome?(string)

      palyndrome_length = substring.length if palyndrome_length < substring.length
    end
  end

  palyndrome_length
end

def palindrome?(string)
  string == string.reverse
end

p longest_palyndrome("") == 0
p longest_palyndrome("a") == 1
p longest_palyndrome("aa") == 2
p longest_palyndrome("abcd") == 1
p longest_palyndrome("I like racecars") == 7
p longest_palyndrome("baabcd") == 4
p longest_palyndrome("baablkj12345432133d") == 9
