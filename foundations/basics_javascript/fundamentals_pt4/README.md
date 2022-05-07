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