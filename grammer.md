## Variable
```ruby
some_variable = "something"
```

## Data type
```ruby
"something" == String.new("something")
7 || 7.3
{} == Hash.new
:some_symbol
true || false
```
### Array
#### Create
```ruby
new_array = []
new_array = Array.new
```
#### Add
```ruby
mixed = ["this", 20, "has", 45, "&", "strings"]
mixed << 400
mixed.push("cat")
mixed.unshift("dog")
mix.inspect # > ["dog", "this", 20, "has", 45, "&", "strings", 400, "cat"]
```
#### Remove
```ruby
mixed.shift
mixed.pop
```
#### Retrieve
```ruby
mixed[0]
mixed.first # > "this"
mixed[-1]
mixed.last # > 400
mixed[999] # > nil
```
#### Methods
```ruby
mixed.sort
mixed.sort! # will change the origin array
mixed.reverse
mixed.include?
mixed.size
```

## Method
```ruby
def method_name(parameter)
  # do something
end

# call method
method_name(parameter)
method_name parameter # when there is only one parameter
```

## Condition
```ruby
if condition
  # do something
elsif condition
  # do something
else
  # do something
end
```
```ruby
case variable
  when "value" # variable === value, === difer from ==
    # do something
end
```

## Loop
```ruby
loop do
  # do something until break
  break
end

while condition
  # do something or break
end

until condition
  # do something or break
end

n.times do
  # do something or break
end
```

## iterator
```ruby
iterator.each do |item|
  # do something
end
```

## Class
```ruby
class MyClass
  COMMON_ATTIBUTE = "HI!"
    
  def initialize(name)
    @this_name = name
  end

  def name=(name)
    @this_name = name
  end
  
  def name
    @this_name
  end

  def MyMethod
  end
end

me = MyClass.new("Mondo")
MyClass::COMMON_ATTIBUTE
# not recommend
me.instance_variable_set(:@name, "Hugo")
me.instance_variable_get(:@name)
```

## Boolean Enumerables
### ``#all?``
### ``#none?``
### ``#any?``
### ``#include?``

## Search Enumerables
### ``#select``
### ``#find or #detect``
### ``#reject``