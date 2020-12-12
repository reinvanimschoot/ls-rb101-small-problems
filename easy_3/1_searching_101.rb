=begin

Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

=end

def prompt(message)
  puts "==> #{message}"
end

numbers = []

prompt("Enter the 1st number:")
first_number = gets.to_i
numbers << first_number

prompt("Enter the 2nd number:")
second_number = gets.to_i
numbers << second_number

prompt("Enter the 3d number:")
third_number = gets.to_i
numbers << third_number

prompt("Enter the 4th number:")
fourth_number = gets.to_i
numbers << fourth_number

prompt("Enter the 5th number:")
fifth_number = gets.to_i
numbers << fifth_number

prompt("Enter the last number:")
last_number = gets.to_i

is_included = numbers.include?(last_number)

if is_included
  prompt("The number #{last_number} appears in #{numbers}.")
else
  prompt("The number #{last_number} does not appear in #{numbers}.")
end
