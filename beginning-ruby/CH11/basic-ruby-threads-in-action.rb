threads = []
10.times do
  thread = Thread.new do
    10.times { |i| print i; $stdout.flush; sleep rand(2) }
  end
  threads << thread
end

# joinメソッドはmail programが終了するまで待機する。
threads.each { |thread| thread.join }