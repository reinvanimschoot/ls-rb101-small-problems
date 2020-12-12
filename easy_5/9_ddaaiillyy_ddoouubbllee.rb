=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all 
consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
=end

def crunch(string)
  crunched_string = ""

  string.each_char do |char|
    crunched_string << char unless crunched_string[-1] == char
  end

  crunched_string
end

puts crunch("ddaaiillyy ddoouubbllee") == "daily double"
puts crunch("4444abcabccba") == "4abcabcba"
puts crunch("ggggggggggggggg") == "g"
puts crunch("a") == "a"
puts crunch("") == ""
