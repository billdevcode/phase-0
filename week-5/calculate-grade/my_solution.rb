# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? array (list of numbers)
# What is the output? string (a letter of the average grade)
# What are the steps needed to solve the problem?

=begin

create a new counter to keep track of the total test scores
go through the list 
  add the scores to the counter
create a new number to save the average of counter divided by how many scores were on the list 

IF average is between 90 to 100 
  grade is A so return "A"
IF average is between 80 to 89
  grade is B so return "B"
IF average is between 70 to 79
  grade is C so return "C"
IF average is between 60 to 69
  grade is D so return "D"
IF average is under 60
  grade is F so return "F"

=end


# 1. Initial Solution

def get_grade(list)  
  total_grade = 0  
  list.each { |num| total_grade += num }
  average_grade = total_grade / list.count
  case average_grade
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
    when 0..59 then "F"
  end
end

# 3. Refactored Solution

def get_grade(list)
  average_grade = list.reduce(:+) / list.count
  case average_grade
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
    when 0..59 then "F"
  end
end

# 4. Reflection