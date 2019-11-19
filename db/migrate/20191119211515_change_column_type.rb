class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :status, :string, default: "Pending"
  end
end
