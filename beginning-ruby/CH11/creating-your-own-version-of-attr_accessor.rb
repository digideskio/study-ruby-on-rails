class Person
  attr_accessor :name
end

# this is equal

class Class
  def add_accessor(accessor_name)
    self.class_eval %Q{
    def #{accessor_name}
      @#{accessor_name}

    end

    def #{accessor_name}=(value)
      @#{accessor_name} = value
    end

    }
end