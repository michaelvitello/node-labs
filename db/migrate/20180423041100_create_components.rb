class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :rating

      t.timestamps
    end
  end
end
