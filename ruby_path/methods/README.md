# Methods
* DRY - Don't Repeat Yourself
  * Recycling sections of codes
  * Methods are associated with objects
* "methods" and "functions" refer to same thing
* `#times` and `#upto` methods are part of the `Integer` class
* `"anything".reverse`
  * typically method has `.`
  
## Creating a Method
```ruby
def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"
```
* `def` is built in keyword for start of method
* `end` is built in key word to tell is end of method

## Method Names
* Ruby method names are snake_case, separating words with underscores

```ruby
method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid
```

## Parameters and Arguments
```ruby
def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!
```
* paramters act as placeholder variables
* arguments are actual variables
* `name` is parameter, `"John"` is the argument

### Default Parameters
```ruby
def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!
```
## Method Returns
* Ruby offers implicit return for methods
  * Return last expression that was **evaluated**

## Difference Between `puts` and `return`
* `puts` is method that prints whatever arguments passed into console
* `return` is final output of the method you can use in other places throughout your code

## Chaining methods
* chaining methods together
```ruby
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"
```
## Predicate Methods
* `?` methods ending with question mark
  * Returns either `true` or `false`

```ruby
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true
```

## Bang Methods
* General rule is methods shouldn't overwrite objects that you call on them, protects overwritting data by accident
* `!` methods with bang typically mean a reassignment

```ruby
whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"

puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"
```
