require "date"

=begin

Write a method that returns the number of Friday the 13ths in the year given by an argument.
You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar)
and that it will remain in use for the foreseeable future.

Examples:

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

Input: a year, greater than 1752
output: the amount of friday the 13ths in the provided year

Datastructures:
  friday_13th_counter: count of all the friday 13ths in a year

Algorithm:
  - We start at jan 1 of the provided year and iterate over all the days in the provided year, upto december 31st.
    if the days we iterate over is a friday and the date is 13, increment the counter by 1

  return the counter

=end

def friday_13th(year)
  friday_13th_counter = 0

  jan_1st = Date.new(year)
  dec_31st = Date.new(year, 12, 31)

  jan_1st.upto(dec_31st) do |date|
    friday_13th_counter += 1 if date.day == 13 && date.friday?
  end

  friday_13th_counter
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
