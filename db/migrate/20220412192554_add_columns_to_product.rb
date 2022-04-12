class AddColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :titile, :string
    add_column :products, :category, :string
  end
end
