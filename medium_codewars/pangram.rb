=begin

A pangram is a sentence that contains every single letter of the alphabet at least once.
For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram,
because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram.
Return True if it is, False if not. Ignore numbers and punctuation.

Input: a string, can have uppercase and lowercase characters, spaces and punctuation marks.
Output: a boolean

Problem:
We want to be able to check whether or not the given input string includes all the letters of
the alphabet at least once. In other words, if it is a pangram.

If it is, we return true, if it is not, we return false.

Datastructures:
  alphabet: a reference to the alphabet
  chars = characters in the string, lowercased

Algorithm:
  we iterate over the alphabet and pass in the current letter as argument,
    we then count how many times that letter appears in the input string
    if it is 0, we return false
    if it is not, we continue

  if the iteration is finished, without returning false, we return true.
=end

def pangram?(string)
  alphabet = ("a".."z").to_a
  chars = string.chars.map(&:downcase)

  alphabet.each do |letter|
    return false if chars.count(letter).zero?
  end

  true
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false
