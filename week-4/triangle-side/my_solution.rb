# I worked on this challenge [with: David Walden].

# Your Solution Below

=begin

input: 3 integers
output: boolean
=> pseudocode

Arrange the provided sides into ascending order 
IF the sum of the first and second sides are greater than the third side
  it's a triangle so return true
IF not then
  it's not a triangle so return false

=end

def valid_triangle?(side1, side2, side3)

  triangle_sides = [side1, side2, side3].sort
  triangle_sides[0] + triangle_sides[1] > triangle_sides[2] 
end