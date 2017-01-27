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
### Operator
- Spaceship operator(<=>): returns 0 if the first operand equals the second,
returns -1 if the first operand is less than the second, and
returns 1 if the first operand is greater than the second.

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
### Hash
#### Create
```ruby
hash = {"key" => "value", "another_key" => "another value"}

hash = {key: "value"}
hash = {:key => "value"} # the same meaning as above, :key is a symbol that is immutable

Hash.new()
```
#### Retrieve
```ruby
hash["key"] # > "value", [] is a method named "bracket method"
```
#### Add
```ruby
hash["new_key"] = "new_value"
```
#### Method
```ruby
hash.keys
hash.values
hash.min
```

### RegEx
#### Methods
```ruby
String.scan(//) # return all matches
String.match(//)
Array.grep(//) # Similar to Scan
```

### Converting Types
- String to Array: ``"H,i".split(',') # > ["H", "i"]``
- Array to String: ``["H", "i"].join # > "Hi"``
- Range to Array: ``(1..3).to_a # > [1, 2, 3]``

## Yield
Stop executing the code in this method and instead execute the code in the block. Then, return to the code in the method.
```ruby
def yielding_with_arguments(num)
  if block_given? # return true if the method is called with a block
    puts "the program is executing the code inside the method"
    yield(num) # > equal the return value of the block
    puts "now we are back in the method"
  end
end
yielding_with_arguments(2) {|i| puts i * 2}
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
# > iterator

iterator.each_with_index do |item, i|
 # do something
end

iterator.each_with_index.collect do |item, i|
  # do something
end # Iterators in Ruby are chainable

iterator.collect do |item|
  # do something and return a value
end
# > new iterator with all return values
```

## Class
```ruby
class MyClass
  COMMON_ATTIBUTE = "HI!"
  attr_accessor :name # a macro to create getter and setter methods
  attr_reader :name
  attr_writer :name
    
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
  
  def self.instance_method_only 
  end
end

me = MyClass.new("Mondo")

def me.instance_method_only 
end

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
### ``delete_if``
