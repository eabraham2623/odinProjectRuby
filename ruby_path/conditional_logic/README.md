# Conditional Logic
```ruby
if room_tidy == true
  "I can play video games"
end
```

## General Syntax
```ruby
if statement_to_be_evaluated == true
  # do something awesome...
end
```
* If only one line of code to be evaluated
```ruby
puts "Hot diggity damn, 1 is less than 2" if 1 < 2
```

```ruby
if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end
```

```ruby
if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end
```
* `else` clause is optional

## Boolean operators
* `#eql?` checks both the value type and the actual value it holds.
```ruby
5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true
```
* `#equal?` checks whether both values are the exact same object in memory.
  * Strings are stored differently this way
* `<=>` (spaceship operator) returns the following:
  * `-1` if the value on the left is less than the value on the right;
  * `0` if the value on the left is equal to the value on the right; and
  * `1` if the value on the left is greater than the value on the right.
  * Mostly used in sorting functions

## Logical Operators
* `&&` and
* `||` or
* `!` not
* Short circuit evaluation, if one is true in condtional expression rest is disregarded (or)

## Case statements
```ruby
grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end
```
* As soon as match is found, value of match is returned
* Can remove `then`
```ruby
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end
```
## Unless Statements
* Works in the opposite way as an `if` statement
  * Only process if expression evaluates to false
* More readable than `if !true`

## Ternary Operator 
```ruby
age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."
```

## Assignment
```ruby
# case_with_no_arg_statement.rb

a = 5

case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
```
* In Ruby, every expression evaluates as `true` when used in flow control, except for `false` and `nil`
  
## Assignment
* Boolean is true or false data type
* Everything is true except for false or nil
* Using `unless` if you want want `if !true`
* Ternary operator:
  * `true ? puts "true" : puts "false`
* Case statement used when readable `if..else` is preferred