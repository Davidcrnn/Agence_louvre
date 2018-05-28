class RemoveStringFromLocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :string, :string
  end
end
