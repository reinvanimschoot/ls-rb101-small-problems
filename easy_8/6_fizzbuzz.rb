=begin

Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz",
if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=end

def fizzbuzz(starting_number, ending_number)
  result = []

  starting_number.upto(ending_number) do |number|
    result << fizzbuz_single_number(number)
  end

  puts result.join(", ")
end

def fizzbuz_single_number(number)
  case true
  when divisible_by_five?(number) && divisible_by_three?(number)
    "FizzBuzz"
  when divisible_by_three?(number)
    "Fizz"
  when divisible_by_five?(number)
    "Buzz"
  else
    number
  end
end

def divisible_by_three?(number)
  (number % 3).zero?
end

def divisible_by_five?(number)
  (number % 5).zero?
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
