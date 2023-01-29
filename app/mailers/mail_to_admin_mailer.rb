class MailToAdminMailer < ApplicationMailer
  def create_message(message:)
    @message = message
    mail from: @message.email
    mail to: "vhandaribasanta@gmail.com", subject: @message.subject
  end
end
