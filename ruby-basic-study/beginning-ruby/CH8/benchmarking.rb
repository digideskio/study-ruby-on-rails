require 'benchmark'

a = Benchmark.measure { 10000.times { x = "a"} }
puts a
#puts Benchmark.measure { 10000.times {print "."} }

iterations = 1000000

b = Benchmark.measure do
  for i in 1..iterations do
    x = i
  end
end

c = Benchmark.measure do
  iterations.times do |i|
    x = i
  end
end


puts b
puts c

Benchmark.bm do |bm|
  bm.report("for:") do
    for i in 1..iterations do
      x = i
    end
  end
  bm.report("times:") do
    iterations.times do |i|
      x = i
    end
  end
end
