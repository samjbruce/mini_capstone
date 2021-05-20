class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :tax, :total, :inventory, :supplier_name, :images
end
