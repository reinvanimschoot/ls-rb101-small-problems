=begin

Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io.
The longest of these has a length of 2. Given a lowercase string that has alphabetic
characters only and no spaces, return the length of the longest vowel substring.
Vowels are any of aeiou.

Input: string with only lowercase, alphabetic characters and no spaces.
Output: integer, the longest substring that only consists of vowels

Problem:
Given a string, we want to check the length of the longest possible substring that only
consists of subsequent vowels and no consonants.

Examples:
  "aeiou" this would return 5 since its all vowels
  "vvvghjk" this would return 0 because its all consonants
  "leviosa" this would return 2 because the longest substring of vowels is "io"

Datastructes:
  vowels = list of vowels
  longest_vowel_substring_length = integer
  substrings = array

Algorithm:
  SUBPROCESS: We want to have a list of all possible substrings for the given input string.
  
  SUBPROCESS: For each of those substrings, we want to check if that substring only consists of vowels,
    if that is not the case, we continue

    if it is the case, we want to compare the substrings length to the currently stored longest_vowel_substring_length.
      if it is longer, we replace the currently stored longest_vowel_substring_length with the current substring's length.
      if it is not longer, we continue

  after this loop, we return the longest_vowel_substring_length

  SUBPROCESS: list of substrings:
    we create an outer loop where we iterate over the indices of the length of the given input string and pass the current index as start_index
        We then create an inner loop where we iterate over a ranger that starts with the current start_index and ends with the length of the string - 1, we pass the current index as end_index.
          Inside, we take the substring limited by the current start_index and end_index and add it to the substrings array.

  SUBPROCESS: check if a substring only consists of vowels
    we take the substrings characters and check if each character is found in the list of vowels.
        If so, we return true,
        if not, we return false.
=end

def solve(string)
  longest_vowel_substring_length = 0

  substrings = substrings(string)

  substrings.each do |substring|
    if vowel_string?(substring) && substring.length > longest_vowel_substring_length
      longest_vowel_substring_length = substring.length
    end
  end

  longest_vowel_substring_length
end

def substrings(string)
  substrings = []

  (0...string.length).each do |start_index|
    (start_index...string.length).each do |end_index|
      substrings << string[start_index..end_index]
    end
  end

  substrings
end

def vowel_string?(string)
  vowels = "aeiou"

  string.chars.all? { |character| vowels.include?(character) }
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
