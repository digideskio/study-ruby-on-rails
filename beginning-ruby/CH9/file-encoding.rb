puts File.open("text.txt", "r:utf-8").external_encoding
puts File.open("text.txt", "r").external_encoding


File.open("text.txt", "r:utf-8:iso-8859-1") do |f|
  puts f.external_encoding
  first_line = f.gets
  puts first_line.encoding
end