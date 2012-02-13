puts "This is a test".scan(/\w/).join(',')

# inspect : textual representation of the object.
puts "Short sentence. Another. No more.".split(/\./).inspect

puts "Words with lots of spaces".split(/\s+/).inspect

# using [p] is equals, using inspect
#####!!!!!
## p is almost never need to use it in a production applicatino
## but for debuggin and learning, is's excellent'
p "Words with lots of spaces".split(/\s+/)