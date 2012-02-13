5.times do puts "Test" end

puts "another"

5.times { puts "Test"}

1.upto(5) { puts "upto 5"}

=begin
1.upto(5) { ...code to loop here... }
10.downto(5) { ...code to loop here... }
0.step(50, 5) { ...code to loop here... }
=end


1.upto(5) { |number| puts number }

#上記のコードは以下と同じ
1.upto(5) do |number|
  puts number
end