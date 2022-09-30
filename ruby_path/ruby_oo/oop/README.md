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