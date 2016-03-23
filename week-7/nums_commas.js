// Separate Numbers with Commas in JavaScript **Pairing Challenge**
// I worked on this challenge with: Abid Ramay

// Pseudocode
/*

Input: number
Output: string (with numbers and commas)
Steps:

create a function called separateComma that takes a number
  create a new empty container list to save the results called results
  create a new counter to keep track
  convert the number into a word, split word into list of individual numbers, reverse list
  go through list
    send a number to results list
    increase counter by 1
    IF counter reaches 3
      send a comma to results list
      reset counter to 0
    END IF
  reverse the results list and convert to a string 
  IF the first character on results list is a comma
    omit the first character
  END IF
  output results list
END function

*/
// Initial Solution

var separateComma = function(num) {
  var results = [], counter = 0;
  num = num.toString().split('').reverse();
  for (var i = 0; i < num.length; i++) {
    results.push(num[i]);
    counter += 1;
    if(counter === 3) {
      results.push(",");
      counter = 0;
    }
  } 
  results = results.reverse().join('');
  if (results[0] === ",") { results = results.substring(1);}
  return console.log(results);
};

// Refactored Solution

function separateComma(num) {
  var results = [], counter = 0;
  num.toString().split('').reverse().forEach(function(element){
    results.push(element)
    counter += 1;
    if(counter === 3) {
      results.push(",");
      counter = 0;
    }
  })
  if (results[results.length - 1] === ","){ results.pop(); }
  return console.log(results.reverse().join(''));
};

// Your Own Tests (OPTIONAL)

separateComma(12345678);
separateComma(123456789);
separateComma(99999);
separateComma(999);

// Reflection
/*

1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

The perspective was similar and yes I approached it differently. Instead of 
using a while loop, I used a for loop. 

2. What did you learn about iterating over arrays in JavaScript?

The for loop doesn't access each element instead it just increments a number. This makes it 
flexible if we wanted to only access odd or even indices. The forEach method is similar 
to Ruby's each.

3. What was different about solving this problem in JavaScript?

I tried to use a while loop but couldn't get it to work properly and the result 
was an infinite loop. I think it has to do with destructive and non-destructive. 
JS doesn't have any destructive methods. 

4. What built-in methods did you find to incorporate in your refactored solution?

We used forEach(), split(), reverse(), pop(), push(), etc methods.

*/