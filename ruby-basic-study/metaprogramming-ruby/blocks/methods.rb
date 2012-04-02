#---
# Excerpted from "Metaprogramming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
class MyClass
  def initialize(value)
    @x = value
  end
  
  def my_method
    @x
  end
end

object = MyClass.new(1)
m = object.method :my_method
m.call                            # => 1

unbound = m.unbind
another_object = MyClass.new(2)
m = unbound.bind(another_object)
m.call                            # => 2
