class CreateConfigurations < ActiveRecord::Migration[5.1]
  def change
    create_table :configurations do |t|
      t.references :component, foreign_key: true
      t.references :computer, foreign_key: true

      t.timestamps
    end
  end
end
