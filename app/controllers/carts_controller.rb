class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]

  def show
    @cart = Cart.find(params[:id])
  end

  def update
    @cart = current_user.cart
    @media = Media.find(params[:media_id])

    if params[:id].to_i > 0
      @cart.medias << @media

      flash[:success] = "Ton chaton a bien été ajouté au panier."

      redirect_to medias_path
    else
      @cart.medias.delete(@media)

      redirect_to cart_path(@cart.id)
    end

  end

  def destroy
    @cart = Cart.find(params[:id])
  end

end
