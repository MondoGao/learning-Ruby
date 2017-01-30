## Class
```ruby
class MyClass
  @@class_variable # variable for only the class not a instance
  @@people = []
  COMMON_ATTIBUTE = "HI!"
    
  def self.class_method_name # method for the class not a instance, self refer to the class not a instance
    define_method("method_name") do
      # method body
     end
  end
  
  def self.all # reader for class variable
    @@people
  end
  
  def self.finder(name) # class finder method
    self.all.detect do |people|
      people.name == name
    end
  end
  
  def self.create(name) # class factor(initialize) method
    self.all << self.new(name)
  end

  attr_accessor :name # a macro to create getter and setter methods
  attr_reader :name
  attr_writer :name
    
  def initialize(name)
    @this_name = name
    @@all << self
    self.class.all << self # this usage is more abstracting than above
  end

  def name=(name)
    @this_name = name
  end
  
  def name
    @this_name
  end

  def MyMethod
  
  end
  
  private
  def private_method
    # can't be called out of the class scope
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

### Belongs To and Has Many Relationships
```ruby
a.author = b # a belongs to b, b has many As
```

### Inherit and Module
```ruby
class SubClass < SuperClass
  # rewrite methods
end

class SubClass::SuperClass # just give SubClass access to all constants, instance methods, without inherit relationship
  # rewrite methods
end
```

```ruby
module Module
  # module methods
  module NestModule
    # module can be nested
  end
end

class HasModule
  extend Module::NestModule # extend module as class methods
  include Module # include module as instance methods
end
```