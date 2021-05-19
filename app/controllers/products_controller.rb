class ProductsController < ApplicationController
  def index
    products = Product.all
    if params[:search]
      products = products.where("name iLike ?", "%#{params[:search]}%")
    elsif params[:sort] == "price"
      products = products.order(:price)
    end
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url], 
      description: params[:description],
      inventory: params[:inventory]
    )
    if product.save
      render json: product
    else
      render json: {error: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.inventory = params[:inventory] || product.inventory
    if product.save
      render json: product
    else  
      render json: {error: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Product has been destroyed."}
  end

end
