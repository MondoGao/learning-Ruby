## Class
```ruby
class MyClass
  @@class_variable # variable for only the class not a instance
  COMMON_ATTIBUTE = "HI!"
    
  def self.class_method_name # method for the class not a instance, self refer to the class not a instance
    define_method("method_name") do
      # method body
     end
  end

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