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