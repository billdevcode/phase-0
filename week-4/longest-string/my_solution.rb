# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

=begin

input: array (list)
output: string
=> pseudocode

return nil if there is nothing on the list
create a variable and set it to the first word on list
create a variable and set it to the length of the first word on list
go through the list 
  if any word's length is longer than the variable's length
    set the variable to the new word
    set the other variable to that new word's length
return the word

=end

def longest_string(list_of_words)
  return nil if list_of_words.length == 0
  
  long_word = list_of_words[0]
  string_length = list_of_words[0].length
  
  for i in list_of_words do
    if i.length > string_length
      long_word = i
      string_length = i.length
    end
  end
  long_word
end