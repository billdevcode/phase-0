# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

=begin

input:3 arguments (array (list), integer, integer)
output: integer
=>psuedocode

create a new empty list
go through the provided list
  if a number is between the 2 provided integers (including the integers)
    copy it to the empty list
return the length of the originally empty list, now filled with numbers between the 2 provided integers 

=end

def count_between(list_of_integers, lower_bound, upper_bound)
  new_array = []
  
  list_of_integers.each do |num|
    if num >= lower_bound && num <= upper_bound
      new_array.push(num)
    end
  end
  new_array.length
end