# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin

input: array (list)
output: integer
=> pseudocode 

create a variable and set it to the first number of the list
go through the list 
  if any number is smaller than the variable 
    set the variable to that new number
return the variable at the end

=end

def smallest_integer(list_of_nums)
  integer = list_of_nums[0]

  for i in list_of_nums do
    if integer > i
      integer = i
    end
  end
  integer
end