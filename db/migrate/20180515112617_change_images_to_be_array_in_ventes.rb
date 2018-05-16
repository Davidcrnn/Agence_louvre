class ChangeImagesToBeArrayInVentes < ActiveRecord::Migration[5.1]
  def change
    change_column :ventes, :images, :array
  end
end
