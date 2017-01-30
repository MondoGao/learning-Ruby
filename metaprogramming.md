## Keyword Arguments
```ruby
def happy_birthday(name:, current_age:) # keyword arguments
  puts "Happy Birthday, #{name}"
  current_age += 1
  puts "You are now #{current_age} years old"
end

happy_birthday(current_age: 31, name: "Carmelo Anthony")
```

## Mass Assignment
```ruby
class Person
  attr_accessor :name, :age
 
  def initialize(name:, age:)
    @name = name
    @age = age
  end
end

person_attributes = {name: "Sophie", age: 26}
sophie = Person.new(person_attributes)
```

## MetaProgramming
```ruby
class User
  attr_accessor :name, :user_name, :age, :location, :bio
 
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)} # self.send(key=, value) is the same as instance_of_user.key = value
  end
end
```

## Custom Errors
```ruby
class PartnerError < StandardError
def message 
  "you must give the get_married method an argument of an instance of the person class!"
end
end

begin
  raise PartnerError
rescue PartnerError => error
  puts error.message
end

```