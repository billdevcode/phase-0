# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

=begin

input: array (list)
output: string
=> pseudocode

return nil if there is nothing on the list
create a variable and set it to the first word on list
create a variable and set it to the length of the first word on list
go through the list and if any word's length is shorter than the variable's length
  set the variable to the new word
  set the other variable to that new word's length
return the word

=end

def shortest_string(list_of_words)
  return nil if list_of_words.length == 0
  
  short_word = list_of_words[0]
  string_length = list_of_words[0].length
  
  list_of_words.each do |word|
    if word.length < string_length
      short_word = word
      string_length = word.length
    end
  end
  short_word
end