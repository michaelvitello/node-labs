class RenameConfigurationToSpec < ActiveRecord::Migration[5.1]
  def change
    rename_table :configurations, :spec
  end
end
