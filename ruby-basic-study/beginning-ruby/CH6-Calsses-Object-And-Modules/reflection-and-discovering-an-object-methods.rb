a = "this is a test"
puts a.methods.join(' ')


class Person
  attr_accessor :name, :age
end

p = Person.new
p.name = "Fred"
p.age = 20
# return by object variable @name, @age
puts p.instance_variables