# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
DanSchool::Application.initialize!

ActionMailer.default_url_options = { :host => 'localhost:3000' }
ActionMailer.delivery_method = :smtp
ActionMailer.perform_deliveries = true
ActionMailer.raise_delivery_errors = true
ActionMailer.default :charset => "utf-8"

ActionMailer::Base.smtp_settings = {
  :user_name => "asalganik1@gmail.com",
  :password => "cocomonkey981",
  :domain => "gmail.com",
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
