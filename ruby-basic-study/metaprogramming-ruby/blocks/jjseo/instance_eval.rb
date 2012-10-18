class MyClass
  def initialize
    @v = 1
  end
end

p obj = MyClass.new
obj.instance_eval do
  p self
  p @v
end

# The block is evaluated with the receiver as self