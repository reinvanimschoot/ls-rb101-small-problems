=begin

Create a kebabize function so that it converts a camel case string into a kebab case.

  kebabize('camelsHaveThreeHumps') // camels-have-three-humps
  kebabize('camelsHave3Humps') // camels-have-humps
  Notes:
  
  the returned string should only contain lowercase letters

Input: a camel-cased string
Output: a kebab-cased string

Problem: We need to convert a camel cased string to a kebab cased string.
camel case: a string where different words are concatenated together but marked by capital letters
kebab case : a string where different words are separated by dashes and all lower case

Datastructures:
kebab_cased_string = the input string in kebab case


Algorithm:
We iterate over the chars of the input string and pass the current letter as argument.
if the current letter is a lowercased character, we append it to the kebab_cased_string
if the current letter is a uppercased character, we first append a dash and then append the character but lowercased

we then return the kebab_cased_string.
=end

def kebabize(string)
  kebab_cased_string = ""

  string.each_char do |character|
    next if number?(character)

    kebab_cased_string << kebabize_character(character)
  end

  kebab_cased_string
end

def kebabize_character(character)
  return "-#{character.downcase}" if upcased?(character)

  character
end

def upcased?(character)
  character.upcase == character
end

def number?(character)
  character.to_i.to_s == character
end

p kebabize("myCamelCasedString") == "my-camel-cased-string"
p kebabize("myCamelHas3Humps") == "my-camel-has-humps"
