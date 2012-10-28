puts Time.now

puts Time.now
# minus 10 second
puts Time.now - 10
# minus 86400 second = 1 day
puts Time.now + 86400
puts Time.now + 60*60*24



# some developers extend the Fixnum class with some helper methods to make manipulating dates easier:

class Fixnum
  def seconds
    self end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end
  def days
    self * 60 * 60 * 24
  end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days



#Time.local(year, month, day, hour, min, sec, msec)
## GMT/UTC
#Time.gm(year, month, day, hour, min, sec, msec)
## equal above
#Time.utc(year, month, day, hour, min, sec, msec)

puts Time.gm(2007, 05).to_i


epoch_time = Time.gm(2007, 5).to_i
t = Time.at(epoch_time)
puts t.year, t.month, t.day