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

