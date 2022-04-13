class AddPriceToProductOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :product_orders, :price, :float
  end
end
