x = [1, 2, 3, 4]
puts x[2]
# 3

x[2] += 1
puts x[2]
# 4

x[2] = "Fish" * 3
puts x[2]
# FishFishFish


# pushing data
x = []
x << "Word"
puts x

x2 = []
x2.push("Word")
puts x2

# popping is the process of retrieving and removing items from the end of the array
x = []
x << "Word"
x << "Play"
x << "Fun"
puts x.pop
puts x.pop
puts x.length

x = ["Word", "Play", "Fun"]
puts x.join

x = ["Word", "Play", "Fun"]
puts x.join(', ')