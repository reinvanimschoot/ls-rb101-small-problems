=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
  
the returned string should only contain lowercase letters

Input: string
Output: string

Problem:
  - We are given an input string
  - This string is formatted in camelcase
  - Write a method that takes in the camelcased input string and return a new string
  - this new string should be in kebab-case

Examples:
  "fooBar" => "foo-bar"
  "IAmACamelCasedString" => "i-am-a-camel-cased-string"
  "" => ""
  "word" => "word"
  "ThisIs2Words" => "this-is-words"

datastructures:
  - kebab_cased_string = ""
  - characters = []


Algorithm:

- Initialize a local variable and assign it an array of the characters of the input string
- Initialize a local variable assigned to a blank string (kebab_cased_string)
- Iterate over the characters of characters array
- For each iteration, check if the case of the character is upper or lower or an integer
  * If it is upper cased, we append the lowercased version of the character to the kebab_cased_string, 
    prepended by a dash, eg: "A" => "-a",
  * if it is lower cased, we append the character as it is to the kebab_cased_string
  * if it is an integer, we continue
- Once we are done iterating, we return the kebab_cased_string

How do we check if a character is uppercased?
- We convert the character to uppercase and compare it to the original character
  - if it is the same, we know its an uppercased character
  - if not, we know that the character is lowercased

How do we check if a character is an integer value?
- We convert the character to an integer and back to a string and compare it to the original character
  - if it is the same, the character is an integer
  - if not, the character is not an integer

=end

def kebabize(camel_cased_string)
  characters = camel_cased_string.chars

  kebab_cased_string = ""

  characters.each_with_index do |character, index|
    next if integer?(character)

    if uppercase?(character)
      kebab_cased_string << (index.zero? ? character.downcase : "-#{character.downcase}")
    else
      kebab_cased_string << character
    end
  end

  kebab_cased_string
end

def integer?(character)
  character.to_i.to_s == character
end

def uppercase?(character)
  character.upcase == character
end

p kebabize("myCamelCasedString") == "my-camel-cased-string"
p kebabize("myCamelHas3Humps") == "my-camel-has-humps"
p kebabize("fooBar") == "foo-bar"
p kebabize("IAmACamelCasedString") == "i-am-a-camel-cased-string"
p kebabize("") == ""
p kebabize("word") == "word"
p kebabize("ThisIs2Words") == "this-is-words"
