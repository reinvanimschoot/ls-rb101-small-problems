=begin

Write a method that takes in a string of one or more words, and returns the same string,
but with all five or more letter words reversed (Just like the name of this Kata).
Strings passed in will consist of only letters and spaces.
Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

Input: string, containing only letters and spaces
Output: string

Problem: We want to take all 5-or-more-letter words in the input string, reverse them and then return
a new string with those words reversed.

Datastructures:
  words = array

Algorithm:
  We can split the input string into an array of words, delimited by spaces.

  We can then iterate over the array of words, passing in each word as argument.
    If a word's length is longer then 5 letters, we want to reverse it. and add it to our reversed_words array
    If not, we just add the word to reversed_words

  Afterwards, we return the reversed_words array joined by spaces.
=end

def spin_words(string)
  words = string.split

  reversed_words = words.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end

  reversed_words.join(" ")
end

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test"
p spin_words("This is another test") == "This is rehtona test"
