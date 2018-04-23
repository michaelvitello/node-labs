class MoveFinalPriceToComputers < ActiveRecord::Migration[5.1]
  def change
    remove_column :components, :final_price_cents, :integer
    add_column :computers, :final_price_cents, :integer, :default => 0, null: false
  end
end
