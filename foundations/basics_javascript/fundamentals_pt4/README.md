# JS Fundamentals Pt 4
## Arrays
* Arrays are objects, can have similar behavior to hashmaps, named indexes
* [Array Methods](https://www.w3schools.com/js/js_array_methods.asp)
    * `unshift()` and `shift()` methods
## Loops
* for each, for of loop
```javascript
const cats = ['Leopard', 'Serval', 'Jaguar', 'Tiger', 'Caracal', 'Lion'];

for (const cat of cats) {
  console.log(cat);
}
```
* `map()` does something to each item in collection and creates new colleciton
* `filter()` create a collection that contains items that match

* do..while
```javascript
initializer
do {
  // code to run

  final-expression
} while (condition)
```
* code inside `do...while` is always executed at least once

## Test Driven Development
* Practice of writing automated tests that describe how your code should work before you actually write the code

## Assignment 
* Refer to `javascript-exercises` repo
* Exercises 1-7

## Knowledge Check
* Array is list of values
* Accessing array is through index
* Break statement is used to break out of the loop
* Continue is used to immediately proceed to next iteration of loop
* Advantage of writing of automated tests makes have to run the ourselves over and over, saves more time