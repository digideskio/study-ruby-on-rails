puts Dir::pwd

# close file when code block is finished
File.open("text.txt").each {|line| puts line}

# new file opening the for reading
File.new("text.txt", "r").each {|line| puts line}



File.open("text.txt") do |f|
  puts f.gets
end

#
f = File.new("text.txt", "r")
puts f.gets
f.close



class MyFile
  attr_reader :handle

  def initialize(filename)
    @handle = File.new(filename, "r")
  end

  def finished
    @handle.close
  end
end

f = MyFile.new("text.txt")
puts f.handle.gets
f.finished

File.open("text.txt").each(',') {|line| puts line}