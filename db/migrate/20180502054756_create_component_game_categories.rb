class CreateComponentGameCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :component_game_categories do |t|
      t.references :component, foreign_key: true
      t.references :game_category, foreign_key: true

      t.timestamps
    end
  end
end
