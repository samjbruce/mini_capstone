class AddInventoryInProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :inventory, :decimal, precision: 4, scale: 0
  end
end
