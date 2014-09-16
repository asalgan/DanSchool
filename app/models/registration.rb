class Registration < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,  :validate => true
  attribute :age,  :validate => true
  attribute :guardian,  :validate => true
  attribute :guardian_email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :guardian_phone,  :validate => true
  attribute :address,  :validate => true
  attribute :city,  :validate => true
  attribute :state,  :validate => true
  attribute :zip,  :validate => true
  attribute :classes,  :validate => true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Registration",
      :to => "dan@coursepioneer.com",
      :from => %("#{name}" <#{email}>)
    }
  end

  def self.classes_evanston
    ["Entrepreneurship Mon - Thu October 6th - 16th 5:00pm - 6:30pm",
      "Entrepreneurship Sundays October 5th - Nov. 23rd 10:00am - 11:30am",
      "Public Speaking Mon - Thu October 6th - 16th 6:45pm - 8:15pm",
      "Public Speaking Sundays October 5th - Nov. 23rd 11:45am - 1:15pm"]
  end

  def self.classes_chicago
    ["Entrepreneurship Saturdays October 4th - Nov. 22nd 10:00am - 11:30am",
    "Public Speaking Saturdays October 4th - Nov. 22nd 11:45am - 1:15pm"]
  end



end