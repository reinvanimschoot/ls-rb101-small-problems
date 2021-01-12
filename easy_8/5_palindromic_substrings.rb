=begin

Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards as it does backwards.
The return value should be arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is,
"AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters
are not palindromes.

Examples:

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

=end

def palindromes(string)
  string_size = string.length
  palindromes = []

  string_size.times do |start_index|
    substring = string[start_index..-1]
    substring_size = substring.length

    substring_size.times do |end_index|
      if substring[0..end_index].length > 1 && substring[0..end_index] == substring[0..end_index].reverse
        palindromes << substring[0..end_index]
      end
    end
  end

  palindromes
end

puts palindromes("abcd") == []
puts palindromes("madam") == ["madam", "ada"]
puts palindromes("hello-madam-did-madam-goodbye") == [
  "ll", "-madam-", "-madam-did-madam-", "madam", "madam-did-madam", "ada",
  "adam-did-mada", "dam-did-mad", "am-did-ma", "m-did-m", "-did-", "did",
  "-madam-", "madam", "ada", "oo",
]
puts palindromes("knitting cassettes") == [
  "nittin", "itti", "tt", "ss", "settes", "ette", "tt",
]
