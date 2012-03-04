# abbrev
# The abbrev library offers just a single method that calculates a set of unique abbreviations for each of a supplied group of strings.

require 'abbrev'
require 'pp'

pp Abbrev::abbrev(%w{Peter Patricia Petal Petunia})
puts Abbrev::abbrev(%w{Peter Patricia Petal Petunia})
