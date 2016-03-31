# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [2.5] hours on this challenge.

# Pseudocode

=begin

create BingoScorer class

  create method bingo_check? that accepts a bingo board (list)
    create a new counter to keep track of numbers
    go through board's individual elements 
      counter increases by 1 if a 'x' is found
    return false if counter is less than 5

    go through board
      if there are 5 "x" in a row
        return true and print "BINGO!"

    go through board
      if there are 5 "x" in a column
        return true and print "BINGO!"

    IF there is a "x" in all 5 positions from right to left diagonal
      return true and print "BINGO!"
    ELSE IF there is a "x" in all 5 positions from left to right diagonal
      return true and print "BINGO!"
    END IF
    
    return false if there is no BINGO
END class

=end

# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                  [22, 'x', 75, 65, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 31, 96, 'x', 51],
                  [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

# Initial Solution
class BingoScorer
  
  def bingo_check(board)
    counter = 0
    board.each do |row| 
      row.each do |idx|
        counter += 1 if idx == 'x'
      end
    end
    return false if counter < 5

    board.each do |row| 
      if (row[0] == 'x' &&
        row[1] == 'x' &&
        row[2] == 'x' &&
        row[3] == 'x' &&
        row[4] == 'x')
          puts "BINGO!"
          return true
      end
    end

    for columns in 0..board.length
      if (board[0][columns] == 'x' &&
        board[1][columns] == 'x' &&
        board[2][columns] == 'x' &&
        board[3][columns] == 'x' &&
        board[4][columns] == 'x')
          puts "BINGO!"
          return true
      end
    end

    if (board[0][0] == 'x' &&
        board[1][1] == 'x' &&
        board[2][2] == 'x' &&
        board[3][3] == 'x' &&
        board[4][4] == 'x')
          puts "BINGO!"
          return true
      
    elsif (board[0][4] == 'x' &&
        board[1][3] == 'x' &&
        board[2][2] == 'x' &&
        board[3][1] == 'x' &&
        board[4][0] == 'x')
          puts "BINGO!"
          return true
    end
    return false
  end
end

# Refactored Solution

class BingoScorer
  def bingo_check?(board)
    counter = 0
    board.each do |row| 
      row.each do |index|
        counter += 1 if index == 'x'
      end
    end
    return false if counter < 5

    board.each do |row| 
      if row == ['x', 'x', 'x', 'x', 'x']
          puts "BINGO!"
          return true
      end
    end

    for columns in 0..4
      if (board[0][columns] == 'x' &&
        board[1][columns] == 'x' &&
        board[2][columns] == 'x' &&
        board[3][columns] == 'x' &&
        board[4][columns] == 'x')
          puts "BINGO!"
          return true
      end
    end
    
    return false if board[2][2] != 'x'

    if (board[0][0] == 'x' &&
        board[1][1] == 'x' &&
        board[2][2] == 'x' &&
        board[3][3] == 'x' &&
        board[4][4] == 'x')
          puts "BINGO!"
          return true
      
    elsif (board[0][4] == 'x' &&
        board[1][3] == 'x' &&
        board[2][2] == 'x' &&
        board[3][1] == 'x' &&
        board[4][0] == 'x')
          puts "BINGO!"
          return true
    end
    return false
  end
end

# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

# Instead of making many methods, I decided to make one method but I could easily 
# make many methods

bingo = BingoScorer.new

p bingo.bingo_check?(horizontal);
p bingo.bingo_check?(vertical);
p bingo.bingo_check?(right_to_left);
p bingo.bingo_check?(left_to_right);

# Reflection

=begin

1. What concepts did you review or learn in this challenge?

I reviewed how to loop through nested arrays and how to use if with multiple expressions 
with &&.

2. What is still confusing to you about Ruby?

None based on the challenges we've done so far. Maybe in the future.

3. What are you going to study to get more prepared for Phase 1?

I plan to read up on the book and do some online Ruby challenges. 

=end