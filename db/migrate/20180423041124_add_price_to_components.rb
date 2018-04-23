class AddPriceToComponents < ActiveRecord::Migration[5.1]
  def change
    add_monetize :components, :price, currency: { present: false }
  end
end
