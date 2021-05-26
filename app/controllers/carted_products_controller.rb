class CartedProductsController < ApplicationController

  before_action :authenticate_user

  def index
    carted_products = CartedProduct.where("status LIKE ?", "carted")
    render json: carted_products
    
  end

  def create

    carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      order_id: params[:order_id],
      status: "carted"
    )
    carted_product.save
    render json: carted_product
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: {message: "Product Removed."}
  end
end
