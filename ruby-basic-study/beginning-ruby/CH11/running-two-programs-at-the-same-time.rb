# forking :
# fork : is a mehtod provided by Kernel module - that creates a fork of the current process.
# return child process's process ID in the parent process'
# but return nill in the child process

=begin

if fork.nil?
  exec "ruby some_other_file.rb"
end
puts "This Ruby script now runs alongside some_other_file.rb"
=end


# wait all child processes
child = fork do
  sleep 3
  puts "Child says 'hi'!"
end
puts "Waiting for the child process..."
Process.wait child
puts "All done!"