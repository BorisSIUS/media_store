class OrdersController < ApplicationController

  def create

   order = Order.create(user: current_user)

   cart = Cart.find(param['id'])

   cart.medias.each do |media|

   	order.medias << media

  end

   Adding.where(cart: cart).each.delete

  end

end
