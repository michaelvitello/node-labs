class RenameSpecToSpecs < ActiveRecord::Migration[5.1]
  def change
    rename_table :spec, :specs
  end
end
