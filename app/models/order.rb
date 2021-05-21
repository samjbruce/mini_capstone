class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def calculated_subtotal
    quantity * product.price 
  end

  def calculated_tax
    calculated_subtotal * 0.3
  end

  def calculated_total
    calculated_subtotal + calculated_tax
  end
end
