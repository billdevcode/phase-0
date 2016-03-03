# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

=begin

1. What is the name of the file with the error?
  errors.rb
  
2. What is the line number where the error occurs?
  line 8
  
3. What is the type of error message?
  syntax error
  
4. What additional information does the interpreter provide about this type of error?
  unexpected '=', expecting end-of-input
  
5. Where is the error in the code?
  The arrows point to right before the "=" sign although the error should be the "=" sign itself
  "Screw you guys " + "I'm going home." = cartmans_phrase
                                       ^
6. Why did the interpreter give you this error?
  The code is trying to assign "Screw you guys " + "I'm going home.", which is a 
  string and pointing it to cartmans_phrase which is a variable name.
  So basically Ruby doesn't allow assigning a string and pointing it to a variable. 
  
=end

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

=begin

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end

=end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# line 202 or the last line of this file
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# It doesn't point to exactly a part of the code, it points to the last line of this file.
# 6. Why did the interpreter give you this error?
# The code is missing another "end" syntax to close the method definition.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# line 69
# 2. What is the type of error message?
# undefined local variable or method 'south_park' for main
# 3. What additional information does the interpreter provide about this type of error?
# Object (NameError)
# 4. Where is the error in the code?
# the variable itself
# 5. Why did the interpreter give you this error?
# We have a variable name but we didn't assign it pointing to anything.   

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# line 84
# 2. What is the type of error message?
# undefined method 'cartman' for main
# 3. What additional information does the interpreter provide about this type of error?
# Object (NoMethodError)
# 4. Where is the error in the code?
# The method name itself
# 5. Why did the interpreter give you this error?
# We are trying to call a method but we didn't declare this method yet so it doesn't exist. 

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end

# 1. What is the line number where the error occurs?
# line 94 and 98
# 2. What is the type of error message?
# wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# ArgumentError
# 4. Where is the error in the code?
# in 'cartmans_phrase' and in '<main>'
# 5. Why did the interpreter give you this error?
# We are calling a method with an argument but the method doesn't take or accept an argument. 

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end

# 1. What is the line number where the error occurs?
# line 114 and 118
# 2. What is the type of error message?
# wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# ArgumentError
# 4. Where is the error in the code?
# in 'cartman_says' and '<main>'
# 5. Why did the interpreter give you this error?
# The method is defined with an argument but the method call did not provide an argument. 



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end

# 1. What is the line number where the error occurs?
# line 136 and 140
# 2. What is the type of error message?
# wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# ArgumentError
# 4. Where is the error in the code?
# in 'cartmans_lie' and '<main>'
# 5. Why did the interpreter give you this error?
# The method is defined with 2 arguments but only 1 argument was provided when the method was called

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# line 156
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# TypeError
# 4. Where is the error in the code?
# in '*' and '<main>'
# 5. Why did the interpreter give you this error?
# We can't multiply a number to a string, however we could multiply a string to a number. 

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# line 171
# 2. What is the type of error message?
# divided by 0 
# 3. What additional information does the interpreter provide about this type of error?
# ZeroDivisionError
# 4. Where is the error in the code?
# in '/' and '<main>'
# 5. Why did the interpreter give you this error?
# We are trying to divide a number by 0 and Ruby doesn't allow it

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 187
# 2. What is the type of error message?
# cannot load such file 
# 3. What additional information does the interpreter provide about this type of error?
# LoadError
# 4. Where is the error in the code?
# in 'require_relative' and '<main>'
# 5. Why did the interpreter give you this error?
# The codes are trying to load a file that doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

1. Which error was the most difficult to read?
The most difficult error to read was the one missing "end" because it points to the 
last line. The example was just a few lines of code so it wasn't difficult to figure 
it out but I can imagine if we had a 30 lines of code and trying to find where we are 
missing "end" can be very challenging. I guess this is why indentation is so important 
in coding. 

2. How did you figure out what the issue with the error was?
Since it was just a few lines of code so I can clearly see it's missing an "end", also 
the error codes provided "expecting keyword_end" so it specifically says the program is 
expecting "end" in the block of codes. 

3. Were you able to determine why each error message happened based on the code? 
Yes I was, although it's not perfect but Ruby does a good job providing helpful error codes.

4. When you encounter errors in your future code, what process will you follow to help you debug?
I will look at the error message and if I understand what the error is then I will go to the 
line and solve it. However, if I don't understand the error then I will research the error message.

=end
