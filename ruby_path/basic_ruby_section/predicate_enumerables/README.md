# Prediucate Enumerables

## `include?` method
* Know whether a particular element exists in array
```ruby
numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

numbers.include?(3)
#=> false
```

## `#any?`
```ruby
numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
#=> true

numbers.any? { |number| number < 20 }
#=> false
```
* any element matching the condition

## `#all?`
```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true

fruits.all? { |fruit| fruit.length > 6 }
#=> false
```
* returns true if all elements match condition

## `#none?` 
```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true

fruits.none? { |fruit| fruit.length > 6 }
#=> false
```
* returns true if none of the elements match the condition

## Assignment
* exercises repo

## Knowledge Check
* Question mark is there in method names to indicate predicate method, `true` or `false` result
