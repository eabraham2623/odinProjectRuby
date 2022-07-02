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