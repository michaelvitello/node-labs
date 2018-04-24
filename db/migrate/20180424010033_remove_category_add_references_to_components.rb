class RemoveCategoryAddReferencesToComponents < ActiveRecord::Migration[5.1]
  def change
    remove_column :components, :category
    add_reference :components, :category, index: true
  end
end
