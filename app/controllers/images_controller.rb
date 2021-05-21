class ImagesController < ApplicationController

  def destroy
    image = Image.find(params[:id])
    image.destroy
    render json: {message: "Image removed"}
  end

end
