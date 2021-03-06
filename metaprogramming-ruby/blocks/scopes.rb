#---
# Excerpted from "Metaprogramming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
v1 = 1                  

class MyClass
  v2 = 2                
  local_variables    # => [:v2]

  def my_method
    v3 = 3
    local_variables
  end

  local_variables    # => [:v2]
end

obj = MyClass.new
obj.my_method        # => [:v3]
obj.my_method        # => [:v3]
local_variables      # => [:v1, :obj]
