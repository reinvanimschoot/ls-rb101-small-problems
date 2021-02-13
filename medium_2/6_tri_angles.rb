=begin

A triangle is classified as follows:

    right One angle of the triangle is a right angle (90 degrees)
    acute All 3 angles of the triangle are less than 90 degrees
    obtuse One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0:
if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or
:invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors.
You may also assume that the arguments are specified in degrees.

Examples:

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

Input: 3 Integer objects representing the different angles of a triangle
Output: One of the following symbols: :acute, :right, :obtuse, :invalid, depending on the type of triangle

Datastructure:
  angles = array of the three different angles

Algorithm:
  First, we want to make sure we are dealing with a valid triangle
  - if one of the angles we get passed in is 0
    return :invalid
  - if the sum of the angles we get passed in is NOT 180 degrees
    return :invalid

  If we are dealing with a valid triangle, we can check the type
    - if one of the angles is 90 degrees
      return :right
    - if all angles are less than 90 degrees
      return :acute
    - if one of the angles is greater than 90 degrees
      return :obtuse
=end

def triangle(angle_one, angle_two, angle_three)
  angles = [angle_one, angle_two, angle_three]

  return :invalid unless valid_triangle?(angles)

  triangle_type(angles)
end

def valid_triangle?(angles)
  return false if angles.include?(0) || angles.sum != 180

  true
end

def triangle_type(angles)
  if angles.include?(90)
    :right
  elsif angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
