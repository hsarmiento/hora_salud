ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "horasalud.contacto",
  :password             => "bracosaramiento19",
  :authentication       => "plain",
  :enable_starttls_auto => true
  }