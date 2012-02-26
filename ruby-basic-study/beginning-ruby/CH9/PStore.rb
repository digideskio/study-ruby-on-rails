class Person
  attr_accessor :name, :job, :gender, :age
end

fred = Person.new
fred.name = "Fred Bloogs"
fred.age = 45

laura = Person.new
laura.name = "Laura Smith"
laura.age =23


require "pstore"
store = PStore.new("storagefile2")
store.transaction do
  store[:people] ||= Array.new
  store[:people] << fred
  store[:people] << laura
end

require "pstore"
store2 = PStore.new("storagefile2")
people2 = []
store2.transaction do
  people2 = store2[:people]
end

people2.each do |person|
  puts person.name
end