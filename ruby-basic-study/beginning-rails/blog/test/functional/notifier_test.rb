require 'test_helper'

class NotifierTest < ActionMailer::TestCase

  test "email_friend" do
    article = articles(:welcome_to_rails)
    message = Notifier.email_friend(article, 'John Smith', 'moretajoo@gmail.com')
    assert_equal "Interesting Article", message.subject
    assert_equal ["moretajoo@gmail.com"], message.to
    assert_equal ["from@example.com"], message.from
  end

end
