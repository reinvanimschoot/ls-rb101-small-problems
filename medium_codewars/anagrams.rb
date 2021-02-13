=begin

What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false

Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and
an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

Input: a word (lowercase? spaces? punctuation?) and a list of other words
Output: a subset of the input list that are anagrams of the provided word

Problem:
  Find the anagrams of the given word in the list of provided words.
  Two words are anagrams if they both contain the same letters and the same amount of letters,
  in other words, its just the same letters in a different order.

Examples:
  'abba' & 'baab' == true
  'abba' & 'bbaa' == true
  'abba' & 'abbba' == false
  'abba' & 'abca' == false

Datastructure:
anagrams = array


Algorithm:

We can iterate over the array of given words and compare the sorted version of the currently
iterated word with the sorted version of the input word.

If it is the same, we add to our anagrams array
If not, we continue

We return the anagrams array

=end

def anagrams(input, words)
  words.select do |word|
    word.chars.sort == input.chars.sort
  end
end

p anagrams("abba", ["aabb", "abcd", "bbaa", "dada"]) == ["aabb", "bbaa"]
p anagrams("racer", ["crazer", "carer", "racar", "caers", "racer"]) == ["carer", "racer"]
p anagrams("laser", ["lazing", "lazy", "lacer"]) == []
