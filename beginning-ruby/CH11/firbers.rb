=begin
Fibers are lightweight units of execution
that control their own scheduling

In short, fibers are pragmatically similar to threads, but fibers aren’t scheduled to all run together. You have to manually control the scheduling.
=end

sg = Fiber.new do
  s = 0
  loop do
    square = s * s
    Fiber.yield square
    s += 1
  end
end

10.times { puts sg.resume }


sg2 = Fiber.new do
  s= 0
  loop do
    square = s * s
    s += 1
    s = Fiber.yield(square) || s
  end
end
puts sg2.resume
puts sg2.resume
puts sg2.resume
puts sg2.resume
puts sg2.resume 40
puts sg2.resume
puts sg2.resume
puts sg2.resume 0
puts sg2.resume
puts sg2.resume