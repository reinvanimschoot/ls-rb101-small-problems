=begin

Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

Problem:

Input: full_text: a string, search_text: a string
Output: the number of times the search_text is found in the full_text.

Given our full_text string and search_text string, we want to check how many times, search_text
can be found in full_text. We then return that amount.

- is the substring count case insensitive?
- can it contain spaces?

Datastructures:
 substrings_array: list of all possible substrings in full_text


Algorithm:

we want to get a list of all possible substrings for full_text (subprocess)

Given the list of substrings, we count the ones that are equal to search_text

We then return that count
  
SUBPROCESS: Getting the list of substrings
  We take the length of the full_text string and loop over it, starting from 0 to length - 1.
  This will provide us with a start_index
    We then have an inner loop where we take the start_index as starting point and the full_text_string length -1 as end point.
    This will provide us with a end_index
      We then take the substring of full_text for the limited by the current start and end indices and add it to the substrings array.


=end

def solution(full_text, search_text)
  substrings = []

  (0...full_text.length).each do |start_index|
    (start_index...full_text.length).each do |end_index|
      substrings << full_text[start_index..end_index]
    end
  end

  substrings.count(search_text)
end

p solution("abcdeb", "b") == 2
p solution("abcdeb", "a") == 1
p solution("abbc", "bb") == 1
