# Enumerables
* Set of convenient built in methods in Ruby that are included in both arrays and hashes

## Life Before Enumerables
* Replacing loops with methods to accomplish the same thing
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

friends.reject { |friend| friend == 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]
 ```

## each method
* Calling `#each` on an arrary will go through array and yield each element to a code block
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]
```
* `{ |friend| puts "Hello, " + friend }` is a block, and the code inside this block is run for each element in your array
  * Would run 5 times in this example

```ruby
# Multiline each method example

my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]
```

```ruby
# Hash example

my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

one is 1
two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }

the pair is ["one", 1]
the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}
```
* `#each` method returns original array/hash, regardless what happens inside code block

## each_with_index method
* yields two block variables
  * Additional is the index of the element
```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]
```

## map method
* transforms each element from an array
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]
```

## select method
* also called `#filter`
* each item in an array is proceesed and returns a new array only if condition in block is evaluated to true
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

friends.each do |friend|
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

invited_list
 #=> ["Sharon", "Leo", "Leila", "Arun"]


responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}

```

## reduce method
* **accumulator** is part of method, `sum` as an example
```ruby
my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26


my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026



votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

```
* `Hash.new(0)` sets default value to be `0` for all key values

## Bang methods
* Bang methods are destructive and modify the object they are called
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`
```

## Return Values of Enumberables
* Re using result of enumerable method, can place it into a local variable
* Can be wrapped within a method definition as well
```ruby
# local variable

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends = friends.select { |friend| friend != 'Brian' }

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends
#=> ["Sharon", "Leo", "Leila", "Arun"]


# Method way

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends(friends)
 #=> ["Sharon", "Leo", "Leila", "Arun"]

 ```

## Assignment
* "Enumerable" is actually a "module", which means it is just a bunch of methods packaged together

### Enumerable Iterators Cheat Sheet
* `#each` returns the original object it was called on because it's really used for its side effects and not what it returns
* `#each_with_index` passes not just the current item but whatever position in the array it was located in.
* `#select` returns a new object (e.g. array) filled with only those original items where the block you gave it returned true
* `#map` returns a new array filled with whatever gets returned by the block each time it runs.

## Things I got confused but cleared up now
1. Why did 2nd `result` need to be in the `reduce` hash example?
```ruby
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  return result # don't do this though
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}
```
* Whole hash of `result`
2. Why is it that, we do not need to write the sum as a return in this example then:
   * Because you want the return value to be `sum + number` anyway
   * Because that is why you want `sum` to be in the next iteration
   * In the hash example you don’t want the return value of `result[value] += 1` to be fed into `result` the in the next iteration
   * Because in a reduce statement the value returned get's passed to the next iteration

## Knowledge Check
* `#each` method performs loop over the object, returns original object
* `each_with_index` gives object and index
* `#map` performs operation on each item, returns new arrary
* `#select` returns a filtered array where it is returned true
* `#reduce` accumulates array to give a "summary" of arrary
* `#each` is a one liner wheras `each, do...end` is multipline
* bang methods of enumerables are destructive, are unpredictable.