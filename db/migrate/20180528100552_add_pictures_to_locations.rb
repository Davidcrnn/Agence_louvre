class AddPicturesToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :pictures, :string
  end
end
