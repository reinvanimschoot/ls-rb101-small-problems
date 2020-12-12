=begin

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
If one or more non-alphabetic characters occur in a row, you should only have one space in the result
(the result should never have consecutive spaces).

Examples:

cleanup("---what's my +*& line?") == ' what s my line '

=end

LOWERCASE_CHARS = ("a".."z")

def cleanup(dirty_string)
  new_string = ""

  dirty_string.each_char do |char|
    if LOWERCASE_CHARS.cover?(char)
      new_string << char
    else
      new_string << " " unless new_string.last == " "
    end
  end

  new_string
end

puts cleanup("---what's my +*& line?") == " what s my line "
