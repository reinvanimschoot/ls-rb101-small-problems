=begin

Write a method that takes a sentence string as input, and returns the same string with any sequence of the words
'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=end

SPELLED_OUT_NUMBERS_TO_DIGITS = { "zero" => "0", "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9" }.freeze

def word_to_digit(string)
  words = string.split

  words_with_converted_numbers = words.map do |word|
    converted_word = word
    SPELLED_OUT_NUMBERS_TO_DIGITS.each_pair do |key, value|
      converted_word = word.gsub(key, value) if word.start_with?(key)
    end

    converted_word
  end

  words_with_converted_numbers.join(" ")
end

puts word_to_digit("Please call me at five five five one two three four. Thanks.") == "Please call me at 5 5 5 1 2 3 4. Thanks."
