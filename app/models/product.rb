class Product < ApplicationRecord
  def is_discounted?
    price < 500
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end

  
end
