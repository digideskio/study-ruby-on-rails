class Square

  def initialize(side_length)
    @side_length = side_length
  end

  def area
    @side_length * @side_length
  end
end


s = Square.new(10)
puts s.area

class Square2
  def self.test_method
    puts "Hello front the Squre2 class!"
  end

  def test_method
    puts "Hello from an instance of class Square2"
  end
end

Square2.test_method
Square2.new.test_method

class Square3
  def Square3.test_method
    puts "Hello from the Square class!"
  end

  # upbove method is equal
  # def self.test_method
end

class Square4
  def initialize
    if defined?(@@number_of_squares)
      puts "defined"
      @@number_of_squares += 1
    else
      puts "is not defined"
      @@number_of_squares = 1
    end
  end

  def Square4.count
    @@number_of_squares
  end
end

a = Square4.new
puts Square4.count
b = Square4.new
puts Square4.count
c = Square4.new
puts Square4.count
