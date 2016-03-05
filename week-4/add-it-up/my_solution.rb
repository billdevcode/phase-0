=begin
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Evan Druce].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array (list)
# Output: number
# Steps to solve the problem.

create variable to store the sum of all the numbers on the list
go through each number on the list
  add it to the variable we created
output the sum

=end

# 1. total initial solution

def total(list)
  sum = 0
  for i in list
    sum = sum + i
  end
  sum
end


# 3. total refactored solution

def total(list)
  list.reduce(:+)
end

=begin
# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# Input: array (list of words)
# Output: string (sentence)
# Steps to solve the problem.

create a new variable and set it to the first word and capitalize it
go through the rest of the list of words
  add a space then each word to the variable
output sentence and add a period to the end

=end

# 5. sentence_maker initial solution

def sentence_maker(array_of_strings)
  sentence = array_of_strings[0].capitalize
  for i in array_of_strings[1..-1]
    sentence += " " + i
  end 
  sentence + "."
end

# 6. sentence_maker refactored solution

def sentence_maker(array_of_strings)
  array_of_strings.join(' ').capitalize + "."
end