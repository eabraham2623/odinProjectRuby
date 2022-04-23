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