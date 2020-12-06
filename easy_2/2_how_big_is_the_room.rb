=begin

Build a program that asks a user for the length and width of a room in meters and 
then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

=end

SQUARE_METERS_TO_SQUARE_FEET = 10.7639

puts "Enter the length of the room in meters:"
room_length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
room_width = gets.chomp.to_f

room_area_in_square_ms = room_length * room_width
room_area_in_square_ft = room_area_in_square_ms * SQUARE_METERS_TO_SQUARE_FEET

puts "The area of the room is #{room_area_in_square_ms} square meters (#{room_area_in_square_ft} square feet)."
