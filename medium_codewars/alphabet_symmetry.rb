=begin
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b
are also in positions 1 and 2.
Notice also that d and e in "abode" occupy the positions
they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word.
For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

Problem:

Input: An array of words, consisting of uppercase and lowercase letters, not spaces or punctuation.
Output: An array of integers

Given the array of words, for each of those words, we want to check what letters in that word have the same position 
as they have in the alphabet.

Example:

In the word "abide" the positions of "a" and "b" are 1 and 2, just as they are in the alphabet.
"i" has the position of 3 but in the alphabet, i has a different position.
"d" and "e" have the position 4 and 5 in the word and they also do in the alphabet.

So given the word, "abide", 4 of the 5 letters are in the same position as they are in the alphabet.

Datastructures:
  alphabet: a string of all the letters in the alphabet in the correct order.
  symmetry_counts: array

Algorithm:
  We want to loop over the different words in the word array.
  
  We keep track of the alphabet_symmmetry_count for each word.

  For each word, we want to loop over the characters and their index.
    If the index of the character equals the index of the character in our alphabet string,
    we increment the alphabet_symmmetry_count by 1.
  
  We then add the alphabet_symmmetry_count to the array of symmetry counts.


  We return the alphabet_symmetry_count array
=end

def solve(words)
  words.map do |word|
    alphabet_symmetries_for_word(word)
  end
end

def alphabet_symmetries_for_word(word)
  alphabet_symmetries = 0

  word.chars.each_with_index do |character, index|
    alphabet_symmetries += 1 if alphabet_symmetry?(character, index)
  end

  alphabet_symmetries
end

def alphabet_symmetry?(character, index)
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  index == alphabet.index(character.downcase)
end

p solve(["abode", "ABc", "xyzD"]) == [4, 3, 1]
p solve(["abide", "ABc", "xyz"]) == [4, 3, 0]
p solve(["IAMDEFANDJKL", "thedefgh", "xyzDEFghijabc"]) == [6, 5, 7]
p solve(["encode", "abc", "xyzD", "ABmD"]) == [1, 3, 1, 3]
