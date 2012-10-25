# substitutes : sub only dose one substitution at a time!!!!
puts "foobar".sub('bar', 'foo')

# group substitutes
puts "this is a test".gsub('i', '')

# .. >> any two character
x = "This is a test"
puts x.sub(/^../, 'Hello')

x = "This is a test"
puts x.sub(/..$/, 'Hello')

## iterate with a regular expression
"xyz".scan(/./) { |letter| puts letter }

"This is a test".scan(/../) { |x| puts x }

#\w means “any alphanumeric character or an underscore.
"This is a test".scan(/\w\w/) { |x| puts x }


"The car costs $1000 and the cat costs $10".scan(/\d+/) do |x|
  puts x
end
# 1000
# 10

"The car costs $1000 and the cat costs $10".scan(/\d/) do |x|
  puts x
end

"This is a test".scan(/[aeiou]/) { |x| puts x }

"This is a test".scan(/[a-m]/) { |x| puts x }



###############
# Matching
###############

# =~ is matching operator
puts "String has vowels" if "This is a test" =~ /[aeiou]/

puts "String contains no digits" unless "This is a test" =~ /[0-9]/

puts "String has vowels" if "This is a test".match(/[aeiou]/)

# match return MatchData object
# MatchData object can be access like an array
# x[0] contain the data matched by the entire regular expression
x = "This is a test".match(/(\w+) (\w+)/)
puts x[0]
puts x[1]
puts x[2]
