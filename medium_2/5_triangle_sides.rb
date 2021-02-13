=begin

A triangle is classified as follows:

    equilateral All 3 sides are of equal length
    isosceles 2 sides are of equal length, while the 3rd is different
    scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest
side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is
invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral,
:isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Examples:

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

input: 3 integers representing the different sides of a triangle
output: one of the following symbols: :equilateral, :isosceles, :scalene OR :invalid.

Datastructure:
  sides = array of containg the three sides (being integer objects)

Algorithm
  First, we want to make sure the triangle is a valid triangle!
  - if one of the provided sides is 0?
    return :invalid
  - if the sum of the two shortest sides is less than the length of the longest
    return :invalid

  if the triangle is valid, we check, what kind of triangle it is

  - if all 3 sides are equal
    return :equilateral

  - if 2 sides are equal
    return :isosceles

  - if all sides are different
    return :scalene

=end

def triangle(side_1, side_2, side_3)
  sides = [side_1, side_2, side_3]

  return :invalid unless valid_triangle?(sides)

  triangle_type(sides)
end

def valid_triangle?(sides)
  return false if sides.sort.any?(&:zero?) || (sides[0] + sides[1]) < sides[2]

  true
end

def triangle_type(sides)
  different_sides = sides.uniq

  case different_sides.length
  when 3 then :scalene
  when 2 then :isosceles
  when 1 then :equilateral
  end
end

puts triangle(0, 3, 3) == :invalid
puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
