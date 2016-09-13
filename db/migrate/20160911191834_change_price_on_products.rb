class ChangePriceOnProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :price, :string
    add_column :products, :price, :decimal, precision: 8, scale: 2
  end
end
