class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
  def bill_email(user)
    @user = user 
    @url  = 'http://monsite.fr/login' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
end