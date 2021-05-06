class ProductsController < ApplicationController
  def all_products
    render json: Product.all
  end
  def reaver
    render json: Product.find_by(id: 1)
  end
  def pipeline
    render json: Product.find_by(id: 2)
  end
  def aquos
    render json: Product.find_by(id: 3)
  end
end
