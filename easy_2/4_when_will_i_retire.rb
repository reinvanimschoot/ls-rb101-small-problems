=begin

Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

=end

require "date"

puts "What is your age?"
current_age_in_years = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age_in_years = gets.chomp.to_i

years_to_work = retirement_age_in_years - current_age_in_years
current_year = Date.today.year

retirement_year = current_year + years_to_work

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_work} years of work to go!"
