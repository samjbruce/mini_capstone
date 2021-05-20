class ImagesController < ApplicationController
  def index
    image = Image.all
    render json: image
  end
  def create
    Image.new
  end
end
