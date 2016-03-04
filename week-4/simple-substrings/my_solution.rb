# Simple Substrings

# I worked on this challenge [by myself].

# Your Solution Below

=begin

input: string
output: string

Check IF provided input has "CA"  
  IF yes, return "Welcome to California"
IF provided inputs does not have "CA" then
  return "You should move to California"

=end

def welcome(address)

  if address.match("CA")
    return "Welcome to California"
  else
    return "You should move to California"  
  end
end