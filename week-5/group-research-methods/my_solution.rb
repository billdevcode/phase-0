# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  numbers, not_numbers = source.partition { |num| num.is_a?(Fixnum) }
end

def my_hash_splitting_method(source, age)
  pets_4_years_or_under, others = source.partition { |pets_name, num| num <= age }
end

=begin

Identify and describe the Ruby method(s) you implemented.

The method I used is the partition method which takes an object or block and 
breaks it down into 2 arrays. The first array contains elements that evaluates 
to true while the second array contains the rest. 


Release 1: Identify and describe the Ruby method you implemented. Teach your
accountability group how to use the methods.

The method I used is the partition method. First you first create 2 variables which 
will be the 2 arrays we separate the source into later. Then you set the 2 variables 
equal to the array or hash parameter. In our above example, the parameter is 
named "source", next we call the method (source.partition). Then we create a variable 
(or 2 variables for hashes) which points to each element we pass to the partition 
method and lastly we set the condition we want to evaluate as true. The method will 
evaluate each element and if it's true, sends it to the first array and if it's not 
true, sends it to the second array. 

Release 3: Reflect! What did you learn about researching and explaining your research to others?

I googled for "ruby separate array into two arrays two conditions", basically describing
what I'm trying to achieve. The first link showed me the partition method and then I went 
to Ruby Docs to read if the method does what I want and it does!

=end