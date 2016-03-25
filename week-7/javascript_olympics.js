 // JavaScript Olympics

// I paired [with: Robin Soubry] on this challenge.

// This challenge took me [2] hours.


// Warm Up
// Bulk Up

var athlete1 = {
  name: "Michael Jordan",
  event: "Basketball NBA"
};

var athlete2 = {
  name: "Kobe Brian",
  event: "Basketball NBA2"
};

var athleteArray = [athlete1 , athlete2];

var athleteFunction = function(array) {
  for (var i = 0 ; i < array.length ; i++){
    array[i].win = array[i].name + " won the " + array[i].event + "!";
    console.log(array[i].win);
  }
};

athleteFunction(athleteArray);

// Jumble your words

reverseString("abcdefg");

function reverseString(str) {
  return str.split('').reverse().join('');
}

// 2,4,6,8

evenNumber([1, 2, 3, 4, 5, 6]);

function evenNumber(arr) {
   return arr.filter(function(num) { //|num|
    return num % 2 === 0;
  });
}

// "We built this city"

function Athlete (name,age,sport,quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);

// Reflection
/*

1. What JavaScript knowledge did you solidify in this challenge?

I solidified the function constructor knowledge through this challenge. It's been a 
while since I used JS so it was a good refresher. It also took me a few tries 
to get the filter method to perform the way I wanted because Coderpad doesn't 
show what's being "return".

2. What are constructor functions?

Constructor functions are another way to create objects and it looks a lot 
like Ruby's class. Constructors are part of object-oriented JavaScript and 
is preferred if you need to do some initial work before the object is created or 
require multiple instances of the object where each instance can be changed.

3. How are constructors different from Ruby classes (in your research)?

JavaScript constructor function differs in that it's used to create an object but it 
doesn't belong to any class. In other words, in Ruby, we create a class and we 
create methods that can be used by instances of the class. But in JS, we can't use 
constructor function on all objects/instances of a type. We would have to create 
a prototype to do that. Here's a link with examples: http://andrewblum.org/javascript/2015/10/23/Javascript.html

*/