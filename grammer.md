## Variable
```ruby
some_variable = "something"
```

## Data type
```ruby
"something" == String.new("something")
7 || 7.3
[] == Array.new
{} == Hash.new
:some_symbol
true || false
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

## Loop
```ruby
loop do
  # do something until break
  break
end

while condition
  # do something
end

until condition
  # do something
end

n.times do
  # do something
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
