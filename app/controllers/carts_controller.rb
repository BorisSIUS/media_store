class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]

  def show
    @cart = Cart.find(params[:id])
  end

  def update
    @cart = current_user.cart
    @media = Media.find(params[:media_id])

    if params[:id].to_i > 0
      puts "adding"*30
      @cart.medias << @media
    else
      @cart.medias.delete(@media)

      redirect_to cart_path(@cart.id)
    end

  end

  def destroy
    @cart = Cart.find(params[:id])
  end

end
