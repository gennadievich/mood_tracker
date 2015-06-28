require 'test_helper'

class MailerTest < ActionMailer::TestCase
  test "registered" do
    mail = Mailer.registered
    assert_equal "Registered", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
