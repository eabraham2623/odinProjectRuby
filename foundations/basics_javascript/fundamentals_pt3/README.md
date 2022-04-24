# Javascript Fundamentals Part 3

## Functions
* When creating function, variables and other things defined inside function inside of their own scope
    * locked away, unreachable from code outside the function
* Global scope is outside the function
* Functions that are part of objects are called methods
* Return values are what functions provide after being used
* Parameters, placeholder for future value
* Outer variables can be accessed by a function
    * Only used if there's no local one
* Default values provided by functions
    * ```javascript
        function showMessage(from, text = "no text given") {
        alert( from + ": " + text );
        }

        showMessage("Ann"); // Ann: no text given

      ```
    * `undefined` by default if no value given
* Functions are actions
* Have them be verbs, brief and accurate
* Function Expression:
```javascript
let sayHi = function() {
  alert( "Hello" );
};
```
* Function is a value:
```javascript
function sayHi() {
  alert( "Hello" );
}

alert( sayHi ); // shows the function code
```
* Adding parantheses invokes the function

### Callback function
* Function passed into another function as argument
```javascript
function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}

function showOk() {
  alert( "You agreed." );
}

function showCancel() {
  alert( "You canceled the execution." );
}

// usage: functions showOk, showCancel are passed as arguments to ask
ask("Do you agree?", showOk, showCancel);
```

### Function Declaration vs Function Expression
```javascript
// Function Declaration
function sum(a, b) {
  return a + b;
}

// Function Expression
let sum = function(a, b) {
  return a + b;
};
```
* Declarations can be used before they are defined
    * Within the function declaration code block
* Expressions cannot

* I rather stick with function declarations

### Arrow Functions
```javascript
// shorter version
let func = (arg1, arg2, ..., argN) => expression;

// longer version
let func = function(arg1, arg2, ..., argN) {
  return expression;
};
```
Example:
```javascript
let sum = (a, b) => a + b;

/* This arrow function is a shorter form of:

let sum = function(a, b) {
  return a + b;
};
*/

alert( sum(1, 2) ); // 3
```
* Useful for simple actions, one-liners
    * Without curly brace `(...args) => expression`
    * With curly braces `(...args) => { body }`, multiline with explicit return
