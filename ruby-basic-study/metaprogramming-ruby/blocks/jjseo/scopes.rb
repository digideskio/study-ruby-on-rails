v1 = 1

class MyClass
  v2 = 2
  local_variables

  def my_method
    v3 = 3
    local_variables
  end

  local_variables
end

#他の言語たと(JAVAとかC)v1が見えるはずだが、RUBYではv1はouter scope

obj = MyClass.new
p obj.my_method
p obj.my_method
p local_variables

#The first time the program enters my_method( ), it opens a new scope and defines a local variable, v3.
#Then the program exits the method, falling back to the top-level scope. At this pont
#You became familiar with the top-level scope in the sidebar on page 54.
#point, the method’s scope is lost.


# SCOPE GATES
