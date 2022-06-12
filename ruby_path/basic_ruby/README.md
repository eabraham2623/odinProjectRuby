# Basic Data Types
* Ruby is strongly OO language
* Everything in Ruby is an object

## Numbers
```ruby
# Addition
1 + 1   #=> 2

# Subtraction
2 - 1   #=> 1

# Multiplication
2 * 2   #=> 4

# Division
10 / 5  #=> 2

# Exponent
2 ** 2  #=> 4
3 ** 4  #=> 81

# Modulus (find the remainder of division)
8 % 2   #=> 0  (8 / 2 = 4; no remainder)
10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)
```
### Integers and Floats
* Doing arithmetic with two integers will always result with an integer

### Converting Number types
```ruby
# To convert an integer to a float:
13.to_f   #=> 13.0

# To convert a float to an integer:
13.0.to_i #=> 13
13.9.to_i #=> 13
```

### Number methods
```ruby
6.even? #=> true
7.even? #=> false

6.odd? #=> false
7.odd? #=> true
```

## Strings
```ruby
# With the plus operator:
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"
```

### Substrings 
```ruby
"hello"[0]      #=> "h"

"hello"[0..1]   #=> "he"

"hello"[0, 4]   #=> "hell"

"hello"[-1]     #=> "o"
```
`..` represents a range

### Escape characters
```ruby
\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark
```

### Interpolation
* Need to use double quotes!!!
```ruby
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"
```

### Common String methods
```ruby
"hello".capitalize #=> "Hello"

"hello".include?("lo")  #=> true

"hello".include?("z")   #=> false

"hello".upcase  #=> "HELLO"

"Hello".downcase  #=> "hello"

"hello".empty?  #=> false

"".empty?       #=> true

"hello".length  #=> 5

"hello".reverse  #=> "olleh"

"hello world".split  #=> ["hello", "world"]

"hello".split("")    #=> ["h", "e", "l", "l", "o"]

" hello, world   ".strip  #=> "hello, world"

"he77o".sub("7", "l")           #=> "hel7o"

"he77o".gsub("7", "l")          #=> "hello"

"hello".insert(-1, " dude")     #=> "hello dude"

"hello world".delete("l")       #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"
```

### Converting other other objects to strings
```ruby
5.to_s        #=> "5"

nil.to_s      #=> ""

:symbol.to_s  #=> "symbol"
```

## Symbols
* Symbols are stored in memory only once, can be faster than Strings in certain situations
* Symbols are useful in keys in hashes
* immutable

### Create symbol
`:my_symbol`

```ruby
# Examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"
```

### Symbols vs Strings
* Example below shows how symbols are stored in memory
```ruby
"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true
```



## Booleans
* `true` and `false`
* `nil` represents nothing

## Literals
* Literals are notations that let you represent a fixed value in source code
```ruby
'Hello, world!'          # string literal
375                      # integer literal
3.141528                 # float literal
true                     # boolean literal
{ 'a' => 1, 'b' => 2 }   # hash literal
[ 1, 2, 3 ]              # array literal
:sym                     # symbol literal
nil                      # nil literal
```

## Modulo vs Remainder
* Modulo operations return a positive integer when the second operand is positive, and a negative integer when the second operand is negative.
* Remainder operations return a positive integer when the first operand is positive, and a negative integer when the first operand is negative.

## Expressions
* Expressions in Ruby always return something `=>`

## Hashes
```ruby
irb :001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat]
=> "meows"
```

# Assignment
Refer to Ruby exercise repo