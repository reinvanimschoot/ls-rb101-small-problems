=begin
Write a method that takes a string as an argument and groups the number of
times each character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}

You should ignore spaces, special characters and count uppercase letters as lowercase ones.

Input: a string, can contain uppercase letters, lowercase letters, spaces and punctuation
Output: a hash

The problem:
  We are given a string and for that string we want to count the number of occurrences for each letter.
  We should then return those numbers of occurrences in a hash.

  - The keys in the hash are the occurrences and the values are arrays of characters that have that occurrence in the input string.

  - The hash should be sorted by highest to lowest occurrence
  - The arrays of letters should be sorted alphabetically
  - uppercase and lowercase letters should be considered equal
  - we do not count spaces and punctuation

Datastructure:
alphabet: array of lowercased alphabet letters
numbers: array of integer strings

occurrences: hash
lowercased_string: string
letters: array of characters


Algorithm:

- lowercased_string: We take the lowercased version of our input string
- letters: we use that lowercased_string and filter it by selecting only the characters that are found in our lower case alphabet list.

We then iterate over the letters collection and pass the letter as argument.
 For each letter we count, how many times that letter is found in our lowercased_string,
 We then check if that count is already an existing key in our occurrences hash, if it is, we add the iterated letter to its array value.
 if not, we create a new key for that occurrence and add an array with the iterated letter as value.

We then make sure the hash is sorted by occurrence
We also make sure the arrays are sorted alphabetically.

we return occurrences hash
=end

ALPHANUMERIC_CHARACTERS = "abcdefghijklmnopqrstuvwxyz1234567890"

def get_char_count(string)
  occurrences = Hash.new([])

  alphanumeric_characters = alphanumeric_characters(string)

  unique_characters = alphanumeric_characters.uniq

  unique_characters.each do |character|
    occurrence = lowercased_string.count(character)

    occurrences.key?(occurrence) ? occurrences[occurrence] << character : occurrences[occurrence] = [character]
  end

  occurrences.each_value(&:sort!)

  occurrences.sort.reverse.to_h
end

def alphanumeric_characters(string)
  lowercased_string = string.downcase

  lowercased_string.chars.select do |character|
    ALPHANUMERIC_CHARACTERS.include?(character)
  end
end

p get_char_count("Mississippi") == { 4 => ["i", "s"], 2 => ["p"], 1 => ["m"] }
p get_char_count("Hello. Hello? HELLO!!") == { 6 => ["l"], 3 => ["e", "h", "o"] }
p get_char_count("aaa...bb...c!") == { 3 => ["a"], 2 => ["b"], 1 => ["c"] }
p get_char_count("aaabbbccc") == { 3 => ["a", "b", "c"] }
p get_char_count("abc123") == { 1 => ["1", "2", "3", "a", "b", "c"] }
