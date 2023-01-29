class MailToAdminMailer < ApplicationMailer
  def create_message(message:)
    @message = message
    mail from: @message.email
    mail to: ENV["ADMIN_EMAIL"], subject: @message.subject
  end
end
