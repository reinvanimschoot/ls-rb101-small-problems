=begin

Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

Example:

square(5) == 25
square(-8) == 64

=end

def multiply(first_number, second_number)
  first_number * second_number
end

def square(number)
  multiply(number, number)
end
