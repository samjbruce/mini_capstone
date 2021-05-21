class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :quantity, :subtotal, :tax, :total, :product, :user
end
