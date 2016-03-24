 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: accumulate lotto winnings
// Goals: win $100,000 or more in lotto
// Characters: player
// Objects: lotto and destinations
// Functions: lottoWinnings, travel, summary, separateComma

/*
Pseudocode

create a new container to store how much money player won from lotto
create a new container to store 5 travel destinations along with 
  a list of 5 things to do in each destination

create a function to randomly show which prize player won and pass this
  information to the next function
create a function to choose one of the destinations then randomly choose 
  1 of the 5 things to do 
  output the results
  output a summary 

*/

// Initial Code
// Refactored Code

// I combined the initial code with the refactored code.

var lotto = {
    "first prize": [25000, "Paris", 0],
    "second prize": [10000, "Hawaii", 0],
    "third prize": [5000, "Thailand", 0],
    "fourth prize": [1000, "Las Vegas", 0],
    "last prize": [1, "the backyard", 0]
};

var destinations = {
    "Paris": ["climb the Eiffel Tower but don't get arrested.",
        "visit the Louvre and marvel at all the French jewels.",
        "explore the Arc de Triomphe but don't get lost.",
        "wander the Notre Dame and shake hands with the hunchback.",
        "be impressed by the Les Invalides and all the tombs."
    ],

    "Hawaii": ["hike the Legendary Na Pali Coast but watch your step.",
        "watch humpback whales but don't get too close.",
        "explore Hawaii's Volcanoes National Park but run away if it erupts.",
        "wander the Grand Canyon of the Pacific but don't get lost.",
        "watch surfers take on monstrous waves and get washed away."
    ],

    "Thailand": ["visit the Grand Palace and have tea with the king.",
        "wander the Golden Triangle but don't wander too far.",
        "go island hopping. Hop hop hop!",
        "be amazed by the hill tribe villages as they offer you fried ants and crispy scorpions.",
        "shop and eat at the floating markets while floating in mid-air."
    ],

    "Las Vegas": ["watch the Bellagio Fountains for the 1,000th time.",
        "be amazed by a Cirque du Soleil show as they swing around in mid-air.",
        "eat at one of the many famous restaurants and hopefully not bump into Donald Trump.",
        "stuff your stomach at the Wynn buffet until you can barely walk.",
        "explore the Shark Reef Aquarium and find Nemo."
    ],

    "the backyard": ["rake leaves because it's sad winning $1.",
        "dig a hole and plant the $1 because it's sad winning $1.",
        "watch your neighbors BBQ because it's sad winning $1.",
        "play with mud because it's sad winning $1.",
        "stand in the rain because it's sad winning $1."
    ]
};

var results = '',
    total = 0,
    counter = 0,
    allPlaces = '',
    win = false;

var lottoWinnings = function() {
    var prize = '',
        winnings = Math.floor(Math.random() * 10 + 1);

    switch (winnings) {
        case 1:
            prize = "first prize";
            break;
        case 2:
            prize = "second prize";
            break;
        case 3:
            prize = "third prize";
            break;
        case 4:
            prize = "fourth prize";
            break;
        default:
            prize = "last prize";
    }
    summary(lotto, prize);
    results += "Congratulations! You won the " + prize + " in lotto and the jackpot is $" + separateComma(lotto[prize][0]) + "! So exciting!";
    return prize;
};

var travel = function(prize) {
    var places = lotto[prize][1],
        random = Math.floor(Math.random() * 5);

    results += " Now that you won the lotto, what do you feel like doing? "
    results += "How about traveling? It's time to go to " + places + " to " + destinations[places][random];
    console.log(results);
    for (var i in lotto) {
        if (lotto[i][2] !== 0) {
            total += (lotto[i][0] * lotto[i][2]);
            allPlaces += lotto[i][1] + ', ';
            counter += lotto[i][2];
        }
    }
    if (total >= 100000) {
        win = true;
    }
    if (allPlaces[allPlaces.length - 2] === ",") {
        allPlaces = allPlaces.substring(0, allPlaces.length - 2);
    }
    console.log("-----------------------");
    var summary = "You won the lotto " + counter + " times with a grand total of $" + separateComma(total) + ". You traveled to " + allPlaces;
    win ? summary += " and you won the game!" : summary += " but you lost the game... You need a grand total of $100,000 or more to win."
    console.log(summary);
};

function summary(obj, property) {
    obj[property][2] += 1;
}

function separateComma(num) { // used only to add commas to numbers
    var results = [],
        counter = 0;

    num.toString().split('').reverse().forEach(function(element) {
        results.push(element)
        counter += 1;
        if (counter === 3) {
            results.push(",");
            counter = 0;
        }
    })
    if (results[results.length - 1] === ",") {
        results.pop();
    }
    return results.reverse().join('');
};
travel(lottoWinnings());

// Reflection

/*

1. What was the most difficult part of this challenge?

The most difficult part was coming up with the game mechanics. At the beginning, 
I wanted to make a guess the number game but JS doesn't have a gets method like 
Ruby and prompt gets annoying fast.

2. What did you learn about creating objects and functions that interact with one another?

We just have to call the function and pass the object to it as an argument. 

3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

I used several methods such as reverse, substring, Math.random and Math.floor.
Reverse is used to reverse an array.
Substring is used to capture certain indices of a string.
Math.random creates a random number between 0 and 1 but the 1 is exclusive.
Math.floor rounds a number down to an integer.

4. How can you access and manipulate properties of objects?

We can use dot or bracket notations, we can also loop through using for...in. 

*/

