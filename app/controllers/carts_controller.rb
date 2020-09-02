class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]

  def show
    @cart = Cart.find(params[:id])
  end

  def update
    @cart = Cart.find(params[:id])
    @media = Media.find(params[:media_id])

    @cart.medias << @media
  end

  def destroy
    @cart = Cart.find(params[:id])
  end

end
