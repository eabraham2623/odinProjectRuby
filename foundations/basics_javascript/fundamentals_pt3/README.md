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