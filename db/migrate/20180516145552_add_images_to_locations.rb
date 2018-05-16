class AddImagesToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :images, :json

  end
end
