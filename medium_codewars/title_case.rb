=begin
A string is considered to be in title case if each word in the string is either
(a) capitalised (that is, only the first letter of the word is in upper case)
or (b) considered to be an exception and put entirely into
lower case unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case,
given an optional list of exceptions (minor words).

The list of minor words will be given as a string with each word separated by a space. Your function should ignore the
case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

Input: a string and an array of words
Output: a string

The problem: We are given a string and we want to return that string in title case.
This means that we want to make sure that each word's first character is uppercased and all subsequent characters are lowercased.

However, we are also passed a list of words that act as exceptions to this rule. If a word in out input string is 
found in the exceptions list, it can remain lowercased.

Datastructure:
  words = array
  exceptions = array
  titlecased_words = array

Algorithm:
 - we create a lowercased version of the input string
 - words: we create a list of the words of the input string divided by spaces
 - exceptions: we create a list of the words of the exceptions string divided spaces

 - we then iterate over the words array and pass the word as argument
    if the current iterated word is found in the exceptions list, we store the word in the titlecased_words array as is,
    if it is not, we uppercase the first letter of the word and store it in titlecased_words array

we then create a string from our titlecased_words and return it.

=end

def title_case(string, minor_words = "")
  words = string.split.map(&:downcase)
  exceptions = minor_words.split.map(&:downcase)

  titlecased_words = words.map.with_index do |word, index|
    if exceptions.include?(word) && !index.zero?
      word
    else
      word[0].upcase + word[1..-1]
    end
  end

  titlecased_words.join(" ")
end

p title_case("a clash of KINGS", "a an the of") == "A Clash of Kings"
p title_case("THE WIND IN THE WILLOWS", "The In") == "The Wind in the Willows"
p title_case("the quick brown fox") == "The Quick Brown Fox"
