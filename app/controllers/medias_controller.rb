class MediasController < ApplicationController
  
  def index

    @medias = Media.all

  end

  def show
    @media = Media.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
