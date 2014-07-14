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
  attribute :class,  :validate => true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Registration",
      :to => "asalganik1@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

  def self.classes_evanston
    [["Full Time","Full Time"], ["Part Time","Part Time"], ["Temporary","Temporary"]]
  end

end