# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Riley Kenyon]

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input? array (list)
# What is the output? array (list) with the most frequent values
# What are the steps needed to solve the problem?

=begin
=> Pseudocode

create a new container to keep track of how many times an object appears
go through the input list 
  IF object exist, add one to the object's counts (number of times it appears)
  IF object doesn't exist, create a new object on the new container and set count to one
determine what is the highest count
go through new container and output the objects with highest count

=end

# 1. Initial Solution

def mode(list)
  my_hash = {}
  list.each do |item| 
    if my_hash[item]
      my_hash[item] += 1
    else
      my_hash[item] = 1
    end
  end
  max_count = my_hash.values.max
  my_hash.select { |key, value| value == max_count }.keys
end

# 3. Refactored Solution

def mode(list)
  my_hash = Hash.new(0)
  list.each { |item| my_hash[item] += 1 }
  my_hash.select { |key, value| value == my_hash.values.max }.keys
end

# 4. Reflection

=begin

1. Which data structure did you and your pair decide to implement and why?

We decided to go with a hash because it's simpler to keep a count and access the count later.
If we used an array, we'll have to constantly loop through the arrays and the sub-arrays 
in order to find the object we want and access it. It just felt much simpler having a 
hash to keep track of our keys and using the values to keep track of how many times an object appeared. 

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

Yes, I had success breaking down this problem and the last problem. During this problem, I did 
have to think about how I should describe my hash values will keep track of the counts. 

3. What issues/successes did you run into when translating your pseudocode to code?

I didn't have any issues translating pseudocode to code. I think the tricky part was Ruby has many 
ways to do the same or smiliar things and my initial thoughts were not very efficient. 

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? 
Were they difficult to implement?

At first I was thinking of using the each method on the hash, find the highest count, sort the hash's values in descending 
order and then using each again to output all values equal to the highest count. My pair showed me the max and select 
methods which cut down on our codes tremendously while doing what we wanted. I don't think it was difficult to 
implement it once we know the method name because there are only so many ways to access a hash's keys and values. 

=end