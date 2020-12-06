=begin

Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

=end

def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0.")
number = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
computation = gets.chomp

range = (1..number).to_a

if computation == "s"
  sum = range.reduce { |number, sum| number + sum }
  prompt("The sum of the integers between 1 and #{number} is #{sum}.")
else
  multiplication = range.reduce { |number, sum| number * sum }
  prompt("The product of the integers between 1 and #{number} is #{multiplication}.")
end
