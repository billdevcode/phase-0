// 7.8 JavaScript Telephone
// Person 4 - Bill Deng

var oddLengthArray = [18,19,4,26,54];
var evenLengthArray = [6,2,2,16];

// Steps - Story 1

// As a user, I want to input a list of numbers and output the total
function each(array){
  return array.reduce(function(a, b) {
    return a + b;
  });
}

var oddTotal = each(oddLengthArray);
var evenTotal = each(evenLengthArray);

// As a user, I want to input 2 numbers and output the total
function sum(total1, total2){
  console.log(oddTotal + evenTotal);
}

sum(oddTotal, evenTotal);

// Steps - Story 2

// As a user, I want to input a list of numbers and output the mean or average
function mean(array){
  return console.log(array.reduce(function(a, b) {
    return a + b;
  }) / array.length);
}

mean(oddLengthArray);
mean(evenLengthArray);

// Steps - Story 3

// As a user, I want to input a list of numbers and output the median
function median(array){
  var halfArrLength = array.length / 2,
      sorted_array = array.sort(function(a, b){return a-b});
  if (array.length % 2 == 0){
    console.log((sorted_array[halfArrLength] + sorted_array[(halfArrLength)-1])/ 2);
  } else {
    console.log(sorted_array[(halfArrLength) - 0.5]);
  }
}

median(evenLengthArray);
median(oddLengthArray);