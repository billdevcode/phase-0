# Leap Years

# I worked on this challenge [with: David Walden].

# Your Solution Belows

=begin

input: number
output: boolean

=> pseudocode

IF year is divisible by 400
  return true
IF year is divisible by 4 but not 100 
  return true
Everything else 
  return false

=end

def leap_year?(year)

  if (year % 400 == 0)
    true
  elsif (year % 100 != 0 && year % 4 == 0)
    true
  else
    false
  end
end