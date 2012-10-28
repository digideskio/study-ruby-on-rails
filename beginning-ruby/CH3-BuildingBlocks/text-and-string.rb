## String Literal
puts "hello , world".class

x = "Test"
y = "String"
puts "Success!" if x + y == "TestString"


x = %q{This is a test
of the multi
line capabilities}

x = %q!This is a test
of the multi
line capabilities!

x = <<END_MY_STRING_PLEASE
This is the string
And a second line
END_MY_STRING_PLEASE

## String Expression

puts "Success!" if "Test" + "String" == "TestString"

puts "abc" * 5
#abcabcabcabcabc

puts "x" > "y"
#false

puts "y" > "x"
#true

## characters are stored as numbers inside your computer's memory'

puts ?x

###################
# interpolation
###################
x = 10
y = 20
puts "#{x} + #{y} = #{x + y}"

puts "100 * 5 = #{100 * 5}"


x = "cat"
puts "The #{x} in the hat"

my_string = "It's a #{"bad " * 5}world"
puts my_string


x = 10
y = 20
puts x.to_s + " + " + y.to_s + " = " + (x + y).to_s
puts "#{x} + #{y} = #{x + y}"