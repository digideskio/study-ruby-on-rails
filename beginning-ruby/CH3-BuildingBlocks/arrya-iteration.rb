[1, "test", 2, 3, 4].each { |element| puts element.to_s + "X" }

# collect
# iterate through an array element by element, and assigns to that element the result of any expression
[1, 2, 3, 4].collect { |element| element * 2 }


# old-fashioned way
a = [1, "test", 2, 3, 4]
i= 0
while (i < a.length)
  puts a[i].to_s + "X"
  i += 1
end