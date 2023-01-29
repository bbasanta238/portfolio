# Preview all emails at http://localhost:3000/rails/mailers/mail_to_admin_mailer
class MailToAdminMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mail_to_admin_mailer/create_message
  def create_message
    MailToAdminMailer.create_message
  end

end
