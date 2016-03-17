# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.

# Release 0: Pseudocode
=begin

# Pseudocode

START class BingoBoard
  START initialize with board
    create a new object and save board
  END initialize
  
  START call method 
    create an object to store the word "BINGO"
    create an object to randomly choose a number from 1 to 100
    create an object to randomly pick a letter from "BINGO"
    Use the letter to find it's index within "BINGO"
      create an object to store the random letter's index
  END call method

  START check method
    go through board
      check IF any of the columns have the number on the random letter's spot 
        if yes then replace the number with letter "X"
      END IF
    output the new board
  END check method
END class

=end

# Initial Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
  end
  
  def call
    @bingo = ["B", "I", "N", "G", "O"]
    @random_number = rand(1..100)
    random_letter = @bingo[rand(@bingo.count)]
    
    puts "The lucky number is..."
    puts "#{random_letter}#{@random_number}".center(25)
    puts
    case random_letter
      when "B" then @letter_index = 0
      when "I" then @letter_index = 1
      when "N" then @letter_index = 2
      when "G" then @letter_index = 3
      when "O" then @letter_index = 4
    end
  end
  
  def check
    puts @bingo.join('     ')
    @bingo_board.each do |row|
      if row[@letter_index] == @random_number
        row[@letter_index] = "X"
      end
       puts row.join('    ')
    end
  end
end

# Refactored Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
    @bingo = ["B", "I", "N", "G", "O"]
  end
  
  def call
    @bingo_index = rand(5) # 5 for each letter in BINGO
    @random_number = rand(1..100)
    random_letter = @bingo[@bingo_index]
    
    print "The lucky number is"
    10.times do
      print '.'
      sleep 0.1
    end
    puts
    puts "#{random_letter}#{@random_number}".center(25)
    puts
  end
  
  def check
    puts @bingo.join('     ')
    @bingo_board.each do |row|
      if row[@bingo_index] == @random_number
        row[@bingo_index] = "X"
      end
       puts row.join('    ')
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check

#Reflection

=begin

1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

The difficult part was trying to come up with words to replace class, initialize, and method. 
I'm not sure what are some good terms to replace them so in the end I just used the actual words: 
class, initialize, and method. I think my pseudocode style is improving but there are rooms for 
improvement. 

2. What are the benefits of using a class for this challenge?

The benefits are organized code, we can pass instance variables around between the methods 
instead of creating many variables and we can reuse the methods if we create more instances.

3. How can you access coordinates in a nested array?

For example: arr = [[1, 2], [4, 5]]
arr is an array with 2 sub-arrays. We can access each sub-array using arr[0] or arr[1] and 
we can access the index of the sub-arrays using arr[0][0] and arr[0][1] (outputs 1 and 2) 
or arr[1][0] and arr[1][1] (outputs 4 and 5). 

4. What methods did you use to access and modify the array?

I used the each method to access the array and modified the array's index by replacing the 
index's element directly. 

5. Give an example of a new method you learned while reviewing the Ruby docs. 
Based on what you see in the docs, what purpose does it serve, and how is it called?

I looked at the zip method, which takes an element and merges corresponding elements from 
each argument we pass to zip. Zip then outputs an array of sub-arrays.

For example:

  a = [ 4, 5, 6 ]
  b = [ 7, 8, 9 ]
  
  a.zip(b)    #=> [[4, 7], [5, 8], [6, 9]]

A real world example I thought of would be if we had 2 arrays, the first array consist of 
only first names and second array consist of last names. If we wanted to make a new list 
consisting of each person's first and last name together in a sub-array, we can use zip.

6. How did you determine what should be an instance variable versus a local variable?

As long as I needed to reuse a variable in a different method, I went with an instance 
variable. 

7. What do you feel is most improved in your refactored solution?

I got rid of the case statement in my refactored solution which helped speed up the 
program while maintaining readability.

=end

