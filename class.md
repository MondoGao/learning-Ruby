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
  
  def self.instance_method_only # self is refer to the instance itself
    define_method("method_name") do
      # method body
     end
end
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