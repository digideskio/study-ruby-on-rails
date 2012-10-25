require 'yaml'

class Person
  attr_accessor :name, :age
end

yaml_string = <<END_OF_DATA
---
- !ruby/object:Person
  name: Fred Bloggs
  age: 45
- !ruby/object:Person
  name: Laura Smith
  age: 23
END_OF_DATA

test_data = YAML::load(yaml_string)
puts test_data[0].name
puts test_data[1].name