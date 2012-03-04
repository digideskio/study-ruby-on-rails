#/Users/seo/.rvm/rubies/default/bin/ruby

# also see
# code-block.rb
# http://www.tutorialspoint.com/ruby/ruby_blocks.htm

def test
  puts "You are in the method"
  yield
  puts "You are aging back to the method"
  yield
end

test {"You are in the block"}



def test
  yield 5
  puts "You are in the method test"
  yield 100
end
test {|i| puts "You are in the block #{i}"}


#If you want to pass more than one parameters,
#then the yield statement becomes:
# yield a, b
# and the block is:
# test {|a, b| statement}


