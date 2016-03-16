#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

=begin

# Pseudocode

# Input: no input
# Output: string
# Steps:

START create class 
  create a name method that can output the name later
  START initialize
    create a new object to store my name
  END initialize
END class

START create class
  START initialize
    create new object that will create a new object of the above class
  END initialize

  START hello method 
    output a sentence using the above class's name method
  END hello
END class

=end

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

greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."

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

Release 6:

1. What is a reader method?

  A reader method gets an object and outputs it.

2. What is a writer method?

  A writer method accepts an argument and saves the argument to an object. 

3. What do the attr methods do for you?

  Attr methods allow us to organize and shorten our codes. Since attr methods 
  are usually on the top part of a method, we can see right away what setter and 
  getter methods are available for use. 

4. Should you always use an accessor to cover your bases? Why or why not?

  An accessor method allows reading and writing but we should only use it if we need 
  a method to read and write because if we don't need a method to write then it shouldn't.
  It could lead to difficult debugging problems and it could compromise the 
  security of our data. 

5. What is confusing to you about these methods?

  There is nothing confusing about these methods. I think these methods are very 
  useful and we will be using it often in the future. 

=end