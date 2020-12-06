=begin

Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

=end

puts "What is the bill?"
bill_amount = gets.to_f

puts "What is the tip percentage?"
tip_percentage = gets.to_f

tip_amount = ((bill_amount * tip_percentage) / 100).round(2)
total_amount = (tip_amount + bill_amount).round(2)

puts "The tip is $#{tip_amount}"
puts "The total is $#{total_amount}"
