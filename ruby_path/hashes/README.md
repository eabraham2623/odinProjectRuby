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
