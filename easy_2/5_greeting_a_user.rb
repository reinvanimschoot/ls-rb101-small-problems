=begin

Write a program that will ask for user's name. 
The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

Examples

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

=end

puts "What is your name?"
name_input = gets.chomp

if name_input.chars.last == "!"
  name_input = name_input.chop
  puts "HELLO #{name_input.upcase}. WHY ARE WE SCREAMING???"
else
  puts "Hello #{name_input}."
end
