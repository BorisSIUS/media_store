class ChargesController < ApplicationController
  def new
    @amount = cart_total / 100.0

  end
  
  def create
    # Amount in cents

    @amount = cart_total
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })
    
    cart = current_user.cart

    OrderMailer.admin_bill_email(current_user).deliver_now
    OrderMailer.user_bill_email(current_user).deliver_now

    cart.medias = []

    


  rescue Stripe::CardError => e
    flash[:error] = e.message
    render new_charge_path
  end

  def cart_total
    amount = 0
    current_user.cart.medias.each { |media| amount+=media.price*100 }
    return amount = amount.to_i
  end
end
