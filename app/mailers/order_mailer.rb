class UserMailer < ApplicationMailer
  default from: 'balfoldi@yahoo.fr'
  
  def admin_bill_email(user)
    @cart = User.cart
    @user = user
    @url  = 'https://pastek-media-store.herokuapp.com/' 
    mail(to: "master@yopmail.com", subject: 'Un utilisateur a passé une commande!') 
  end

  def user_bill_email(user)
    @cart = User.cart
    @user = user
    @url  = 'https://pastek-media-store.herokuapp.com/' 
    mail(to: @user.email, subject: "Votre commande chez pas'tech team") 
  end

end