# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? array (list)
# What is the output? median value from list
# What are the steps needed to solve the problem?

=begin

sort the list in ascending order
WHILE there are more than 2 values left on the list
  remove the first and last items 
END While
IF there are 2 values
  add the values together
  convert the values to a float number
  divide by 2
  output the value
END IF
output the last remaining object on list

=end


# 1. Initial Solution

def median(list)
  sort_list = list.sort
  while sort_list.length > 2
    sort_list.pop
    sort_list.shift
  end
  if sort_list.length == 2
    return (sort_list[0].to_f + sort_list[1].to_f) / 2
  end
  sort_list[0]
end

# 3. Refactored Solution

def median(list)
  while list.sort!.length > 2
    list.pop; list.shift
  end
  return list.reduce(:+).to_f / 2 if list.length == 2
  list[0]
end

# 4. Reflection