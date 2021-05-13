class ChangeUrlInProducts < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :image_uel, :image_url
  end
end
