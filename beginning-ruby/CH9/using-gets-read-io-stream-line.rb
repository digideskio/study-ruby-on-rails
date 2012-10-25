File.open("text.txt") do |f|
  3.times {puts f.gets}
end

File.open("text.txt") do |f|
  3.times {puts f.gets(',')}
end
