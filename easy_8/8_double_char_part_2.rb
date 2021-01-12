=begin

Write a method that takes a string, and returns a new string in which every consonant character is doubled.
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

=end

CONSONANTS = %w[b c d f g h j k l m n p q r s t v w x y z].freeze

def double_consonants(string)
  doubled_chars = string.chars.map do |char|
    consonant?(char) ? char * 2 : char
  end

  doubled_chars.join
end

def consonant?(char)
  CONSONANTS.include?(char.downcase)
end

puts double_consonants("String") == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants("") == ""
