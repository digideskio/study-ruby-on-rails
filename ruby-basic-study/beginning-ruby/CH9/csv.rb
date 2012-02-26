require 'csv'

people = CSV.parse(File.read('text.txt'))
puts people[0][0]
puts people[1][0]
puts people[2][0]



#people2 = CSV.pars(File.read("text.txt"))

CSV.open("text.txt", "r").each do |person|
  puts person.inspect
end

puts CSV.read("text.txt").inspect



people2 = CSV.read("text.txt")
laura = people.find { |person| person[0] =~ /Lauren/}
puts laura.inspect