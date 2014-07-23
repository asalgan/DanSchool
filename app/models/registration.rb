class Registration < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,  :validate => true
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
    ["Entrepreneurship Mon - Thu August 11th - 21st 5:00pm - 6:30pm",
      "Entrepreneurship Mon - Thu Sept. 22nd - Oct. 2nd 6:30pm - 8:00pm",
      "Entrepreneurship Sundays Sept. 14th - Nov. 9th 10:00am - 11:30am",
      "Entrepreneurship Sundays Sept. 28th - Nov. 23rd 1:30pm - 3:00pm",
      "Public Speaking Mon - Thu August 11th - 21st 6:45pm - 8:15pm",
      "Public Speaking Mon - Thu Sept. 22nd - Oct. 2nd 8:00pm - 9:30pm",
      "Public Speaking Sundays Sept. 14th - Nov. 9th 11:45am - 1:15pm",
      "Public Speaking Sundays Sept. 28th - Nov. 23rd 3:15pm - 4:45pm"]
  end

  def self.classes_chicago
    ["Entrepreneurship Saturdays Sept. 13th - Nov. 8th 10:00am - 11:30am",
    "Public Speaking Saturdays Sept. 13th - Nov. 8th 11:45am - 1:15pm"]
  end



end