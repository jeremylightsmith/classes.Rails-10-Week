class MessageMailer < ActionMailer::Base
  def test(email)
    subject     "This is a test"
    recipients  email
    from        "mailer@example.com"
    body        :stuff => "This is a test, yo."
  end
end
