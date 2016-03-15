# Build a simple guessing game

# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: integer
# Output: boolean
# Steps:

=begin

create GuessingGame class
  START initialize and input the answer
    create an object to save the answer  
    create an object to make game solved as false
  END initialize
  
  START guess method which accepts a number as guess
    IF guess is larger than answer
      game is not solved (false)
      respond with :high
    ELSE IF guess is correct
      game is solved (true)      
      respond with :correct
    ELSE 
      game is not solved (false)
      respond with :low
    END IF
  END guess

  START solved? method
    if game is solved
  END solved?
END class

=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(num)
    if num > @answer
      @solved = false
      :high
    elsif num == @answer
      @solved = true
      :correct
    else
      @solved = false
      :low
    end
  end
      
  def solved?
    @solved
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    @last_guess = num
    if num > @answer
      :high
    elsif num == @answer
      :correct
    else
      :low
    end
  end
      
  def solved?
    @last_guess == @answer
  end
end

# Reflection

=begin

1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables and methods can be organized in a way that represents real-world objects and situations. 
Take this guessing game for example, in the real world, person A would think of a number (answer) then writes it 
down somewhere or just memorizes the number. Person B would try to guess the number and person A would 
check each guess to see if the guess is the same as the number. Person A would respond based on if  the 
guess is higher, correct or lower than the number. If it's correct then the game is solved but if it's not 
then the game is not solved. At any given time, person B can verify if the game is solved or not. 
By keeping it in a class, that means only person A and B are playing this game. If there is a person C 
and he or she isn't playing this game then he or she can't guess the number or verify if the guess is correct. 
However if person C decides to play this game then he or she acquires all the actions (methods) person B has: 
guessing the number and verifying if the game is solved. The same rules applies to person D, E, F, etc. 

2. When should you use instance variables? What do they do for you?

We should use instance variables when we want to save objects and use them within multiple methods of a class. 
Take for example the instance variable @last_guess, I used and reused it to keep track of the last number applied 
to guess the answer. At any given time, we can call the solved? method to verify if @last_guess is 
equal to @answer, which is a copy of the number being guessed. 

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is used to control different outcomes depending on information provided by user, result of a computation, 
or value returned by another part of the program. In our examples, you can see how the if, elsif and else 
statements interact and control outputs based on different guesses. I did not have any trouble using using flow 
control in this challenge. 

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?

I think because the guess responses: high, correct and low are unique and shouldn't change. This means 
when someone guess the number, these are the only logical responses and there aren't any other responses. 
The main benefits of using symbols are immutable (can't be changed) and uniqueness. 

=end