# Factorial

# I worked on this challenge [with: Evan Druce].

# Your Solution Below

=begin

input: integer
output: integer (total)

create a variable to store the multiplications of factorial
  use variable to multiply the given integer and store the total back to variable
  subtract 1 with given integer
    => repeat above 2 steps until integer becomes 1
output the variable that we created

=end

def factorial(number)
    total = 1
    while number > 0
      total *= number
      number -= 1
    end
    total
end