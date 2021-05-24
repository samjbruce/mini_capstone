class OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    if current_user
      orders = Order.all
      render json: orders
    else
      render json: {message: "Unauthorized"}, status: :unauthorized
    end
  end
  def create
    if current_user
      order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
      )
      order.subtotal = order.calculated_subtotal
      order.tax = order.calculated_tax
      order.total = order.calculated_total
      order.save
      render json: order
    else
      render json: {message: "Unauthorized"}, status: :unauthorized
    end
  end

  def show
    if current_user
      order = current_user.orders.find(params[:id])
      render json: order
    else
      render json: {message: "Unauthorized"}, status: :unauthorized 
    end
  end

end
