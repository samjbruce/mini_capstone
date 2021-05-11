class ProductSerializer < ActiveModel::Serializer
  attributes :name, :price, :description, :tax, :total
end
