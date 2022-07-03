# Debugging

## Reading the Stack Trace
* Stack trace prints each line of code in program that was executed before it crashed

## Debugging with puts
* Easiest and quickest is using `puts`
* Calling `puts` on anything that is `nil` or empty string wil just print a blank line to terminal
* `p` will yield more information 
  * Combination of `puts` and `#inspect`

## Debugging with Pry-byebug
* Pry is Ruby gem that provides an interactive REPL while program is running
* `binding.pry` similar to creating a breakpoint

## How to Start Debugging
* Typo may cause syntax error
  * Stack trace
* Program runs, but not way you expect
* If no stack trace, `puts` and Pry are easiest tools to get yourself backup and running

## Assignment
### Algorithm for dealing with a stack trace
1. Read the top line of the stack trace
2. If the file is part of your project: open the faulting file on the indicated line number. If it isn’t, keep going down the stack trace until you find the first reference to a file you recognize
3. See if anything obvious jumps out to you and fix it (look for things mentioned on the error message)
4. If that doesn’t help then you will need to find more information, like the values of the affected variables.

### Exceptions and Stack Traces
* `exception` can be viewed as synomyous with an error

## Knowledge Check
* A stack trace is the program's execution path when an error occurs, printing each line of code
* Most useful line in stack trace is generally the first one
  * Which line caused the runtime error
  * Name of the error
* `puts` and Pry help show the state of the program at specific points in the program
* Should use `p` instead of `puts` for `nil` values
* runtime error debugging, is best to use stack trace
* Use pry and `puts` to debug when program runs but not what you expect