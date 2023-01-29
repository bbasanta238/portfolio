require "test_helper"

class MailToAdminMailerTest < ActionMailer::TestCase
  test "create_message" do
    mail = MailToAdminMailer.create_message
    assert_equal "Create message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
