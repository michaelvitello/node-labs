class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :computer_sku
      t.monetize :amount
      t.jsonb :payment

      t.timestamps
    end
  end
end
