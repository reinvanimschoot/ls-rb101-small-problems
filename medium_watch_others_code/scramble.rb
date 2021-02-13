=begin 

Write a method that takes two strings and returns true if a portion of string 1
can be rearranged to match string 2, otherwise return false.

For example,

str 1 is 'rkqodlw' and str 2 is 'world', the output should return true.
str 1 is "cedewaraaossoqqut" and str2 is 'codewars', the output is true.
str 1 is 'katas' and str 2 is 'steak' should return false.

You may assume that the strings are lowercase without punctuation or digits.

The problem:
 Can we use a portion of string 1, reordered if needed, to match the entirety of string 2.
 Both strings will be lowercase, without punctuation or digits.

data_structures
  - used_characters = array of characters that are found in string 1 AND 2.
  - characters = list of characters of string 2

Algorithm:

We iterate over the characters in the second string,
  For each passed character, we check whether or not it is to be found in string 1
    It is found,
      we check whether or not the character is in the used values array
        if it isnt
          We store it in the used values array
        if it is, we check the count of the character in string 1, which should be less than the count of the character of used_values
          if it is
            we store it in the used values array
          else
            return false
    we store that character in the used characters list
    If not, we can return false

=end

def scramble(string_one, string_two)
  characters = string_two.chars
  used_characters = []

  characters.each do |character|
    return false unless string_one.include?(character)

    if used_characters.include?(character) && string_one.count(character) == used_characters.count(character)
      return false
    end

    used_characters << character
  end

  true
end

p scramble("javaass", "jjss") == false
p scramble("rkqodlw", "world") == true
p scramble("cedewaraaossoqqut", "codewars") == true
p scramble("katas", "steak") == false
p scramble("scriptjava", "javascript") == true
