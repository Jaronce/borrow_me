class AddCoordinatesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :latitude, :float
    add_column :products, :longitude, :float
  end
end
