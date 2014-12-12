# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Action Mailer
ActionMailer::Base.raise_delivery_errors = true
#config.action_mailer.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => 587,
  :domain => 'example.comt',
  :user_name => 'wakkunndesu.cadd9@gmail.com',
  :password => 'password',
  :authentication => :login
}
