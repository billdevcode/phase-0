# Leap Years

# I worked on this challenge [with: David Walden].

# Your Solution Belows

=begin

input: number
output: boolean

=> pseudocode

IF year is divisible by 400 and 100 
  return true
IF year is divisible by 4 but not 100 
  return true
Everything else 
  return false

=end

def leap_year?(year)

  if (year % 100 == 0 && year % 400 == 0)
    p true
  elsif (year % 100 != 0 && year % 4 == 0)
    p true
  else
    p false
  end
end