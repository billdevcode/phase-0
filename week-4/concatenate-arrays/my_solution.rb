# Concatenate Two Arrays

# I worked on this challenge [by myself].

# Your Solution Below

=begin

input: 2 arrays (2 lists)
output: 1 array

go through second lists 
  copy the items to first list
return first list

=end

def array_concat(array_1, array_2)
  
  array_2.each do |item|
    array_1.push(item)
  end
  array_1
end