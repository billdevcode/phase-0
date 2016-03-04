# Calculate a Grade

# I worked on this challenge [with: David Walden].

# Your Solution Below

=begin

input: integer
output: string

IF provided integer is between 90 to 100 
  grade is A so return "A"
IF provided integer is between 80 to 89
  grade is B so return "B"
IF provided integer is between 70 to 79
  grade is C so return "C"
IF provided integer is between 60 to 69
  grade is D so return "D"
IF provided integer is under 60
  grade is F so return "F"

=end

def get_grade(num)
  case num
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
    when 0..59 then "F"
  end
end