# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================

p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |num| # destructive!
  if num.kind_of?(Array)
    num.map! {|nest| nest + 5}
  else
    num + 5
  end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

names_plus_ly = startup_names.map do |outer| # non-destructive!
  if outer.kind_of?(Array)
    outer.map do |middle| 
      if middle.kind_of?(Array)
        middle.map do |inner| 
          inner + "ly"
        end
      else
        middle + "ly"
      end
    end
  else
    outer + "ly"
  end
end
p names_plus_ly

# RELEASE 5: REFACTOR SOLUTION

p startup_names.flatten!.map {|name| name + "ly"}

#Reflect
=begin

1. What are some general rules you can apply to nested arrays?

Using an example:
arr = [[1, 2, 3], 4, [8, 9]]

Look for the opening and closing [ ] brackets and look carefully at the commas. 
If we want to access the 3, it would be arr[0][2], the [0] means the first 
index of arr while [2] means the 3rd index of the sub-array arr[0]

2. What are some ways you can iterate over nested arrays?

There are many ways to iterate over nested arrays using methods like each, map, 
for, etc.  

3. Did you find any good new methods to implement or did you 
re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used the map method and I was familar with this method. It was a good option 
because it does exactly what we wanted to, which is to modify the elements and 
output the results.

I tried to find a better way of iterating through nested arrays but I didn't 
find a method I was satisfy with. However I did find the flatten method, which will 
flatten nested arrays into one unnested array. 

=end