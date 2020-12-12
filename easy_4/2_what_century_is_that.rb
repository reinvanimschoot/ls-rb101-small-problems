=begin

Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

=end

def century(year)
  century = year / 100
  years_passed_in_century = year % 100

  century += 1 if years_passed_in_century.positive?

  century_digits = century.digits

  century_ones_digit = century_digits[0]
  century_tens_digit = century_digits[1]

  suffix = if century_ones_digit == 1 && century_tens_digit != 1
      "st"
    elsif century_ones_digit == 2 && century_tens_digit != 1
      "nd"
    elsif century_ones_digit == 3 && century_tens_digit != 1
      "rd"
    else
      "th"
    end

  "#{century}#{suffix}"
end

puts century(2000) == "20th"
puts century(2001) == "21st"
puts century(1965) == "20th"
puts century(256) == "3rd"
puts century(5) == "1st"
puts century(10_103) == "102nd"
puts century(1052) == "11th"
puts century(1127) == "12th"
puts century(11_201) == "113th"
