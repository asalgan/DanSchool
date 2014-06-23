# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
DanSchool::Application.initialize!

ActionMailer::Base.smtp_settings = {
    address: "smtp.sendgrid.net",
    port: 587,
    domain: "heroku.com",
    authentication: "plain",
    user_name: ENV["GMAIL_USERNAME"],
    password: ENV["GMAIL_PASSWORD"]
  }
