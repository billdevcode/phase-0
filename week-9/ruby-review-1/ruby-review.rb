# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin

create class Student
  create method scores and first_name to read and write the information we pass to them
  
  create method initialize which will take an object
    create object to store first name
    create object to store a list of scores
  END initialize

  create method average
    create a variable sum to keep track of the total
    go through the list of scores
      add each score to variable sum
    divide sum by the count of scores
  END average

  create letter_grade method
    letter grades: (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%)
    IF the average is greater than or equal to 0.9
      the student's letter_grade will be equal to A
    ELSIF the average is greater than or equal to 0.8
      the student's letter_grade will be equal to B
    ELSIF the average is greater than or equal to 0.7
      the student's letter_grade will be equal to C
    ELSIF the average is greater than or equal to 0.6
      the student's letter_grade will be equal to D
    ELSE 
      the student's letter_grade will be equal to F
  END letter_grade

  create method linear_search which takes a list and a name
    go through list 
      if name exist
        return the position of name
      else
        return -1
      END IF
  END linear_search
  

END class

create method binary_search which takes a list and a name
  create an empty array.
  Add in each first_name from the student array into the new empty array.
  Sort the first names in alphabetical order.
  first_name = ["Alex", "Ashley", "Cindy", "Danny", "Tom"]
  Set a variable L to 0.
  Set R to the length of the first name array.
  The middle element  is equal to (L + R) / 2 
  IF the middle element in the first name array is equal to the name,
    return the name
  ELSIF the middle element in the first name array is less than the   name,
    set L to m + 1
  ELSE the middle element in the first name array is greater than the name,
    set R to m-1
  
=end

# Initial Solution

class Student
  attr_accessor :scores, :first_name
  
  def initialize(first_name, scores)  
    @first_name = first_name
    @scores = scores
  end
  
  def average
    sum = 0
    @scores.each do |score|
      sum += score
    end
    @average = sum / @scores.length
  end
  
  def letter_grade
    case @average
      when 90..100
        letter_grade = "A"
      when 80..90
        letter_grade = "B"
      when 70..80
        letter_grade = "C"
      when 60..70
        letter_grade = "D"
      else
        letter_grade = "F"
    end
  end
end

alex = Student.new("Alex", [100,100,100,0,100])
tom = Student.new("Tom", [90,100,95,80,100])
cindy = Student.new("Cindy", [50,80,40,55,85])
ashley = Student.new("Ashley", [30,90,70,88,44])
danny = Student.new("Danny", [32,77,66,100,99])

students = [alex, tom, cindy, ashley, danny]

def linear_search(list, name)
  list.each do |student|
    if student.first_name == name
      return list.index(student)
    else
      return -1
    end
  end
end

def binary_search(list, name)
  first_name = []
  list.each do |student|
    first_name << student.first_name
  end
  return -1 if first_name.index(name) == nil
  first_name.sort!
  l = 0
  r = first_name.length
  
  loop do 
  m = (l+r)/2
    if first_name[m] == name
      list.each do |student|
        if student.first_name == name
          return list.index(student)
        end
      end
    elsif first_name[m] < name
      l = m + 1
    else
      r = m - 1
    end
  end
end

# Refactored Solution

class Student
  attr_accessor :scores, :first_name
  
  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores
  end
  
  def average
    @average = @scores.reduce(:+) / @scores.length
  end
  
  def letter_grade
    case @average
      when 90..100 then "A"
      when 80..90 then "B"
      when 70..80 then "C"
      when 60..70 then "D"
      when 0..59 then "F"
    end
  end
end

alex = Student.new("Alex", [100,100,100,0,100])
tom = Student.new("Tom", [90,100,95,80,100])
cindy = Student.new("Cindy", [50,80,40,55,85])
ashley = Student.new("Ashley", [30,90,70,88,44])
danny = Student.new("Danny", [32,77,66,100,99])

students = [alex, tom, cindy, ashley, danny]

def linear_search(students, name)
  students.each_with_index do |student, index|
    return student.first_name == name ? index : -1
  end
end

def binary_search(students, name)
  first_name = []
  students.each { |student| first_name << student.first_name }
  return -1 if first_name.index(name) == nil
  first_name_sorted = first_name.sort  
  l = 0
  r = first_name.length
   
  loop do 
    m = (l+r)/2
    if first_name_sorted[m] == name
      return first_name.index(name)
    elsif first_name_sorted[m] < name
      l = m + 1
    else
      r = m - 1
    end
  end
end

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students,"Sam") 
p binary_search(students,"Cindy") 

# Reflection

=begin

1. What concepts did you review in this challenge?

I reviewed the attr_accessor, Class instances, case statement, reduce method, as well as other concepts.

2. What is still confusing to you about Ruby?

From the materials we covered, I think I have a fair understanding of Ruby concepts.

3. What are you going to study to get more prepared for Phase 1?

I will do more of the Ruby Review challenges. 

=end