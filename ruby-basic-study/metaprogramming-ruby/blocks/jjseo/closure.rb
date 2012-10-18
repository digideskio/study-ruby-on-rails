def my_method
  x = "Goodsbye"
  yield("cruel")
end

x = "hello"

puts my_method { |y| "#{x} #{y} world"}