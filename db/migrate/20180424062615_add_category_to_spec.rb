class AddCategoryToSpec < ActiveRecord::Migration[5.1]
  def change
    add_reference :specs, :category, foreign_key: true
  end
end
