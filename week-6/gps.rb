# Your Names
# 1) Patrick DeWitte
# 2) Bill Deng

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

# Our Refactored Solution

def serving_size_calc(dessert, servings_requested)
  receipe_book = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{dessert} is not a valid input") unless receipe_book.has_key?(dessert)
  
  serving_size = receipe_book[dessert]
  remaining_ingredients = servings_requested % serving_size
  zero_remainder = "Make #{servings_requested / serving_size} #{dessert}"
  some_remainder = ", you have #{remaining_ingredients} leftover ingredients." 
  
  case remaining_ingredients
    when 0 then return zero_remainder
    else return zero_remainder + some_remainder
  end 
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin

1. What did you learn about making code readable by working on this challenge?

I learned that variable names are also a big part of making code readable. I also 
learned it's best to condense codes and remove any excess or unnecessary codes. 

2. Did you learn any new methods? What did you learn about them?

I learned the has_key?() method which checks if a hash has a particular key and 
returns true or false. It was really useful here so we didn't have to iterate 
through the hash and use if statements to check if the hash has a particular key.

3. What did you learn about accessing data in hashes? 

I learned that if we use one variable in a each method for a hash, the output are 
keys and values. I always thought it would only show the keys. 

4. What concepts were solidified when working through this challenge?

We had questions about using [0] with the values_at() method because we are only 
passing one argument to it so the output is an array with one element but then 
we realized using [0] allows us to output the actual object instead of an array 
with the object. 

=end