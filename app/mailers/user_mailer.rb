class UserMailer < ApplicationMailer

  default from:’yourmail@domain.com’
  def send_welcome(user)
    mail(to: user.email, subject: “Welcome”)
  end
  
end