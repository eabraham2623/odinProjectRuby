# Variables

## Declaring and assigning variables examples
```ruby
age = 18 #=> 18

age = 18 + 5 #=> 23

age = 18
age #=> 18
age = 33
age #=> 33

age = 18
age #=> 18
age = age + 4
age #=> 22

age = 18
age += 4 #=> 22

age = 18
age -= 2  #=> 16

cash = 10
cash *= 2 #=> 20

temperature = 40
temperature /= 10 #=> 4
```

## How to Name Variables
* Should always be lowercase
* `snake_case` , multiple words with underscores

## Variables are references
* Information stored in a variable is stored in memory on your computer
  * Reference to a pointer to that address in memory

Instances where value stored in memory modified can bring about unintended consequences with variables:
  * Only releveant with `!` in method
```ruby
desired_location = "Barcelona"
johns_location = desired_location

desired_location  #=> "Barcelona"
johns_location    #=> "Barcelona"


johns_location.upcase!  #=> "BARCELONA"

desired_location        #=> "BARCELONA"
johns_location          #=> "BARCELONA"
```

* gets method. `gets` stands for "get string",
* using `gets.chomp` removes the `\n` newline 

## Variable Scope and Blocks

```ruby
total = 0
[1, 2, 3].each { |number| total += number }
puts total # 6
```
```ruby
total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total # 6
```
* Can think of it as a for each, `for number in numbers:`

## Types of vraiables
*  Constants
   * `MY_CONSTANT = 'I am available throughout your app.'`
*  global variables
   *  `$var = 'I am also available throughout your app.'`
   *  Tend to stay away
*  class variables
   * `@@instances = 0`
   * variables are accessible by instances of your class, as well as the class itself
   * When you need to declare a variable that is related to a class, but each instance of that class does not need its own value for this variable, you use a class variable
   * `@@class_variables` are rarely needed and easily misused
*  instance variables
   *  `@var = 'I am available throughout the current instance of this class.'`
   *  Should not use until I learn more about it
*  local variables
   *  `var = 'I must be passed around to cross scope boundaries.'`

## Functions vs Methods
```
A function is a piece of code that is called by name. It can be passed data to operate on (i.e. the parameters) and can optionally return data (the return value). All data that is passed to a function is explicitly passed.

A method is a piece of code that is called by a name that is associated with an object. In most respects it is identical to a function except for two key differences:

A method is implicitly passed the object on which it was called.
A method is able to operate on data that is contained within the class (remembering that an object is an instance of a class - the class is the definition, the object is an instance of that data).
```

## Variable lessons
* Variable itslef is not a "thing", it's jut a name for a thing
* Overwritting previous values of variable names, reusing variable names
* Ruby looks at the right side first of variable assignment first, evaluates and then sets variable to that value
* `uppercase!` returns nil if unchanged
  * Kind of used for conditional checks?
* Symbols used as hasky keys, identify of the key that is important
* If contents of object are important, use string
* Symbols are used for naming things in the language: the names of classes, the names of methods 

## Knowledge Check
* Variables are used to provide storage for values that can change, assigning names to data
* Name should be clear as possible, describe the variable's value