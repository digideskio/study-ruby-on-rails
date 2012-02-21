# struct allowed you to create small data-handling classes on the fly.

Person = Struct.new(:name, :age)
me = Person.new("Fred Bloggs", 25)
me.age =+ 1