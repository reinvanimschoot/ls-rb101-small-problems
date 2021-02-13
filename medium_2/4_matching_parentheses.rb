=begin

Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced,
false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Examples:

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

Note that balanced pairs must each start with a (, not a ).

STEPS:


input: a string, can be empty?
output: boolean

The output is true if all parentheses used in the string are matching pairs, in other words,
they for every "(" that is present, one ")" should follow.

The output is false when
 - a "(" is not followed by a matching ")"
 - a ")" is not preceded by a matching "("

Datastructures:
 - unmatched_bracket_counter: integer
 - chars: array of characters of the input string

Algorithm:
  We iterate over the characters of the string
  
  For each character we check if
    - it is an opening bracket?  => We increment the unmatched_bracket_counter by 1
    - it is a closing bracket? => we decrement the unmatched_bracket_counter by 1

Afterwards, if the unmatched_bracket_counter is 0, we return true
If it is not, we return false.

=end

def balanced?(string)
  unmatched_brackets = 0

  characters = string.chars

  characters.each do |character|
    unmatched_brackets = calculate_unmatched_brackets(character, unmatched_brackets)
  end

  unmatched_brackets.zero?
end

def calculate_unmatched_brackets(character, unmatched_brackets)
  case character
  when "(" then unmatched_brackets + 1
  when ")" then unmatched_brackets.zero? ? unmatched_brackets + 1 : unmatched_brackets - 1
  else unmatched_brackets
  end
end

puts balanced?("What (is) this?") == true
puts balanced?("What is) this?") == false
puts balanced?("What (is this?") == false
puts balanced?("((What) (is this))?") == true
puts balanced?("((What)) (is this))?") == false
puts balanced?("Hey!") == true
puts balanced?(")Hey!(") == false
puts balanced?("What ((is))) up(") == false
