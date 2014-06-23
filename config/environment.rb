# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
DanSchool::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "www.gmail.com",
    authentication: "plain",
    user_name: ENV["GMAIL_USERNAME"],
    password: ENV["GMAIL_PASSWORD"]
  }
