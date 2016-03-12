list_of_people = [
  "Adell Hanson-Kahn",
  "Aji Slater",
  "Alex DeLaPena",
  "Bison Hubert",
  "Caitlyn Yu",
  "Gary Sperka",
  "Helin Shiah",
  "James Hwang",
  "Jen Trudell",
  "Joey Sabani",
  "John Dees",
  "Katy Duncan",
  "Laura Crowe",
  "Lorena Mesa",
  "Matt Higgins",
  "Morgan McCrory",
  "Neal Peters",
  "Regina Compton",
  "Ryan Milstead",
  "Sara Gilford",
  "Aarthi Gurusami",
  "Abid Ramay",
  "Adam Zmudzinski",
  "Alec Hendrickson",
  "Alex Wen",
  "Alicia Briceland",
  "Allison Paul",
  "Andrey Slonski",
  "Anna Lansfjord",
  "Ben Sanecki",
  "Benjamin R Flores",
  "Buck Melton",
  "Caitlin Hoffman",
  "Carlos Gonzalez",
  "Chand Nirankari",
  "Ché Sanders",
  "Chris Henderson",
  "Christopher Lamkin",
  "Christyn Budzyna",
  "Dan Park",
  "David Ramirez",
  "Ruo Yu Tao",
  "David Walden",
  "Bill Deng",
  "Denny Jovic",
  "Daniel Deutsch",
  "Dexter Moran",
  "Diana Ozemebhoya Eromosele",
  "Dominick Lombardo",
  "Elan Kvitko",
  "Elizabeth Alexander",
  "Elizabeth Brown",
  "Emmanuel",
  "Ena Bekanovic",
  "Esther Leytush",
  "Evan Druce",
  "Frank Lam",
  "Gabriel Zurita",
  "Jack Thatcher",
  "Jason Milfred",
  "John Colella",
  "Jonathan Kaplan",
  "Kelson Adams",
  "Kristal Lam",
  "Kunal Patel",
  "Leland Meiners",
  "Liam Binell",
  "Lisa Buch",
  "Lisa Dannewitz",
  "Lyudmila Arinich",
  "Charlotte Manetta",
  "Mohamed Monekata",
  "Parker Smathers",
  "Patrick DeWitte",
  "Renan Martins",
  "Riley Scheid",
  "Robin Soubry",
  "James Robinson",
  "Samantha Holmes",
  "Scott Southard",
  "Shaun R Sweet",
  "Shin Wang",
  "Sibel Ergener",
  "Simon Thomas",
  "Talal Talhouk",
  "Ted Bogin",
  "Traci Fong",
  "Victoria Solorzano"  
  ]

=begin

MVP (Minimum Viable Product) User Stories: 
1. Each group has at least 3 people

input: array (above list)
output: array (with sub-arrays)
psuedocode:

create a new container for the list-of-groups
create a new container for temporary group

WHILE input list has people on the list
go through input list and randomly choose a person and add this person to the temporary group
  IF temporary group has 4 people
    move the temporary group to the list-of-groups container
    reset temporary group
  => repeat above 4 steps until input list has no more people
end WHILE
IF there are less than 3 leftover people in temporary group
  move them to the first two groups on the list-of-groups
IF there are 3 leftover people in temporary group
  move the temporary group to the list-of-groups container
output the list-of-groups container 

=end

# Initial Solution

def acct_groups(list)
  list_of_groups = []
  group = []
  while list.length > 0
    group.push(list.slice!(rand(list.length)))
    if group.length == 4
      list_of_groups.push(group)
      group = []
    end
  end
  
  if group.length < 3
    for i in 0...group.length
      list_of_groups[i].push(group[i])
    end
  else 
    list_of_groups.push(group)
  end
  list_of_groups
end
acct_groups(list_of_people)

# Refactored Solution

def acct_groups(list)
  new_list = list.shuffle.each_slice(4).to_a
  if new_list.last.length < 3
    for i in 0...new_list.last.length
      new_list[i].push(new_list.last.pop)
    end
  new_list.pop
  end
  new_list
end
acct_groups(list_of_people)

=begin

Reflect

1. What was the most interesting and most difficult part of this challenge?

The most interesting part of this challenge was how simple it was to meet the user story 
(each group has 3 or more people), so I could get as creative as I wanted to and the 
shuffle method just blew my mind. The most difficult part was creating the list of people 
because it was tedious and I had to do it manually. I think DBC should have given us a list 
of people to use. 

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, I think through repetition and practice I will get better at writing pseudocode and breaking 
the problem down. 

3. Was your approach for automating this task a good solution? What could have made it even better?

I think my codes are pretty optimized. Groups are randomly populated and I added a checkpoint that 
if anyone drops out or any new people joins, the output list will adjust itself. An improvement I 
could think of is adding a new parameter to allow the user the ability of adjusting the size of groups. 

4. What data structure did you decide to store the accountability groups in and why?

I used arrays to store the groups because it was enough to get the job done and I can access each group. 
If I used hashes, it may look better for example using "Group 1" as the key and an array of names as the value.

5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned the shuffle and each_slice methods which shorten my 8 lines of codes into 1. By using just 
list.shuffle.each_slice(4).to_a it actually splits up the input array into sub-arrays of 4 people already but 
unfortunately the last group may have 1 or 2 people which won't satisfy the user story so I added the 
if statement to check this and the for loop to distribute the people. 

=end

