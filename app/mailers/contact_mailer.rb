class ContactMailer < ActionMailer::Base
  default to: "horasalud.contacto@gmail.com"

  def contact_us(from,subject,content)
  	mail(from: from, subject: subject, body: content)
  end
end
