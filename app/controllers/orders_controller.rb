class OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    orders = Order.all
    render json: orders
  end

  def create
    carted_products = CartedProduct.where("status LIKE ?", "carted")
    order = Order.new(
      carted_products: carted_products
    )
    order = Order.new(
      user_id: current_user.id,
    )
    order.subtotal = order.quantity * order.product.price
    order.tax = order.subtotal * 0.09
    order.total = order.tax + order.subtotal
    order.save
    render json: order
  end

  def show
    order = current_user.orders.find(params[:id])
    render json: order
  end

end
