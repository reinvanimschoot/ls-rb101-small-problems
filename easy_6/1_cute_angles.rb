=begin

Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a
String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent
degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes,
while a minute has 60 seconds.

Examples:

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

=end

DEGREE = "\xC2\xB0".freeze

MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60

def dms(angle)
  degrees = angle.to_i
  minutes_and_seconds = ((angle - degrees) * MINUTES_IN_DEGREE).round(2)

  minutes = minutes_and_seconds.to_i
  seconds = ((minutes_and_seconds - minutes) * SECONDS_IN_MINUTE).round(2).to_i

  minutes_padded = format("%02d", minutes)
  seconds_padded = format("%02d", seconds)

  "#{degrees}#{DEGREE}#{minutes_padded}'#{seconds_padded}\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
