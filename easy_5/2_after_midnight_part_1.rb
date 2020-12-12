=begin

The time of day can be represented as the number of minutes before or after midnight.
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, 
the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Disregard Daylight Savings and Standard Time and other complications.

=end

def time_of_day(time_in_minutes)
  hours, minutes = time_in_minutes.abs.divmod(60)

  hours = hours % 24 if hours >= 24

  if time_in_minutes.negative?
    hours = 24 - (hours + 1)
    minutes = 60 - minutes
  end

  hours_string = (hours > 10 ? "" : "0") + hours.to_s
  minutes_string = (minutes > 10 ? "" : "0") + minutes.to_s

  "#{hours_string}:#{minutes_string}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(-800) == "13:20"
puts time_of_day(-4231) == "01:29"
