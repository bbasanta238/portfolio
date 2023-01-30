# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => "587",
  :authentication => :plain,
  :user_name => ENV["SENDER_MAIL"],
  :password => ENV["SENDER_PASSWORD"],
  :domain => "render.com",
  :enable_starttls_auto => true,
}
