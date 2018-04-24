class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :display_name
      t.string :slug

      t.timestamps
    end
  end
end
