class MailToAdminMailer < ApplicationMailer
  def create_message(message:)
    @message = message
    mail from: @message.email
    mail to: "to@example.org", subject: @message.subject
  end
end
