class SelfStudy
  attr_accessor :name

  def self
    @name
  end

  def self.name
    @name
  end

  def self.name=(name)
    @name = name
  end

  def self.default_name
    self.name = "ClassName"
  end

  def default_name
    self.name = "InstanceName"
  end
end

puts SelfStudy.name
#=> nil
puts SelfStudy.default_name
#=> ClassName

me = SelfStudy.new
puts me.name
#=> nil
puts me.default_name
#=> InstanceName

puts SelfStudy.name
#=> ClassName
puts SelfStudy.default_name
#=> ClassName


#self는 항상 현재 실행중인  객체를 가리킵니다. nil은 초기화되지 않은 변수에 저장되는 의미가 없는 값입니다
# irb에서 이와같이 테스트가 가능
# ruby> self
# main
# ruby> nil
# nil
