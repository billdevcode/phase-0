=begin
Full name greeting: Write a program that asks for a person's first name, then middle, 
then last. Finally, it should greet the person using their full name.
=end

puts "What\'s your first name?"
first_name = gets.chomp

puts "What\'s your middle name?"
middle_name = gets.chomp

puts "What\'s your last name?"
last_name = gets.chomp

puts "Hello there " + first_name.capitalize + " " + middle_name.capitalize + " " + last_name.capitalize


=begin
#Bigger, better favorite number: Write a program that asks for a person's favorite number. 
Have your program add 1 to the number, and then suggest the result as a bigger and better number.
=end

puts "What\'s your favorite number?"
favorite_number = gets.chomp
bigger_better_number = favorite_number.to_i + 1

puts "But " + bigger_better_number.to_s + " is a bigger and better number!"

=begin

--> Release 4: More small exercises! <--
4.3.1 Return a Formatted Address  https://github.com/billdevcode/phase-0/blob/master/week-4/address/my_solution.rb
4.3.2 Defining Math Methods https://github.com/billdevcode/phase-0/blob/master/week-4/math/my_solution.rb

Reflect
1. How do you define a local variable?
By using the assignment character "=" for example:
  local_variable = "This is a local variable"

2. How do you define a method?
By using the keyword "def" for example:
  def local_variable
  end

3. What is the difference between a local variable and a method?
A local variable is used to store objects, strings, numbers or just about anything else except other variables.
Meanwhile methods are the things that do stuff. Learn to Program gave an example that methods are verbs 
while objects are nouns. So methods can't do anything by itself, we need a noun to actually do what we intended to do. 

4. How do you run a ruby program from the command line?
ruby <ruby file name>

5. How do you run an RSpec file from the command line?
rspec <rspec/ruby file name>

6. What was confusing about this material? What made sense?
The only thing I was confused about is "p" because it was the first time I've seen it.
The book Learn to Program didn't use it but I saw it was used on one of the videos so I 
wasn't sure if I should be using "p" on all the challenges. Also rspec wasn't preloaded 
on my Cloud9 workspace so I had to install it, I think this can be a simple fix in the 
instructions. Everything else made sense in terms of Ruby. 

=end

