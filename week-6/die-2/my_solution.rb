# Die Class 2: Arbitrary Symbols

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings (list of objects)
# Output: string (object)
# Steps:

=begin

create Die class
  START initialize with the input list
    raise error if input list is empty
    create new container to save the list
    create new object to save the number of objects on the list
  END initialize

  START sides method
    output how many objects are on the list
  End sides

  START roll method
    randomly choose an object from the new container
  END roll
END class

=end

# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("The dice should have at least one side") if labels.empty?
    @labels = labels
    @sides = labels.count
  end
  
  def sides
    @sides
  end

  def roll
    @labels[rand(@sides)]
  end
end

# Refactored Solution

class Die
  attr_reader :sides 
  def initialize(labels)
    raise ArgumentError.new("The dice should have at least one side") if labels.empty?
    @labels = labels   
    @sides = labels.count
  end

  def roll
    @labels[rand(@sides)]
  end
end

# Reflection

=begin

1. What were the main differences between this die class and the last one you created in terms of implementation? 
Did you need to change much logic to get this to work?

The difference is we have to save the input array to an instance variable so we 
could randomly output a string from it later and we have to save the count or 
length (sides) of the input array too. No, the logic was pretty straight-forward. 
Instead of outputting a random number from 1 to the number of sides, the new solutions 
randomly output the elements of the array's index. 

2. What does this exercise teach you about making code that is easily changeable or modifiable? 

I think the challenge is teaching us to make multiple methods that do small things.  
This way we can reuse the methods or make small changes to modify different user stories 
and requirements. 

3. What new methods did you learn when working on this challenge, if any?

I didn't learn any new method working on this challenge. I did use the empty? 
method here and not last week but I already knew this method existed prior to 
this challenge. 

4. What concepts about classes were you able to solidify in this challenge?

I didn't use classes in the past but I can see how useful classes can be. It's a 
great way to organize code and keep instance variables where they belong. 

=end