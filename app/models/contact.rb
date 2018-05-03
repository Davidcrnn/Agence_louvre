class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message



  def headers
    {
      :subject => "My Contact Form",
      :to => "david.crenin@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
