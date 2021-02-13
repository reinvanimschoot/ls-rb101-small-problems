=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

Input: array containing zero or more words.
Output: a string

For each word in the array, we want to take the letter that is at the same index in that word as that word is in the array.
We return the concatenation of those letters as a new word.

Datastructures:
new_word = ""

Algorithm:
We want to iterate over each word, while also having a reference to the index of that word.
We then use that index to access the letter in the word at that index and append that letter to our new_word string

After iterating over all the words, we return the new_word string

=end

def nth_char(words)
  new_word = ""

  words.each_with_index do |word, index|
    new_word << word[index]
  end

  new_word
end

p nth_char(["yoda", "best", "has"]) == "yes"
p nth_char([]) == ""
p nth_char(["X-ray"]) == "X"
p nth_char(["No", "No"]) == "No"
p nth_char(["Chad", "Morocco", "India", "Algeria", "Botswana", "Bahamas", "Ecuador", "Micronesia"]) == "Codewars"
