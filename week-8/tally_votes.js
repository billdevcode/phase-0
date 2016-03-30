// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Frank Lam:
// This challenge took me [3.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// input: a container of people's votes
// output: tally of all votes to be used for officers container
// Pseudocode

// add "Bob" property to president object, which is located in voteCount object and set value to 3 
voteCount.president.Bob = 3;

// add "Bob" property to vicePresident object, which is located in voteCount object and set value to 2 
voteCount.vicePresident.Bob = 2;

// add "Bob" property to secretary object, which is located in voteCount object and set value to 2 
voteCount.secretary.Bob = 2;

// add "Bob" property to treasurer object, which is located in voteCount object and set value to 4 
voteCount.treasurer.Bob = 4;

// Set the president property of the object officers to the value "Louise"
officers.president = "Louise";

// Set the vicePresident property of the object officers to the value "Hermann"
officers.vicePresident = "Hermann";

// Set the secretary property of the object officers to the value "Fred"
officers.secretary = "Fred";

// Set the treasurer property of the object officers to the value "Ivy"
officers.treasurer = "Ivy";

/*
go through votes container
  go through each item of votes container to find the candidate votes for each role
    IF voteCount container's roles have the candidate's name
      add 1 to the candidate's votes
    ELSE
      add the candidate's name and set vote count to 1
    END IF
    
create a new counter to keep track of numbers    
go through voteCount container
  go through each role and find the total votes of each candidate
    IF the total votes is higher than counter
      set counter to the new total votes
      assign the person with highest total votes to the roles on officers container
    END IF
    reset counter to 0
*/
// __________________________________________
// Initial Solution

function tallyUp(obj) {
  for (var voters in obj) { 
    for (var role in obj[voters]) { 
      if (voteCount[role].hasOwnProperty(obj[voters][role])) 
      { voteCount[role][obj[voters][role]] += 1; } 
      else 
      { voteCount[role][obj[voters][role]] = 1; }
    }
  }

  var highTally = 0;
  for (var role in voteCount) {
    for (var candidates in voteCount[role]) {
      if (highTally < voteCount[role][candidates]) 
      { highTally = voteCount[role][candidates];
      officers[role] = candidates; }
    }
    highTally = 0;
  }
}
tallyUp(votes);

// __________________________________________
// Refactored Solution

  for (var voters in votes) { 
    for (var role in votes[voters]) {
      voteCount[role][votes[voters][role]] ?
      voteCount[role][votes[voters][role]]++ :
      voteCount[role][votes[voters][role]] = 1; 
    }
  }

  var highTally = 0;
  for (var role in voteCount) {
    for (var candidates in voteCount[role]) {
      if (highTally < voteCount[role][candidates]) 
      { highTally = voteCount[role][candidates];
      officers[role] = candidates; }
    }
    highTally = 0;
  }

// __________________________________________
// Reflection
/*

1. What did you learn about iterating over nested objects in JavaScript?

It can get challenging and easy to get lost trying to follow the logic/path of the nested objects.
The first loop is straightforward but the second loop took us a while to debug because we didn't  
reference the first loop on our second loop. 

2. Were you able to find useful methods to help you with this?

We didn't find any useful methods to help us. Our initial solution used hasOwnProperty() but 
looks like we don't really need it. 

3. What concepts were solidified in the process of working through this challenge?

I learned our second loop has to reference the first loop's variables on the for loop itself 
otherwise it doesn't do what we want. Also we didn't use { } brackets on the if statement of 
our second code block and it was preventing highTally = 0; from working.  

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)