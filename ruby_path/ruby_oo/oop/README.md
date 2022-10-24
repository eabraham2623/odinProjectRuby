# Object Oriented Programming

## Assignments
### CodeAcademy Ruby section 9 
* Objects have methods and attributes
  * Attributes are just data
```ruby
class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description
```
* Classes have a method called `initailize` which basically boot up an object that each class creates
* `@` is used to signify it is an instance variable, a variable that is attached to the instance of the class
```ruby
class Person
  def initialize(name)
    @name = name
  end
end
```
* Instantiating an object example:
```ruby
matz = Person.new("Yukihiro")
```
#### Global variables vs Class variables vs Instance Variables
```ruby
class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}
  
  def initialize(username, password)
    @username = username
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.
```
* Class variables are attached to the class

#### Inheritance
```ruby
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error
```
* `SuperBadError` inherits from `ApplicationError`
* `<` is equivalent to saying "inherits from"

* Overriding and `super`
```ruby
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Override example
class Dragon < Creature
  def fight
    return "Breathe fire!"
  end
end

# Super example,
class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    return super
  end
end
```
* Ruby classes can only have one super class

```ruby
# Example Class
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts(@files)
  end
  def Computer.get_users()
    return @@users
  end
end

my_computer = Computer.new("eabraham", "bad")
puts(my_computer.create("hello"))
```
### CodeAcademy Section 10
#### Public vs Private Methods

```ruby
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public
  def bark()
    puts "Woof!"
  end

  private
  def id()
    @id_number = 12345
  end

end
```

```ruby
class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  public
  def display_balance(pin_number)
    if pin_number == pin()
      puts "Balance: $#{@balance}."
    else
      puts pin_error()
    end
  end

  private
  def pin()
    @pin = 1234
  end
  def pin_error()
    return "Access denied: incorrect PIN."
  end 

  public
  def withdraw(pin_number, amount)
    if pin_number == pin()
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}"
    else
      puts pin_error()
    end
  end

end

checking_account = Account.new("Emil", 400)
checking_account.withdraw(1234, 1)
```

* Private methods can only be accessed within the Class and Class descendents only (Within the class definitions)
#### `attr_reader`, `attr_writer`, and `attr_accessor`
* Read and write to instance variables
```ruby
class Person
  attr_accessor :name
end

person = Person.new
person.name = "Dennis"
person.name # => "Dennis"
```
#### Modules
* Purpose of Modules is to separate methods and constants into named spaces
* `Math::PI` outputs `PI` constant from Math module
* Use `require 'module_name'` to import non built in Ruby modules
  * Bring in the contents of that file
* `include` in Ruby means extending a Class or Module's functionality
  * Mixes modules at instance level
  * Instance Methods
* `extends` 
  * Class methods

### Ruby World
#### History of Ruby
* Matz wanted a scripting language that was object oriented

### Launch School OOP Book
* Objects were meant to be containers as applications grew in complexity
* Encapsulation
  * Data protection
  * Creating boundaries
* Polymorphism
  * Different types of data to respond to different interface
* Inheritance
  * Classes getting behaviors of another class
* Modules
  * Have polymorphic structure
  * Mixed in with a class using `include` 
    * Known as `mixin`
* Class ancestors in Ruby:
```ruby
module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors
```

```ruby
---GoodDog ancestors---
GoodDog
Speak
Object
Kernel
BasicObject

---HumanBeing ancestors---
HumanBeing
Speak
Object
Kernel
BasicObject
```
* Use classes to create objects
* Classes have:
  * States
    * Track attributes
  * Behaviors
    * What they are capable of doing
* Instance variables keep track of state
* Instance methods expose behavior for objects
* Accessor methods and setters
```ruby
class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name
sparky.set_name = "Spartacus"
puts sparky.get_name
```
* Ruby syntatical sugar with `set_name=` method
* Rubyists like to name getter and setter methods with the same name
```ruby
class GoodDog
  def initialize(name)
    @name = name
  end

  def name                  # This was renamed from "get_name"
    @name
  end

  def name=(n)              # This was renamed from "set_name="
    @name = n
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"
```
* `attr_accessor` makes getters and setters concise in Ruby world

```ruby
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  # Instance method used here instead of variable
  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end
```
* To distinguish from creatinga a local variable, we need to use `self.<var>` to let Ruby know we are calling a method

#### Classes and Objects Pt.2
##### Class Methods
* Methods that can be call directly on class itself without having to instatntiate any objects
* Need to use `self`
```ruby
# ... rest of code ommitted for brevity

def self.what_am_i         # Class method definition
  "I'm a GoodDog class!"
end
```

```ruby
GoodDog.what_am_i          # => I'm a GoodDog class!
```
* Class methods don't need to deal with state

```ruby
class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => 2
```
* Can get count of number of Object instances through class variables

```ruby
class GoodDog
  # ... rest of code omitted for brevity

  def what_is_self
    self
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
# => #<GoodDog:0x007f83ac062b38 @name="Sparky", @height="12 inches", @weight="10 lbs">
```
* Inner workings of `self`

#### Inheritance
```ruby
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           # => Hello!
puts paws.speak             # => Hello!
```
* `<` is used to signify class is inheriting from another class

```ruby
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new

puts sparky.speak           # => Sparky says arf!
puts paws.speak             # => Hello!
```
* Overriding `speak` method at the descendent level
* When using `super` within method, it searches method lookup path for method with same name then invokes it
```ruby
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class"
  end
end

sparky = GoodDog.new
sparky.speak        # => "Hello! from GoodDog class"
```
```ruby
class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

BadDog.new(2, "bear")        # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">
```

```ruby
module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable         # mixing in Swimmable module
end
```
* A common naming convention for Ruby is to use the "able" suffix on whatever verb describes the behavior that the module is modeling
* If there's an "is-a" relationship, class inheritance is usually the correct choice. If there's a "has-a" relationship, interface inheritance is generally a better choice. For example, a dog "is an" animal and it "has an" ability to swim. 

```ruby
class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors
```
* Method lookup
```ruby
---GoodDog method lookup---
GoodDog
Climbable
Swimmable
Animal
Walkable
Object
Kernel
BasicObject
```
```ruby
module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end
```
* Classes within modules
* Private methods are only accessible within the class
* Class methods have access to other class methods and class variables, but no access to instance methods/variables
* Instance methods can call other instance methods, instance variables, class methods, or class variables
* In Ruby, a class can only have one parent
* Can add objects of another class to another object
```ruby
class Cinema  
  attr_accessor :name, :location  

  def initialize(name, location)
      @name = name
      @location = location
      @movies = []
  end
  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

class Movie  

  attr_accessor :title, :showtime, :cinema  
  @@all = []  

  def initialize(title, showtime)
      @title = title
      @showtime = showtime
      @@all << self  
  end
end
```
## Exceptions and Error Handling
* `begin`, `rescue`, `else` keywords in error handling
```ruby
values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

while values.length > 0
  a = values.pop
  b = values.pop
  

  begin
     a + b
  rescue
     puts "Could not add variables a (#{a.class}) and b (#{b.class})"
  else
     puts "a + b is #{a + b}"
  end
  
end  
```
* Object is an instance of a class
* Class makes objects, it is a factory

# Knowledge Check
* A class is a definition of an object, it defines attributes and behaviors of an object
* Inheritance is the concept of a class getting retrieving the behavior and variables of classes that are considered to be it's ancestors
* Scope is where you can access variables or methods
* Instance variables describe a current object's state
* Class variables are shared between all instances
* Instance variables are locked to only one instance