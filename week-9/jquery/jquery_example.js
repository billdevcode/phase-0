// U3.W9:JQuery

// I worked on this challenge [with:Scott Southard].
// This challenge took me [2] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

bodyElement = $('body')

//RELEASE 4: 
  // Add the code for the event listener here
$('body h1').css({'color': 'blue', 'border': '1px solid black', 'visibility': 'visible' })
$('.mascot h1').html('Fiery Skippers 2016')


//RELEASE 5: 
$('img').on('mouseover', function(){
  $(this).attr('src', 'http://www.carolinanature.com/butterflies/fieryskipper80866.jpg')
  $(this).animate({
    'width': '100px',
    'border': '3px solid black' 
  }, 5000);
});

$('img').on('mouseleave', function(){
  $(this).attr('src', 'dbc_logo.png')
});



})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*

Reflect

1. What is jQuery?

jQuery is a JavaScript library with many features that can be used to manipulate a web page.

2. What does jQuery do for you?

jQuery does HTML document manipulation, event handling, animation and Ajax. 
My pair and I used jQuery to change font color, background color, added an image from the web, 
and added animation to the image. 

3. What did you learn about the DOM while working on this challenge?

I learned that in order to not target the h1 in the div, we had to specify the h1 in body element. 
And I also learned we can manipulate the CSS and HTML directly using jQuery without a CSS file and 
without the fiery skipper image on the HTML file. 

*/