=begin

Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. 
Do not worry about validating the input.

Example

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

=end

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the 1st number:")
first_number = gets.to_i

prompt("Enter the 2nd number:")
second_number = gets.to_i

addition_result = first_number + second_number
prompt("#{first_number} + #{second_number} = #{addition_result}")

subtraction_result = first_number - second_number
prompt("#{first_number} - #{second_number} = #{subtraction_result}")

multiplication_result = first_number * second_number
prompt("#{first_number} * #{second_number} = #{multiplication_result}")

division_result = first_number / second_number
prompt("#{first_number} / #{second_number} = #{division_result}")

remainder_result = first_number % second_number
prompt("#{first_number} % #{second_number} = #{remainder_result}")

power_result = first_number ** second_number
prompt("#{first_number} ** #{second_number} = #{power_result}")
