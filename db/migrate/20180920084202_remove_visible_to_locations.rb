class RemoveVisibleToLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :visible, :boolean
  end
end
