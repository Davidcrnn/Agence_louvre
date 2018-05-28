class AddPhotosToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :photos, :string
  end
end
