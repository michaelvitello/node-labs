class AddFinalPriceToComputers < ActiveRecord::Migration[5.1]
  def change
    add_monetize :components, :final_price, currency: { present: false }
  end
end
