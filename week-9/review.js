/*
# Method to create a list
# input: list of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # go through list
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: object container showing the items and it's quantities

# Method to add an item to a list
# input: object ontainer, item name and quantity (optinoal)
# steps: 
if there is no quantity provided 
  quantity equals to 1
add item and quantity to the object container 
# output: new object container with the added items and quantity

# Method to remove an item from the list
# input: object container and item
# steps: delete item from container
# output: new object container without the removed item

# Method to update the quantity of an item
# input: object container, item and quantity
# steps: change the item's quantity to new quantity
# output: new object container with the item's quantity updated

# Method to print a list and make it look pretty
# input: object container
# steps: beautify list and make it look pretty
# output: pretty looking list

*/

// Initial and Refactor Solution

function createList(items) {
  items = items.split(' ');
  for (var i = 0; i < items.length; i++) {
    this[items[i]] = 1;
  }
}

function addItem(list, item, quantity) {
  quantity === undefined ? quantity = 1 : quantity = quantity;
  list[item] = quantity;
}

function removeItem(list, item) {
  delete list[item];
}

function updateQuantity(list, item, quantity) {
  list[item] = quantity;
}

function prettyList(list) {
  
  console.log("======================");
  console.log("      Grocery List       ");
  console.log("======================");
  console.log("Item: Qty");
  console.log("----------");
  for (var item in list) {
      console.log(item + ": " + list[item]);
  }
}
  
var groceryList = new createList("carrots apples cereal pizza");
addItem(groceryList, "Lemonade", 2);
addItem(groceryList, "Tomatoes", 3);
addItem(groceryList, "Onions", 1);
addItem(groceryList, "Ice Cream", 4);
removeItem(groceryList, "Lemonade");
updateQuantity(groceryList, "Ice Cream", 1);
prettyList(groceryList);

/*
Reflect

1. What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

Object constructors, objects, and passing information.

2. What was the most difficult part of this challenge?

It took me a while to figure out how to create a new list using "this" and it also took me a while to figure out that I can't use 
an optional quantity as the second parameter in function addItem. 

3. Did an array or object make more sense to use and why?

An object made the best sense because we have to create many different items and each item comes with a quantity. 
If we used an array, we would have many sub-arrays and we have to loop through the entire array each time to 
find an item. 

*/