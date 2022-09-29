# Arrays
## Creating Arrays
```ruby
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]
```
* Above shows array literal way of creating arrays
* Can also be creaed by `Array.new` method
  * `(initial_size, default value)`
```ruby
Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, 7)         #=> [7, 7, 7]
Array.new(3, true)      #=> [true, true, true]
```

## Accessing Elements
```ruby
str_array = ["This", "is", "a", "small", "array"]

str_array[0]            #=> "This"
str_array[1]            #=> "is"
str_array[4]            #=> "array"
str_array[-1]           #=> "array"
str_array[-2]           #=> "small"
```

```ruby
str_array = ["This", "is", "a", "small", "array"]

str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]
```
* `#first` and `#last` methods returns an array that contains first or last `n` elements


## Adding and Removing Eleemtns
* `#push` method ord shovel operator `<<`
```ruby
num_array = [1, 2]

num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]
```

## Adding and Subtracting Arrays
```ruby
a = [1, 2, 3]
b = [3, 4, 5]

a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]
```
* Adding arrays will involve the concatenation of them
* Difference between two arrays will return copy of first removing any elements appearing in first array
```ruby
[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]
```

## Basic Methods
* Full documentation: http://ruby-doc.org/
* Calling the `#methods` method will yield list of array methods
* `num_array.methods       #=> A very long list of methods`
```ruby
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"
```

## Assignment
* `collect` and `map` methods do the same thing
```ruby
irb :001 > a = [1, 2, 3, 4]
=> [1, 2, 3, 4]
irb :002 > a.map { |num| num**2 }
=> [1, 4, 9, 16]
irb :003 > a.collect { |num| num**2 }
=> [1, 4, 9, 16]
irb :004 > a
=> [1, 2, 3, 4]
```
* Methods with `!`, will mutate or change the caller permanently
  * Not always the case, but check ruby docs
* Nested Arrays
```ruby
irb :001 > teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
=> [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
```
* `map` creates and returns a new array
* `product` method can be used to combine two arrays, combination of all elements
```ruby
irb :001 > [1, 2, 3].product([4, 5])
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
```
```ruby
users = %w(john david peter)
```
* Can initialize array data with `%w` to avoid having to use quotes

## Assignment
* ruby-exercises arrary

## Knowledge Check
* Array is a list of data, useful to organize data and stuff
