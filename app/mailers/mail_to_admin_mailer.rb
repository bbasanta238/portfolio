class MailToAdminMailer < ApplicationMailer
  def create_message(message:)
    @message = message
    mail to: ENV["ADMIN_EMAIL"], subject: @message.subject
  end
end
