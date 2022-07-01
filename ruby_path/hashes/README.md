# Hashes
## Creating Hashes
```ruby
my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
```
```ruby
my_hash = Hash.new
my_hash               #=> {}
```

## Accessing Hashes
```ruby
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"]   #=> "sandals"
```
* Can `fetch` if value of key is not found
```ruby
shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"
```
## Adding and Changing Data
```ruby
shoes["fall"] = "sneakers"

shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

shoes["summer"] = "flip-flops"
shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
```

## Removing Data
```ruby
shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}
```

## Methods
* Hashes respond to many of same methods as arrays
* Making use of Ruby's **Enumberable** module
* `#keys` and `#values` methods
```ruby
books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]
```
## Merging Two Hashes
```ruby
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }
```
* hash getting merged gets overwritten

## Symbols as Hash Keys
* Symbols are more performant than strings 
* Cleaner syntax when defining hashes
```ruby
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}
```
```ruby
japanese_cars[:honda]   #=> "Accord"
```

## Assignment
### When deciding whether to use a hash or an array, ask yourself a few questions:

* Does this data need to be associated with a specific label? If yes, use a hash. If the data doesn't have a natural label, then typically an array will work fine.

* Does order matter? If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.

* Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.


* hash exercises