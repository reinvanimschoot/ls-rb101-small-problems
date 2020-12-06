=begin

What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=end

=begin

This will print out:

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

When we pushed the values of array1 to array2, array2 is now holding a reference to the same string objects in memory as array1 does.
So when we perform a mutation on the string objects via array1 iteration, this will also reflect on the values in array2.

=end
