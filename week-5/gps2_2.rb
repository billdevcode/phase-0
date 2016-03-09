=begin

Method to create a list
input: a list of items separated by spaces (example: "carrots apples cereal pizza")
steps: 
create a new container outside to hold the items
separate list of items to individual items and go through the list
  pass each item of the list to new container and set 0 as the quantity
output: new container list

=end

grocery_list = Hash.new("This item is not on our list!")

def create_list(list, grocery_list)
  list.split(" ").each { |item| 
    grocery_list[item] = 0 }
end
create_list("carrots apples cereal pizza", grocery_list)

# Method to add an item to a list
# input: item and optional quantity
# steps: add item and quantity to container list
# output: container list with new items added

def add_items(item, quantity=0, grocery_list)
  grocery_list[item] = quantity
end
add_items("beef", grocery_list)

# Method to remove an item from the list
# input: item to be remove
# steps: delete item from container list
# output: container list with the item removed

def remove_items(item, grocery_list)
  grocery_list.delete(item)
end
remove_items("pizza", grocery_list)

# Method to update the quantity of an item
# input: item and new quantity
# steps: update item to new quantity
# output: container list with the item and it's new quantity

def update_quantity(item, new_quantity, grocery_list)
  grocery_list[item] = new_quantity
end 
update_quantity("apples", 4, grocery_list)

# Method to print a list and make it look pretty
# input: container list
# steps: add format to make list look pretty
# output: a pretty looking container list

def print_list(grocery_list)
  line_width = 30
  puts
  puts ('Grocery List'.center(line_width))
  puts
  puts ("ITEMS".ljust(line_width/2)) + "QTY".rjust(line_width/2)
  puts ("------------------------------").center(line_width)
  grocery_list.each { |item, quantity| 
  puts (item.ljust(line_width/2)) + quantity.to_s.rjust(line_width/2)
  puts ("------------------------------") }
end 
print_list(grocery_list)

=begin

Reflect

1. What did you learn about pseudocode from working on this challenge?

I think my pair and I did pretty well with the pseudocode, we used simple 
words and language. Besides the first method, all the other methods were 
pretty short so our pseudocode were short too.

2. What are the tradeoffs of using Arrays and Hashes for this challenge?

Right from the start we decided to use a hash because we have to add quantities 
later on so hashes seem like the better solution for this challenge. It's still 
possible to use an array but it would be an array with sub-arrays of items and 
quantities so it doesn't look as nice. When we have to add, update or remove 
items, it gets more challenging because each time we would have to iterate 
through the array and sub-arrays to find our match. 

3. What does a method return?

A method returns one or more values but if a return statement was not used then 
a method returns the value of the last statement.

4. What kind of things can you pass into methods as arguments?

You can pass any object to a method as arguments and almost everything is an object in Ruby. 

5. How can you pass information between methods?

By calling the object in the method parameter allows us to receive information from those 
objects and then the method's block of code can be used to pass information out. 
For example, during this challenge we used different methods to take information in 
then we passed the items and quantities out to the hash grocery_lis. I don't think we passed 
information from one method to another though. 

6. What concepts were solidified in this challenge, and what concepts are still confusing?

During this challenge, I kept saying p returns a value but I later learned that it doesn't. 
p is similar to puts in that they both display/print to the console, p calls the inspect method 
on a value while puts calls to_s on a value. I also needed a hint on calling the hash 
grocery_list to the first method because we had to declare it outside of the method but 
modify it inside the method. Also I didn't figure out how to make the quantity on our new_items 
method optional but after some research I figured it out. 

I don't have any confusing concepts in regards to what we completed however the 5th reflect 
question asked about passing information between methods but I don't think we did that in 
this challenge. Did I miss something here?

=end
