# RSpecはテスト用gem

require 'spec/mocks'

test_object = Object.new
test_object.should_receive(:read_names).and_return(["Bill", "You"])
p test_object.read_names