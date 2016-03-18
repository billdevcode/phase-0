# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [with: Traci Fong].
# I spent [3.5] hours on this challenge.

# Pseudocode

# Input: 16 integer digits  
# Output: boolean (true or false)
# Steps:

=begin

create an initialize method that takes the 16 digit number as an argument
  turn the 16 digits into a list and reverse the digits
  raise an error argument that says the number isn't 16 digits.

create a new method to double all the every other digit
  create a counter = 1
  go through the list 
    add to counter += 1
    if the counter divided by 2 remainder is not equal to zero
      double it
    else
      convert it to an integer
  
create method sum_all_digits
  go through list
    IF number is 2 characters
      split number into 2 separate numbers of 1 character each
    END IF
  sum all the numbers together
END sum_all_digits

create method called check_card
  check if the sum divided by 10 has a remainder of 0

=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    @num_array = number.to_s.chars.reverse
    if @num_array.count > 16 || @num_array.count < 16
      raise ArgumentError.new ("Not a valid credit card number")
    end
  end
  
  def double
    counter = 1
    @num_array.map! do |element|
       counter += 1
      if counter % 2 != 0 
       element.to_i * 2
      else
        element.to_i
      end
    end  
  end

  def sum_all_digits
     @num_array.map! do |num|
      if num.to_s.length > 1
        num.to_s.split('')
      else 
        num.to_s
      end
    end
    @sum = 0
    @num_array.flatten.map! do |num|
      @sum += num.to_i
    end
  end
  
  def check_card
    double
    sum_all_digits
    if @sum % 10 == 0
      return true
    else 
      return false
    end
  end
end

# Refactored Solution

class CreditCard
  def initialize(number)
    @num_array = number.to_s.chars.reverse
    raise ArgumentError.new("Not a valid credit card number") if @num_array.count != 16
  end
  
  def double
    @num_array.map!.with_index { |num, index| index.odd? ? num.to_i * 2 : num.to_i }
  end

  def sum_all_digits
    @num_array.map! do |num|
      num.to_s.length > 1 ? num.to_s.split('') : num.to_s
    end
    @sum = 0
    @num_array.flatten.map! { |num| @sum += num.to_i }
  end
  
  def check_card
    double
    sum_all_digits
    @sum % 10 == 0
  end  
end

# Reflection

=begin

1. What was the most difficult part of this challenge for you and your pair?

The difficult part was we kept trying to use counter += 1 after the if/else statements 
but Ruby doesn't like that and we couldn't get the result we wanted. Another difficult 
part we had was converting the list of digits into strings, array, back to integer, to 
strings again and finally back to integer because certain methods only work for certain 
data types. 

2. What new methods did you find to help you when you refactored?

The new method I found helpful was with_index method which we chained to a map! method 
and that allowed us to keep the code cleaner. 

3. What concepts or learnings were you able to solidify in this challenge?

From this challenge, I learned certain data type methods do not work for other data types.
For example, we can't use length/count methods on integers nor can we split integers. 
Also we can't enter an argument using integers with spaces like 4563 9601 2200 1999 
will raise errors. We spent quite a bit of time trying to make it work but eventually 
we gave up and then we noticed rspec doesn't even test using 4563 9601 2200 1999 either. 

=end