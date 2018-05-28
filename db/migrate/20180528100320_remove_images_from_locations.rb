class RemoveImagesFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :images, :json
  end
end
