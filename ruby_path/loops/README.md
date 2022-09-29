# Loops

## `loop`
* `loop` loop is an infinite loop unless you tell it to stop
* `break` is most commonly used in this situation

```ruby
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end
```
* not likely to use it

## While loop
```ruby
i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end
```

```ruby
while gets.chomp != "yes" do
  puts "Will you go to prom with me?"
end
```
## Until Loop
* `until` loop is opposite of while loop, it continues for as long as the condition is false
* Helps avoid negations
```ruby
until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end
```

## Ranges
* Ruby lets us define intervals
```ruby
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d
```

## For Loop
* iterate through a collection of information
* 
```ruby
for i in 0..5
  puts "#{i} zombies incoming!"
end
```

## Times Loop
```ruby
5.times do
  puts "Hello, world!"
end
```
* Starts at index 0, but performs operation 5 times in above example

## Upto and Downto Loops
```ruby
5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5
```

## Assignment
* `while` loop does not have it's own scope
* `for` does not have its own scope either
* Iteratorsaremethods that naturally loop over a given set of data and allow you to operate on each element in the collection
```ruby
# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }
``` 
* `each` method being used on array

```ruby
# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
```
* `do` and `end` blocks

```ruby
i = 0
while i < 6 do
  puts "#{i} zombies incoming!"
  i += 1
end
```
## Knowledge Check
* Loop allows you to do repeated operations
* `loop` is infinite loop, requires `break`
* `while` declare condition that decides to break it
* `for` loops through a collection
* `until` does an operation "until" condition is met
