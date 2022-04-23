# Javascript Fundamentals Part 2
## Data Types
1. Number
    * Both integer and floating point
2. BigInt
    * Represent integers of arbitrary length
    * value cretated by appending `n` to end of integer
    * rarely needed
3. String
    * Surrounded by quotes
    * Double and single quotes are simple quotes
        * Personal preference
    *  Backticks ``` ` ``` extend functionality
        * Allow us to embed variables and expressions, wrapping them in `${...}`
        * ```javascript
          const name = 'Chris';
          const greeting = `Hello, ${name}`;
          console.log(greeting); // "Hello, Chris"
          ```
    * `length` property returns length of string
    * ```let length = txt.length;```

4. Boolean 
    * `true` or `false` values
5. "Null" value
    * reference to non existing object, nothing, empty
6. "Undefined" value
    * Value is not assigned
7. Objects and Symbols
    * `object`
    * `symbol` create unique identifiers for objects
8. typeof operator
    * returns type of the operatior
    * ```javascript 
      typeof undefined // "undefined"

      typeof 0 // "number"

      typeof 10n // "bigint"

      typeof true // "boolean"

      typeof "foo" // "string"

      typeof Symbol("id") // "symbol"

      typeof Math // "object"  (1)

      typeof null // "object"  (2)

      typeof alert // "function"  (3)
      ```

## Strings
* Javascript slice()
* ```javascript
    let str = "Apple, Banana, Kiwi";
    let part = str.slice(7, 13);
  ```
* If parameter is negative, starts from end of the string
* `substring()` same as `slice()` but doesn't accept negative indexes
* Strings are immutable, cannot be changed, only replaced
* String function/methods [reference](https://www.w3schools.com/jsref/jsref_obj_string.asp)
* methods can be used on strings such as `replace` and `slice`

## Conditionals

### Comparisons
* `> , <, <=, >=, ==, !=`
* String comparisons
    * compares by lexographical order
    * Longer string is greater
* Comparison of different types
    * converts values to numbers
* `===` strict equality
* Comparison with null and undefined
    * `alert( null === undefined ); // false`
    * `alert( null == undefined ); // true`
* For math and other comparisons:
    `null/undefined` are converted to numbers: `null` becomes 0, while `undefined` becomes `NaN`
* comparison convert `null` to number, equality check does not

### Logical operators
* `||` OR
* `&&` AND
    * Finds the first false value
    * if all operands are true, returns the last operand
* `!` NOT
* `??` Nullish coalesing

### Switch statements
```javascript
switch (expression) {
  case choice1:
    run this code
    break;

  case choice2:
    run this code instead
    break;

  // include as many cases as you like

  default:
    actually, just run this code
}

```
* `break` statement, stops executing the code block there
* `default`, runs if non of the choices match

### Conditional operator `?`
* `let result = condition ? value1 : value2;`
* `let accessAllowed = (age > 18) ? true : false;`
```javascript
let age = prompt('age?', 18);

let message = (age < 3) ? 'Hi, baby!' :
  (age < 18) ? 'Hello!' :
  (age < 100) ? 'Greetings!' :
  'What an unusual age!';

alert( message );
```

#### Tasks
```javascript
let result = (a + b < 4) ? 'Below' : `Over`;

```
```javascript
let message = (login == 'Employee`) ? 'Hello' : (login == 'Director') ? 'Greetings' :
(login == '') ? 'No login' : ''

```

# Practice
* [Exercise 1](https://replit.com/@eabraham2623/troubleshooting#troubleshooting.js)
* [Exercise 2](https://replit.com/@eabraham2623/enter-a-number#script.js)
* [Exercise 3](https://replit.com/@eabraham2623/lets-do-some-math#math.js)
* [Exercise 4](https://replit.com/@eabraham2623/direction-follow#follow.js)


# Knowledge Check