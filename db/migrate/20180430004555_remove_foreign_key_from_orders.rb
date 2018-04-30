class RemoveForeignKeyFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :computer_id
  end
end
