class memberController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @media = Media.find(params[:media_id])

    @cart.medias << @media
  end

  def edit
  end

  def update
  end
end