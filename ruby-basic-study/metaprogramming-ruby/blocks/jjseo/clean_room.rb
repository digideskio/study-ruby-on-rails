class CleanRoom
  def complex_calculation

  end

  def do_something

  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if complex_calculation > 10
    do_something
  end
end


# Three other places in Ruby where you can package code.
# In a proc, which is basically a block turn to object
# In a lambda, which is a slight variation a proc
# In a method

#A Proc is a block that has been turned into an abject.
#You can create a Proc by passing the block to Proc.new. Later, you can evaluate the block-turned-object with Proc#call( ):

inc = Proc.new {|x| x + 1 }
inc.call(2)

# Ruby also privieds two Kernel Method