current_situation = :good
puts "Everything is find" if current_situation == :good
puts "PANIC!" if current_situatioxn == :bad

# Symbols don’t contain values or objects


# this is same result but isn't as efficient
# every "good" and "bad" create a new object stored separately in memory
current_situation = "good"
puts "Everything is find" if current_situation == "good"
puts "PANIC!" if current_situatioxn == "bad"


# symbols are particularly useful when creating hashes and you want to have a distinction
# between keys and values.

s={:key => 'value'}

person1 = { :name => "Fred", :age => 20, :gender => :male}
person1 = { :name => "Laura", :age => 23, :gender => :female}


