# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password =>'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',
  :domain => 'gmail.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}