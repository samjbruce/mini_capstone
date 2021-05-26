class RemoveQuantityFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :quantity, :string
  end
end
