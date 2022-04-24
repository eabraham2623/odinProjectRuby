# Javascript Fundamentals Pt 1

## Running Javascript Code
* Default to running in the browser
* `console.log` is used to print something to developer console in browser
* can also a script tag to your javascript code
    * `<script src="javascript.js"></script>`

## Variables
* `let` vs `var`
    * `let`
        * block scoped
        * does not allow to redeclare variables
        * Hoisting does not occur in let
    * `var`
        * function scoped
        * allows to redeclare variables
        * hoisting occurs in var
* `let` is prefered way to declare variables
* `let` variables can be changed
* `let` should only declared once
* Limitations on variable naming:
    * can only contain letters, digits, `$` or `_`
    * first character can't be a digit
* Reserved names can't be used a variable names
* `const` are unchanging variables
* Uppercase best practice for `const`

### Tasks
```javascript
// task 1
let admin;
let name;
name = "John";
admin = name;
alert(admin);

// task 2
let ourPlanetName = "Earth";
let currentVisitor = "John";

// task 3
const BIRTHDAY = '18.04.1982'; // make uppercase?

const AGE = someCode(BIRTHDAY); // make uppercase?

BIRTHDAY should be uppercase because it is unchanging
AGE should not be uppercase because it will change

```

## Numbers
* Exponentiation
    * `let z = 5 ** 2; // result is 25`
* Operator precedence
* JavaScript Numbers are always 64 bit floatingpoint
    * No need to declare float or integer
* Can either be a number with decimal or no decimals
* If adding number and string, result will be string concatentation
* Javascript interpreter works from left to right
* JavaScript will try to convert strings to numbers in all numeric operations
* `NaN` not a number is reserved word indicating number is not a legal number

* `==` vs `===`
    * `==` converts the variable values to the same type before performing comparison
    * `===` does not do any type conversion (coercion) and returns true only if both values and types are identical for the two variables being compared.

```javascript
var one = 1;
var one_again = 1;
var one_string = "1";  // note: this is string

console.log(one ==  one_again);  // true
console.log(one === one_again);  // true
console.log(one ==  one_string); // true. See below for explanation.
console.log(one === one_string); // false. See below for explanation.

```

* Javascript has only one data type for numbers, which is just `Number`
* Converting strings that have number to type Number
    * `Number(myStringNumber)`
* `Number(...)` does the same thing as `+<..>`

## Tasks

```javascript

// task 1
let a = 1, b = 1;

let c = ++a; // ?
let d = b++; // ?

// c = 2
// d = 1

// a = 2
// b = 2


// task 2
let a = 2;

let x = 1 + (a *= 2);

// a = 2 * 2
// a = 4

// x = 5
// a = 4

// task 3, what are the results of these expressions
"" + 1 + 0 // "10"
"" - 1 + 0 // 1
true + false // 1 ?
6 / "3" // 2
"2" * "3" // 6
4 + 5 + "px" // 9px
"$" + 4 + 5 // $45
"4" - 2 // 2
"4px" - 2 // NaN
"  -9  " + 5 // "  -9   5" 
"  -9  " - 5 // -14
null + 1 // 1, null become 0
undefined + 1 // NaN
" \t \n" - 2 // -2

// task 5
let a = prompt("First number?", 1);
let b = prompt("Second number?", 2);

alert(+a + +b); // 3

```
# Assignment

1. Refer to `index.html`

# Knowledge Check

1. Three ways to declare variable
    1. `var`
    2. `let`
    3. `const`
2. Which of the three variables should you avoid and why
    * should avoid `var`because it is old school and provides different behavior
3. `%` is modulo
4. `==` converts to same type and checks equivalence, `===` is strict comparision
5. Operator precedence is PEMDAS, javascript interprets left to right afterwards
6. unary plus operator conerts strings to integer (if they are numbers at first)