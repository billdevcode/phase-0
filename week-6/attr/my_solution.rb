#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  def initialize
    @name = "Bill"
  end
end


class Greetings
  def initialize
   @bill = NameData.new
  end
  
  def hello
    puts "Hello #{@bill.name}! How wonderful to see you today."
  end
end



# Reflection

=begin

Release 1:
1. What are these methods doing?

- initialize method creates a default profile with 3 instance variables: @age, @name and @occupation
- print_info method prints the 3 instance variables to the console
- what_is_age method returns @age
- change_my_age= method updates @age with a new age
- what_is_name method returns @name
- change_my_name= method updates @name with a new name
- what_is_occupation method returns @occupation
- change_my_occupation= method updates @occupation with a new occupation

2. How are they modifying or returning the value of instance variables?

They are using methods as setters and getters to save and retrieve profile information when called.


Release 2:
1. What changed between the last release and this release?

The actual codes are shorter and from a output point of view, nothing has changed. 

2. What was replaced?

what_is_age method has been commented out and replaced by attr_reader :age

3. Is this code simpler than the last?

Yes, it is simpler than the last while maintaining the same output. 

Release 3:

1. What changed between the last release and this release?

The actual codes are even shorter and from a output point of view, nothing has changed. 

2. What was replaced?

change_my_age= method has been commented out and replaced by attr_writer :age

3. Is this code simpler than the last?

Yes, it is simpler than the last while maintaining the same output. 

=end