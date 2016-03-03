# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin

input: array (list)
output: integer
=> pseudocode 

create a variable and set it to the first number of the list
go through the list
  if any number is larger than the variable 
    set the variable to that new number
return the variable at the end

=end

def largest_integer(list_of_nums)
  integer = list_of_nums[0]
  
  list_of_nums.each do |num|
    if num > integer 
      integer = num
    end
  end
  integer
end