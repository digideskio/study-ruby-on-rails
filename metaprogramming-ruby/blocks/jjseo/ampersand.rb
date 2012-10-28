def math(a, b)
  yield(a, b)
end

# bindingをblockにつけるためには argumentの必ず最後に &がついているのをつける
def teach_math(a, b, &operation)
  puts "Let's do the math:"
  puts math(a, b, &operation) # &operationがyieldの部分になる。
end

teach_math(2,3) {|x,y| x * y}


#上記のblock をProcに帰るためには？

def my_method(&the_proc)
  the_proc
end

p = my_method {|name| "Hello, #{name}!"}
puts p.class
puts p.call("Bill")

