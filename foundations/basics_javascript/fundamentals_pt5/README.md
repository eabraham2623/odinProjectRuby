# Javascript Fundamentals Part 5
## Objects
* Objects used to store keyd collections of various data and more complex entities
* Key and Value for objects in Javascript
```javascript
let user = new Object(); // "object constructor" syntax
let user = {};  // "object literal" syntax
```
```javascript
let user = {     // an object
  name: "John",  // by key "name" store value "John"
  age: 30        // by key "age" store value 30
};
```
```javascript
let user = {
  name: "John",
  age: 30
};

let key = prompt("What do you want to know about the user?", "name");

// access by variable
alert( user[key] ); // John (if enter "name")
```
* Square bracket usage for prompt calculation and access

```javascript
let user = { name: "John", age: 30 };

alert( "age" in user ); // true, user.age exists
alert( "blabla" in user ); // false, user.blabla doesn't exist
```
* `for...in` loop
```javascript
let user = {
  name: "John",
  age: 30,
  isAdmin: true
};

for (let key in user) {
  // keys
  alert( key );  // name, age, isAdmin
  // values for the keys
  alert( user[key] ); // John, 30, true
}
```
* Can have functions in an object
* Dot notation, can access an object's properties and methods using that
    * `person.age` and `person.bio()`
* Object property can itself be an object as well
```javascript
name : {
  first: 'Bob',
  last: 'Smith'
},

person.name.first
person.name.last
```
* Can set object members as well, as well as add new ones
```javascript
person.age = 45;

person['eyes'] = 'hazel';
person.farewell = function() {
  console.log('Bye everybody!');
}
```
* `this` keyword refers to the current object the code is being written inside 
```javascript
const person1 = {
  name: 'Chris',
  introduceSelf() {
    console.log(`Hi! I'm ${this.name}.`);
  }
}

const person2 = {
  name: 'Deepti',
  introduceSelf() {
    console.log(`Hi! I'm ${this.name}.`);
  }
}
```
* Constructors
    * create a new object
    * bind this to the new object, so you can refer to this in your constructor code
    * run the code in the constructor
    * return the new object.

```javascript
function Person(name) {
  this.name = name;
  this.introduceSelf = function() {
    console.log(`Hi! I'm ${this.name}.`);
  }
}


const salva = new Person('Salva');
salva.name;
salva.introduceSelf();

const frankie = new Person('Frankie');
frankie.name;
frankie.introduceSelf();
```

## Intermediate/Advanced Array Magic
* Filter, takes a function and keeps the value in the array if function returns true
* Map, executes a function on each element and returns a new array
* Sort, executes a function where it sorts the array based on function
* Reduce, function to get the summation of values, as one example
* Some, checks to see if an array has at least one entry where function returns true on a condition
* Every, checks to see if every element 
* Find, returns the first element that fulfills function condition

## Practice
* Javascript exercises
08 - 12

## Knowledge Check
* Difference between objects and arrays
    * Objects have key values
* Accessing object properties through dot notation or square bracket notation
* map() is useful for generating an array that takes each element and spits out the functional output used in the map
* reduce() is useful for summation or "summarizing" the whole array with a function