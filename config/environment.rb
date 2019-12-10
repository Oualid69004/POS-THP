# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => ENV['MAILJET_LOGIN'],
    :password => ENV['MAILJET_PWD'],
    :domain => 'monsite.fr',
    :address => 'smtp.mailjet.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }