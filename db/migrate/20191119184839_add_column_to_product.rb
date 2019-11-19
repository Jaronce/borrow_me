class AddColumnToProduct < ActiveRecord::Migration[5.2]
  def change 
    add_column :products, :price, :integer
    add_column :products, :city, :string
  end
end
