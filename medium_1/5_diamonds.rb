=begin

Write a method that displays a 4-pointed diamond in an n x n grid,
where n is an odd integer that is supplied as an argument to the method.
You may assume that the argument will always be an odd integer.

Examples

diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

Input: n: integer (width of the diamond)
Output: a printed diamond with a width of n

Datastructure: strings

We want to iterate from 1 to width n in odd intervals, (ex. 1, 3, 5, ...)
 We interval (aka the current width of the diamond) from the max width (n) and divide it by 2,
 that is how much whitespace we need to add.
 We then print the combination of the calculated whitespace and the width of the diamond in *'s.
 
 When we reached the max width and printed it out, we do another iteration, starting from the max width - 2, downto 1.
   We interval (aka the current width of the diamond) from the max width (n) and divide it by 2,
    that is how much whitespace we need to add.
    We then print the combination of the calculated whitespace and the width of the diamond in *'s.


=end

def diamond(width)
  1.step(by: 2, to: width) { |current_width| print_diamond_line(current_width, width) }

  (width - 2).step(by: -2, to: 1) { |current_width| print_diamond_line(current_width, width) }
end

def print_diamond_line(current_width, max_width)
  whitespace = (max_width - current_width) / 2

  line = " " * whitespace + "*" * current_width

  puts line
end

diamond(9)
