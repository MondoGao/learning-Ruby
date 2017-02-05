module Test1
  class A
    attr_accessor :name

    def initialize(name)
      self.name = name
    end
  end

  class B < A

  end
end
p Test1::B.new("Mondo").name

module Test2
  class A
    @@some = "Hi!"
    def self.some
      @@some
    end
  end

  class B < A
    @@some = "B"
  end
end
p Test2::B.some

module Test3
  class A
    def self.attr
      ["name", "sex"]
    end

    self.attr.each { |attr| attr_accessor attr.to_sym }

    def initialize(name, sex)
      self.name = name
      self.sex = sex
    end
  end

  class B < A

  end
end
p Test3::B.new("Mondo", "M").name