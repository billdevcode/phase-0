# Concatenate Two Arrays

# I worked on this challenge [by myself].

# Your Solution Below

=begin

input: 2 arrays (2 lists)
output: 1 array
=>psuedocode

create an empty list
go through both lists 
  copy the items to the empty list
return the originally empty list, now filled with items from both given lists

=end

def array_concat(array_1, array_2)
  new_array = []
  
  array_1.each do |item|
    new_array.push(item)
  end
  
  array_2.each do |item|
    new_array.push(item)
  end
  
  new_array
end