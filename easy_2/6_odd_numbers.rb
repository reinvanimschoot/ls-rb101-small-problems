=begin

Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

=end

(1..99).step(2) { |number| puts number }
