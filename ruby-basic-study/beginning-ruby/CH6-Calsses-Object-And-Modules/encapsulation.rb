class Person
  def initialize(name)
    set_name(name)
  end

  def name
    @first_name + ' ' + @last_name
  end

  private
  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end

  def set_first_name(name)
    @first_name = name
  end

  public
  def set_last_name(name)
    @last_name = name
  end
end

p = Person.new("Fred Bloggs")
p.set_last_name("Smith")
#p.set_first_name("first")    # this occur no method error

class Person2
  #def this_is_private; ...; end
  #def this_is_also_private; ...; end
  #private :this_is_private, :this_is_also_private
end


class Person3
  def initialize(age)
    @age = age
  end

  def age
    @age
  end

  def age_difference_with(other_person)
    (self.age - other_person.age).abs
  end

  protected :age
end

fred = Person3.new(34)
chris = Person3.new(25)
puts chris.age_difference_with(fred)
puts chris.age