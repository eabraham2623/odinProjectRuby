# Input and Output

## Output commands
* `puts` and `prints`
  * `puts` does new line
  * `prints` does not do new line
  * both return `nil`
* semicolon allows running multiple ruby commands all in one line

## Input Commands
* Accepting input from user, we use the `gets` command
* `gets` always returns new line at end of input
* `gets.chomp` removes `\n` 

## Assignment
* `p` is shorter form of `puts`
* `putc` used to output one character a time "print character"
* `puts` treates arrays differently
```ruby
puts [1,2]
1
2

print [1,2]
[1,2]
```
* `p` is a method that shows a more "raw" version of an object
  * Useful for debugging
  * Returns the object you pass to it

## Knowledge Check
* `print` and `puts` outputs data to user's screen
* Both print out data
* `puts` adds newline
* `gets` is used to get data from user input

