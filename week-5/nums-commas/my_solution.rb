# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin

input: number
output: string (word)
pseudocode:

turn number into a word
determine length of the word
  IF length of word is 4 then add a comma after 1st character
  IF length of word is 5 then add a comma after 2nd character
  IF length of word is 6 then add a comma after 3rd character
  IF length of word is 7 then add a comma after 1st and 4th characters
  IF length of word is 8 then add a comma after 2nd and 5th characters
output the word

=end

# 1. Initial Solution

def separate_comma(num)
  num = num.to_s
  case num.length
    when 4 then num = num[0] + "," + num[1..-1]
    when 5 then num = num[0..1] + "," + num[2..-1]
    when 6 then num = num[0..2] + "," + num[3..-1]
    when 7 then num = num[0] + "," + num[1..3] + "," + num[4..-1]
    when 8 then num = num[0..1] + "," + num[2..4] + "," + num[5..-1]
  end
  num
end

# 2. Refactored Solution

def separate_comma(num)
  num = num.to_s
  output_number = ''
  while num.length > 3
    output_number = "," + num.slice!(-3..-1) + output_number
  end
  output_number = num + output_number
end

# 3. Reflection

=begin

1. What was your process for breaking the problem down? What different approaches did you consider?

I know I need to add commas and where I add the comma depends on which number it is 
or the length of the number. I considered using a range like between 1,000,000 
to 9,999,999 but this required much more characters. I also considered using if 
statements but I think case is easier to read. 

2. Was your pseudocode effective in helping you build a successful initial solution?

Yes it was, I think my pseudocode is pretty straight-forward.

3. What new Ruby method(s) did you use when refactoring your solution? 
Describe your experience of using the Ruby documentation to implement it/them 
(any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I tried to find a 1-line solution but the best I found were codes in Rails, nothing on 
Ruby. So then I thought about how I could solve it using a loop but in order to do that,
I needed a way to remove the last 3 characters from the given number and move it to a 
new variable. After looking around, I found the slice method and the Ruby Docs had 
many examples so it wasn't difficult finding the version I wanted. 

4. How did you initially iterate through the data structure?

I used a while loop and I didn't try another loop or iterator. 

5. Do you feel your refactored solution is more readable than your initial solution? Why?

Yes, I think my refactored solution is more readable. My initial solution uses many 
different ranges of num and so it gets confusing. Meanwhile my refactored solution 
is really about the while logic and the only tough part is understanding what 
slice(-3, -1) means, which takes the last 3 characters of num, removes it and 
adds it to the front of output_numer. 

=end