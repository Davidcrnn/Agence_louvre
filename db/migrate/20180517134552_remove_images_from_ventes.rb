class RemoveImagesFromVentes < ActiveRecord::Migration[5.1]
  def change
    remove_column :ventes, :images, :json
  end
end
