my_var = "Success"

MyClass = Class.new do

  puts "#{my_var} in the class difinition!"

  #def my_method
  #  # but, how can we print it here?
  #end

  define_method :my_method do
    puts "#{my_var} in the method"
  end
end


MyClass.new.my_method



# class
# module
# def はそれぞれscopeをもつ、scopeが変わる。


