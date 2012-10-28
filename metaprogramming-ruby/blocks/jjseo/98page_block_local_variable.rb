def my_method
  yield(2)
end

x=1
my_method do |x|
  # do nothing special
end
puts x #=>2