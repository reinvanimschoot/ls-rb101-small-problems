=begin

Given 2 strings, your job is to find out if there is a substring
that appears in both strings. You will return true if you find a 
substring that appears in both strings, or false if you do not.
We only care about the substrings that are longer than one letter.

Input: are two strings, they can be uppercase or lowercase or could be empty
Output: a boolean

Problem: 
  We want to compare the two strings and see if there is a substring that can be found
  in both strings.

  This substring needs to be longer than one character. "rein" and "nier" would produce false
  This substring is case insensitive. "REIN" and "rein" would produce true

  Datastructures:
    substrings_for_string_one: list of substrings for the first string
    substrings_for_string_two: list of substrings for the second string

  
Algorithm:
  We create a list of substrings for both strings (SUBPROCESS) that are at least 2 characters long.
  If a substring is to be found in both lists, we return true, else we return false

  Creating a list of substring of at least 2 letters:
    We have an outer loop that iterates over the string and provides a starting index as argument.
      We have an inner loop that iterates over the string and provides an ending index as argument.
        We use the provided starting index and ending index to create a substring and pass it to the list of substrings for this string.


=end

def substring_test(string_one, string_two)
  substrings_for_string_one = substrings(string_one)
  substrings_for_string_two = substrings(string_two)

  substrings_for_both_strings = substrings_for_string_one.intersection(substrings_for_string_two)

  substrings_for_both_strings.any?
end

def substrings(string)
  substrings = []

  (0...string.length).each do |start_index|
    (start_index...string.length).each do |end_index|
      substring = string[start_index..end_index].downcase
      substring.length < 2 ? next : substrings << substring
    end
  end

  substrings
end

p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana") == true
p substring_test("1234567", "541265") == true
