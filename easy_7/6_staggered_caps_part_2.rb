=begin

Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should
uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value;
they just don't count when toggling the desired case.

Example:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

=end

def staggered_case(string)
  to_be_capitalized = true

  staggered_cased_chars = string.chars.map do |char|
    next char if char.swapcase == char

    cased_char = to_be_capitalized ? char.upcase : char.downcase
    to_be_capitalized = !to_be_capitalized

    cased_char
  end

  staggered_cased_chars.join
end

puts staggered_case("I Love Launch School!") == "I lOvE lAuNcH sChOoL!"
puts staggered_case("ALL CAPS") == "AlL cApS"
puts staggered_case("ignore 77 the 444 numbers") == "IgNoRe 77 ThE 444 nUmBeRs"
