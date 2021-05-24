class Product < ApplicationRecord

  has_many :category_products
  has_many :orders
  has_many :images
  belongs_to :supplier

  validates :name, presence: true, uniqueness: true
  validates :price, :inventory, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}

  def supplier_name
    supplier.name
  end
  
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
