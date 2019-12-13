# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => ENV['MAILJET_PUBLISHABLE_KEY'],
    :password => ENV['MAILJET_SECRET_KEY'],
    :domain => 'monsite.fr',
    :address => 'smtp.mailjet.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
