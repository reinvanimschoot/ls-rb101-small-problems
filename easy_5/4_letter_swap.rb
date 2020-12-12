=begin

Given a string of words separated by spaces, write a method that takes 
this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

Examples:

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

=end

def swap(string)
  words = string.split(" ")

  words_with_swapped_letters = words.map do |word|
    first_letter = word[0]
    last_letter = word[-1]

    word[0] = last_letter
    word[-1] = first_letter

    word
  end

  words_with_swapped_letters.join(" ")
end

puts swap("Oh what a wonderful day it is") == "hO thaw a londerfuw yad ti si"
puts swap("Abcde") == "ebcdA"
puts swap("a") == "a"
