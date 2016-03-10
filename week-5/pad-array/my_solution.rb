# Pad an Array

# I worked on this challenge [with: Lisa Dannewitz]

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# An array container, a minimum size, and an optional object

# What is the output? 
# Either the original array or a padded array

# What are the steps needed to solve the problem?

# check IF minimum size is less than or equal to container's length
#   IF yes, output the container and exit program
# END IF

# UNTIL container's length is equal to the minimum size
#   add the optional or default object to the container
# END UNTIL

# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  end
  
  until array.length == min_size do
    array.push(value)
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  if min_size <= new_array.length
    return new_array
  end
  
  until new_array.length == min_size do
    new_array.push(value)
  end
  new_array
end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  array << value while min_size > array.length
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array << value while min_size > new_array.length
  new_array
end

# 4. Reflection

=begin

1. Were you successful in breaking the problem down into small steps?

Yes, we were able to break the code into simple and easy to understand words and logic.

2. Once you had written your pseudocode, were you able to easily translate it into code? 
What difficulties and successes did you have?

Yes, our initial code looks identical to our pseudocode. But before we even started on 
our pseudocode, we arranged the requirements into a logic that made sense for us. 

3. Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?

No, our initial solutions did not pass the first rspec test. The issue we had was the 
if statement did not exit the method and it became an infinite loop but we fixed 
that by adding a return statement. 

4. When you refactored, did you find any existing methods in Ruby to clean up your code?

We looked around and we found a few methods but none of them really did what we wanted.
Some of the methods we looked at were: fill and insert, so eventually we just shortend 
our existing code. We figured out the if condition wasn't even needed. 

5. How readable is your solution? Did you and your pair choose descriptive variable names?

I think our solutions are pretty DRY, the refactored destructive solution only used the provided 
parameter variables. Meanwhile the refactored non-destructive solution just created a new 
array called new_array.

6. What is the difference between destructive and non-destructive methods in your own words?

I think destructive method means the method makes changes to the original object while 
a non-destructive method doesn't make changes to the original object. By using the push 
method, we added elements to the original array and completely changed it's contents 
and size/length. 

=end