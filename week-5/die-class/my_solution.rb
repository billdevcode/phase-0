# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: integer
# Output: a dice with sides equal to the inputted integer
# Steps: 
# create dice with sides equal to the inputted integer
# save the number of sides for later use
# when generating a random roll, add 1

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("The dice should have at least one side") if sides < 1 
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end

# 3. Refactored Solution

class Die
  attr_reader :sides
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("The dice should have at least one side") if sides < 1 
  end

  def roll
    rand(@sides) + 1
  end
end

# 4. Reflection

=begin

1. What is an ArgumentError and why would you use one?

An ArgumentError is an error that shows up when the arguments are wrong and there 
isnt' a more specific exception class. We would use it when we need a more specific 
error message to show up when an user passes an argument we considered as wrong. 

2. What new Ruby methods did you implement? What challenges and successes did you 
have in implementing them?

I created instance variables (sides and roll). The codes worked on the first try and I 
was able to refactor the sides method by replacing it with the attr_reader method.

3. What is a Ruby class?

A Ruby class is an object and it's defined, for example "class Ticket". Once 
a Ruby class is created, we can make class or instance methods which can be used 
by the defined class (class methods) or instances (instance methods) of the 
defined class. An example of creating an instance of a class is "ticket = Ticket.new".

4. Why would you use a Ruby class?

We use a Ruby class so we could create and use a collection of methods on all instances 
of the class instead of defining methods again and again.

5. What is the difference between a local variable and an instance variable?

An instance variable only works for an object created from a Ruby class while a local 
variable doesn't have this limitations but a local variable only works within 
the scope of where we defined it. Also, instance variables start with @. 

6. Where can an instance variable be used?

An instance variables can be used by other methods within the class it was 
initialized in. 

=end