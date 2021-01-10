=begin

Write a method that takes a positive integer, n, as an argument,
and displays a right triangle whose sides each have n stars.
The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left
of the triangle, and the other end at the upper-right.

Examples:

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

=end

def triangle(line_count)
  star_count = 1

  while star_count <= line_count
    stars = Array.new(star_count, "*").join

    puts stars.rjust(line_count)

    star_count += 1
  end
end

triangle(5)
triangle(9)
