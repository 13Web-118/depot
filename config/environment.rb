# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

Depot::Application.configure do

config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:    "smtp.gmail.com",
    port:        587,
    domain:      "gmail.com",
    authentication: 'plain',
    user_name:    "huangxinweb118",
    password:     "happyeveryday",
    enable_starttls_auto: true
  }
end
