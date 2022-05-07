# Understanding Errors
## Anatomy of error
* Error is type of object built into JS language
* `ReferenceError` is thrown when one refers to a variable that is not declared and/or intialized in the current scope
* Points to where to navigate in the code to for the error, line number
* Stack trace, helps understand where error thrown in application
    *  ![](https://cdn.statically.io/gh/TheOdinProject/curriculum/284f0cdc998be7e4751e29e8458323ad5d320303/foundations/javascript_basics/understanding_errors/imgs/01.png)
    1. `c is not defined` in scope of `add()`, which is declared on line 5
    2. `add()` was called by `print()`, which was declared on line 9
    3. `print()` itself was called on line 12.
* Stack trace lets you trace the evolution of an error back to its origin

## Common Types of Errors
### Syntax Error
* JS engine encounters tokens that does not conform to syntax of language
### Reference Error
* Variable scoping and existence, or spelt incorrectly
### Type Error
* an operand or argument passed to a function is incompatible with the type expected by that operator or function;
* or when attempting to modify a value that cannot be changed;
* or when attempting to use a value in an inappropriate way.

## Tips for Resolving Errors
1. Read error and try to understand on your own
2. Google the error, can get more clarity
3. Use the debugger
4. Make use of console for quick debugging

## Errors vs Warnings
* Warnings typically shown in yellow, can provide insight on potential problems

## Exercise
* Logic errors: code not what you intended it to be
* querySelector, making sure it references correct object
* Function syntax
* Math logic

## Knowledge Check
* 3 reasons to see a type error
    * Modifying a value that can't be changed
    * argument passed to a functin that is incompatabile
    * 3rd reason sort of vague
* Error will cause program to crash, warning warns about potential problem in future
* Google, debugger, console.log to resolve errors